import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:dart_des/dart_des.dart';
import 'package:dart_rfb/src/client/config.dart';
import 'package:dart_rfb/src/client/remote_frame_buffer_client_key_event.dart';
import 'package:dart_rfb/src/client/remote_frame_buffer_client_pointer_event.dart';
import 'package:dart_rfb/src/client/remote_frame_buffer_client_update.dart';
import 'package:dart_rfb/src/constants.dart';
import 'package:dart_rfb/src/extensions/byte_data_extensions.dart';
import 'package:dart_rfb/src/extensions/int_extensions.dart';
import 'package:dart_rfb/src/extensions/raw_socket_extensions.dart';
import 'package:dart_rfb/src/protocol/client_cut_text_message.dart';
import 'package:dart_rfb/src/protocol/client_init_message.dart';
import 'package:dart_rfb/src/protocol/encoding_type.dart';
import 'package:dart_rfb/src/protocol/frame_buffer_update_message.dart';
import 'package:dart_rfb/src/protocol/frame_buffer_update_request_message.dart';
import 'package:dart_rfb/src/protocol/key_event_message.dart';
import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:dart_rfb/src/protocol/pointer_event_message.dart';
import 'package:dart_rfb/src/protocol/protocol_version_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_result_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_type.dart';
import 'package:dart_rfb/src/protocol/server_cut_text_message.dart';
import 'package:dart_rfb/src/protocol/server_init_message.dart';
import 'package:dart_rfb/src/protocol/set_encodings_message.dart';
import 'package:dart_rfb/src/protocol/set_pixel_format_message.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logging/logging.dart';

/// A client that implements communication according to
/// The Remote Framebuffer Protocol, aka RFC 6143, aka VNC).
class RemoteFrameBufferClient {
  static final Logger logger = Logger('RemoteFrameBufferClient');

  Option<Config> _config = none();

  Option<String> _password = none();

  bool _readLoopRunning = false;

  Option<RemoteFrameBufferProtocolVersion> _selectedProtocolVersion = none();

  Option<RemoteFrameBufferSecurityType> _selectedSecurityType = none();

  Option<RawSocket> _socket = none();

  final StreamController<String> _serverClipBoardStreamController =
      StreamController<String>();

  final StreamController<RemoteFrameBufferClientUpdate>
      _updateStreamController =
      StreamController<RemoteFrameBufferClientUpdate>.broadcast();

  /// The config used by the underlying session.
  Option<Config> get config => _config;

  /// A [Stream] that will give access to the server's clipboard updates.
  Stream<String> get serverClipBoardStream =>
      _serverClipBoardStreamController.stream;

  /// A [Stream] that will give access to all incoming framebuffer updates.
  Stream<RemoteFrameBufferClientUpdate> get updateStream =>
      _updateStreamController.stream;

  /// Dispose the currently active session and all used resources.
  Future<void> close() async {
    _readLoopRunning = false;
    await _updateStreamController.close();
  }

  /// Connect to [hostname] on [port] and perform the protocol handshake,
  /// optionally using [password].
  Future<void> connect({
    required final String hostname,
    final String? password,
    final int port = 5900,
  }) async =>
      (await TaskEither<Object, void>.tryCatch(
        () async {
          _password = optionOf(password);
          _socket = some(
            await RawSocket.connect(
              hostname,
              port,
            ),
          );
        },
        (
          final Object error,
          final _,
        ) =>
            error,
      ).andThen(_performHandshake).run())
          .match(
        (final Object error) => throw Exception(error),
        (final _) {},
      );

  /// Request a framebuffer update from the server.
  /// Call this once you are finished processing any received updates.
  void requestUpdate() => _socket.match(
        () {},
        (final RawSocket socket) => _config.match(
          () {},
          (final Config config) {
            final RemoteFrameBufferFrameBufferUpdateRequestMessage
                requestMessage =
                RemoteFrameBufferFrameBufferUpdateRequestMessage(
              height: config.frameBufferHeight,
              incremental: true,
              width: config.frameBufferWidth,
              x: 0,
              y: 0,
            );
            logger.log(Level.INFO, '> $requestMessage');
            socket.write(
              requestMessage.toBytes().asUint8List(),
            );
          },
        ),
      );

  void sendClientCutText({
    required final String text,
  }) =>
      _socket.match(
        () {},
        (final RawSocket socket) {
          final RemoteFrameBufferClientCutTextMessage message =
              RemoteFrameBufferClientCutTextMessage(text: text);
          logger.info('> $message');
          socket.write(message.toBytes().buffer.asUint8List());
        },
      );

  void sendKeyEvent({
    required final RemoteFrameBufferClientKeyEvent keyEvent,
  }) =>
      _socket.match(
        () {},
        (final RawSocket socket) {
          final RemoteFrameBufferKeyEventMessage message =
              RemoteFrameBufferKeyEventMessage(
            down: keyEvent.down,
            key: keyEvent.key,
          );
          logger.info('> $message');
          socket.write(message.toBytes().asUint8List());
        },
      );

  void sendPointerEvent({
    required final RemoteFrameBufferClientPointerEvent pointerEvent,
  }) =>
      _socket.match(
        () {},
        (final RawSocket socket) {
          final RemoteFrameBufferPointerEventMessage message =
              RemoteFrameBufferPointerEventMessage(
            button1Down: pointerEvent.button1Down,
            button2Down: pointerEvent.button2Down,
            button3Down: pointerEvent.button3Down,
            button4Down: pointerEvent.button4Down,
            button5Down: pointerEvent.button5Down,
            button6Down: pointerEvent.button6Down,
            button7Down: pointerEvent.button7Down,
            button8Down: pointerEvent.button8Down,
            x: pointerEvent.x,
            y: pointerEvent.y,
          );
          logger.info('> $message');
          socket.write(message.toBytes().asUint8List());
        },
      );

  /// Start the reading loop that handles incoming protocol messages.
  Future<void> startReadLoop() async => await _socket.match(
        () => throw Exception('Socket not available'),
        (final RawSocket socket) async {
          (await TaskEither<Object, void>.tryCatch(
            () async {
              final Config config = _config
                  .getOrElse(() => throw Exception('Config not available'));
              socket.write(
                RemoteFrameBufferFrameBufferUpdateRequestMessage(
                  height: config.frameBufferHeight,
                  incremental: true,
                  width: config.frameBufferWidth,
                  x: 0,
                  y: 0,
                ).toBytes().asUint8List(),
              );
              _readLoopRunning = true;
              while (_readLoopRunning) {
                final int messageType = (await socket
                        .readSync(
                          length: 1,
                          readWaitDuration:
                              some(Constants.socketReadWaitDuration),
                        )
                        .run())
                    .getUint8(0);
                logger.log(Level.INFO, '< messageType: $messageType');
                switch (messageType) {
                  case 0:
                    // read and ignore padding
                    await socket.readSync(length: 1).run();
                    (await RemoteFrameBufferFrameBufferUpdateMessage
                                .readFromSocket(config: config, socket: socket)
                            .run())
                        .match(
                      (final Object error) => logger.log(
                        Level.INFO,
                        'Error reading and handling update message: $error',
                      ),
                      (
                        final RemoteFrameBufferFrameBufferUpdateMessage
                            updateMessage,
                      ) {
                        logger.log(
                          Level.INFO,
                          '< update rectangles: ${updateMessage.rectangles.groupListsBy((final RemoteFrameBufferFrameBufferUpdateMessageRectangle rectangle) => rectangle.encodingType).mapValue((final List<RemoteFrameBufferFrameBufferUpdateMessageRectangle> list) => list.length)}',
                        );
                        _updateStreamController.add(
                          RemoteFrameBufferClientUpdate(
                            rectangles: updateMessage.rectangles.map(
                              (
                                final RemoteFrameBufferFrameBufferUpdateMessageRectangle
                                    rectangle,
                              ) =>
                                  RemoteFrameBufferClientUpdateRectangle(
                                byteData: rectangle.pixelData,
                                encodingType: rectangle.encodingType,
                                height: rectangle.height,
                                width: rectangle.width,
                                x: rectangle.x,
                                y: rectangle.y,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                    break;
                  case 1: // SetColorMapEntries
                    final int numberOfColors =
                        (await socket.readSync(length: 5).run()).getUint16(3);
                    socket.readSync(length: numberOfColors * 6);
                    break;
                  case 2: // Bell
                    // no data, just ignore for now
                    break;
                  case 3: // ServerCutText
                    final RemoteFrameBufferServerCutTextMessage message =
                        (await RemoteFrameBufferServerCutTextMessage
                                    .readFromSocket(socket: socket)
                                .run())
                            .getOrElse(
                      (final Object error) => throw Exception(
                        'Error reading server cut text: $error',
                      ),
                    );
                    logger.info('< $message');
                    _serverClipBoardStreamController.add(message.text);
                    break;
                  default:
                    logger.info(
                      'Receive unsupported message type: $messageType',
                    );
                    break;
                }
              }
            },
            (final Object error, final _) => error,
          ).run())
              .match(
            (final Object error) => throw Exception(error),
            (final _) {},
          );
        },
      );

  TaskEither<Object, void> _handleSecurityType({
    required final RawSocket socket,
  }) =>
      _password.match(
        () => TaskEither<Object, void>.of(null),
        (final String password) => TaskEither<Object, void>.tryCatch(
          () async {
            final ByteData challenge = await socket.readSync(length: 16).run();
            logger.info('< Security challenge');
            final ByteData encodedAndTruncatedPassword = ByteData.sublistView(
              Uint8List.fromList(ascii.encode(password).take(8).toList()),
            );
            final ByteData key = ByteData(8);
            for (int i = 0; i < 8; i++) {
              int byte;
              if (i < encodedAndTruncatedPassword.lengthInBytes) {
                byte = encodedAndTruncatedPassword.getUint8(i);
              } else {
                byte = 0;
              }
              byte = byte.reverseBits();
              key.setUint8(i, byte);
            }
            final ByteData response = ByteData.sublistView(
              Uint8List.fromList(
                DES(
                  key: key.asUint8List(),
                  mode: DESMode.ECB,
                  paddingType: DESPaddingType.PKCS7,
                ).encrypt(challenge.asUint8List()),
              ),
              0,
              16,
            );
            logger.info('> Security challenge response');
            socket.write(
              response.buffer
                  .asUint8List(response.offsetInBytes, response.lengthInBytes),
            );
          },
          (final Object error, final _) => error,
        ),
      );

  TaskEither<Object, void> _performHandshake() => _socket.match(
        () => TaskEither<Object, void>.left('Error using socket'),
        (final RawSocket socket) => _readProtocolVersionMessage(socket: socket)
            .andThen(() => _sendProtocolVersionMessage(socket: socket))
            .andThen(() => _readSecurityHandshake(socket: socket))
            .andThen(() => _sendSecurityType(socket: socket))
            .andThen(() => _handleSecurityType(socket: socket))
            .andThen(() => _readSecurityResultMessage(socket: socket))
            .andThen(() => _sendClientInitMessage(socket: socket))
            .andThen(() => _readServerInitMessage(socket: socket))
            .andThen(() => _setPixelFormat(socket: socket))
            .andThen(() => _setEncodingTypes(socket: socket)),
      );

  TaskEither<Object, void> _readProtocolVersionMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          final RemoteFrameBufferProtocolVersionHandshakeMessage
              protocolVersionHandshakeMessage =
              RemoteFrameBufferProtocolVersionHandshakeMessage.fromBytes(
            bytes: await socket
                .readSync(
                  length:
                      RemoteFrameBufferProtocolVersionHandshakeMessage.length,
                )
                .run(),
          );
          logger.log(Level.INFO, '< $protocolVersionHandshakeMessage');
          if (protocolVersionHandshakeMessage.version
              is RemoteFrameBufferProtocolVersionUnknown) {
            throw Exception(
              'Unsupported server protocol version: ${protocolVersionHandshakeMessage.version}',
            );
          } else {
            _selectedProtocolVersion =
                some(protocolVersionHandshakeMessage.version);
          }
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _readSecurityHandshake({
    required final RawSocket socket,
  }) {
    final TaskEither<Object, void> taskEitherWithList =
        TaskEither<Object, void>.tryCatch(
      () async {
        final int numberOfSecurityTypes =
            (await socket.readSync(length: 1).run()).getUint8(0);
        logger.log(
          Level.INFO,
          '< numberOfSecurityTypes=$numberOfSecurityTypes',
        );
        if (numberOfSecurityTypes == 0) {
          // Error, next 4 bytes is reason-length, then reason-string
          final int reasonLength =
              (await socket.readSync(length: 4).run()).getUint32(0);
          final String reason = ascii.decode(
            (await socket.readSync(length: reasonLength).run())
                .buffer
                .asUint8List(),
          );
          throw Exception(
            'Error reading security handshake message: $reason',
          );
        } else {
          final RemoteFrameBufferSecurityHandshakeMessage
              securityResultHandshakeMessage =
              RemoteFrameBufferSecurityHandshakeMessage.fromBytes(
            bytes: ByteData.sublistView(
              Uint8List.fromList(
                <int>[
                  numberOfSecurityTypes,
                  ...(await socket
                          .readSync(length: numberOfSecurityTypes)
                          .run())
                      .buffer
                      .asUint8List(),
                ],
              ),
            ),
          );
          logger.log(Level.INFO, '< $securityResultHandshakeMessage');
          if (_password.isNone() &&
              securityResultHandshakeMessage.securityTypes.notElem(
                const RemoteFrameBufferSecurityType.none(),
              )) {
            throw Exception(
              'Server does not support security type "none", but not password was provided',
            );
          }
          if (_password.isSome() &&
              securityResultHandshakeMessage.securityTypes.notElem(
                const RemoteFrameBufferSecurityType.vncAuthentication(),
              )) {
            throw Exception(
              'Server does not support security type "vncAuthentication"',
            );
          }
        }
      },
      (final Object error, final _) => error,
    );
    final TaskEither<Object, void> taskEitherWithoutList =
        TaskEither<Object, void>.tryCatch(
      () async {
        final RemoteFrameBufferSecurityType securityType =
            RemoteFrameBufferSecurityType.fromBytes(
          bytes: await socket.readSync(length: 4).run(),
        );
        logger.info('< $securityType');

        if (_password.isNone() &&
            securityType != const RemoteFrameBufferSecurityType.none()) {
          throw Exception(
            'Server does not support security type "none", but not password was provided',
          );
        }
        if (_password.isSome() &&
            securityType !=
                const RemoteFrameBufferSecurityType.vncAuthentication()) {
          throw Exception(
            'Server does not support security type "vncAuthentication"',
          );
        }
        _selectedSecurityType = some(securityType);
      },
      (final Object error, final _) => error,
    );
    return _selectedProtocolVersion
        .getOrElse(
          () => throw Exception('Protocol version has not been chosen yet'),
        )
        .map(
          unknown: (final _) => throw Exception('Unknown protocol version'),
          v3_3: (final _) => taskEitherWithoutList,
          v3_7: (final _) => taskEitherWithList,
          v3_8: (final _) => taskEitherWithList,
        );
  }

  TaskEither<Object, void> _readSecurityResultMessage({
    required final RawSocket socket,
  }) {
    final TaskEither<Object, void> taskEitherWithErrorMessage =
        TaskEither<Object, void>.tryCatch(
      () async {
        final RemoteFrameBufferSecurityResultHandshakeMessage
            securityResultHandshakeMessage =
            RemoteFrameBufferSecurityResultHandshakeMessage.fromBytes(
          bytes: await socket.readSync(length: 4).run(),
        );
        logger.log(Level.INFO, '< $securityResultHandshakeMessage');
        if (!securityResultHandshakeMessage.success) {
          final int reasonLength =
              (await socket.readSync(length: 4).run()).getUint32(0);
          final String reason = ascii.decode(
            (await socket.readSync(length: reasonLength).run())
                .buffer
                .asUint8List(),
          );
          throw Exception('Error reading security result message: $reason');
        }
      },
      (final Object error, final _) => error,
    );
    final TaskEither<Object, void> taskEitherWithoutErrorMessage =
        TaskEither<Object, void>.tryCatch(
      () async {
        final RemoteFrameBufferSecurityResultHandshakeMessage
            securityResultHandshakeMessage =
            RemoteFrameBufferSecurityResultHandshakeMessage.fromBytes(
          bytes: await socket.readSync(length: 4).run(),
        );
        logger.log(Level.INFO, '< $securityResultHandshakeMessage');
        if (!securityResultHandshakeMessage.success) {
          throw Exception('Security handshake failed');
        }
      },
      (final Object error, final _) => error,
    );
    return _selectedProtocolVersion
        .getOrElse(() => throw Exception('Protocol version not chosen yet'))
        .map(
          unknown: (final _) => throw Exception('Unknown protocol version'),
          v3_3: (final _) => _selectedSecurityType
              .getOrElse(() => throw Exception('Security type not chosen yet'))
              .map(
                invalid: (final _) => throw Exception('Invalid security type'),
                none: (final _) => TaskEither<Object, void>.of(null),
                vncAuthentication: (final _) => taskEitherWithoutErrorMessage,
              ),
          v3_7: (final _) => _selectedSecurityType
              .getOrElse(() => throw Exception('Security type not chosen yet'))
              .map(
                invalid: (final _) => throw Exception('Invalid security type'),
                none: (final _) => TaskEither<Object, void>.of(null),
                vncAuthentication: (final _) => taskEitherWithoutErrorMessage,
              ),
          v3_8: (final _) => taskEitherWithErrorMessage,
        );
  }

  TaskEither<Object, void> _readServerInitMessage({
    required final RawSocket socket,
  }) =>
      RemoteFrameBufferServerInitMessage.readFromSocket(socket: socket)
          .map((final RemoteFrameBufferServerInitMessage serverInitMessage) {
        _config = some(
          Config(
            frameBufferHeight: serverInitMessage.frameBufferHeightInPixels,
            frameBufferWidth: serverInitMessage.frameBufferWidthInPixels,
            pixelFormat: serverInitMessage.serverPixelFormat,
          ),
        );
      });

  TaskEither<Object, void> _sendClientInitMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          logger.log(
            Level.INFO,
            '> ${const RemoteFrameBufferClientInitMessage(sharedFlag: true)}',
          );
          socket.write(
            const RemoteFrameBufferClientInitMessage(sharedFlag: true)
                .toBytes()
                .asUint8List(),
          );
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _sendProtocolVersionMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          final RemoteFrameBufferProtocolVersionHandshakeMessage message =
              RemoteFrameBufferProtocolVersionHandshakeMessage(
            version: _selectedProtocolVersion.getOrElse(
              () => throw Exception('Error selecting protocol version'),
            ),
          );
          logger.log(Level.INFO, '> $message');
          socket.write(message.toBytes().asUint8List());
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _sendSecurityType({
    required final RawSocket socket,
  }) {
    final TaskEither<Object, void> taskEither =
        TaskEither<Object, void>.tryCatch(
      () async {
        final RemoteFrameBufferSecurityType securityType = _password.match(
          () => const RemoteFrameBufferSecurityType.none(),
          (final _) => const RemoteFrameBufferSecurityType.vncAuthentication(),
        );
        logger.info('> $securityType');
        _selectedSecurityType = some(securityType);
        socket.write(securityType.toBytes().asUint8List());
      },
      (final Object error, final _) => error,
    );
    return _selectedProtocolVersion
        .getOrElse(() => throw Exception('Protocol version not chosen yet'))
        .map(
          unknown: (final _) => throw Exception('Unknown protocol version'),
          v3_3: (final _) => TaskEither<Object, void>.of(null),
          v3_7: (final _) => taskEither,
          v3_8: (final _) => taskEither,
        );
  }

  TaskEither<Object, void> _setEncodingTypes({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          const RemoteFrameBufferSetEncodingsMessage message =
              RemoteFrameBufferSetEncodingsMessage(
            encodingTypes: <RemoteFrameBufferEncodingType>[
              RemoteFrameBufferEncodingType.copyRect(),
              RemoteFrameBufferEncodingType.raw(),
            ],
          );
          logger.info('> $message');
          socket.write(message.toBytes().buffer.asUint8List());
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _setPixelFormat({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          final RemoteFrameBufferSetPixelFormatMessage message =
              RemoteFrameBufferSetPixelFormatMessage(
            pixelFormat: RemoteFrameBufferPixelFormat.bgra8888,
          );
          logger.info('> $message');
          socket.write(message.toBytes().buffer.asUint8ClampedList());
        },
        (final Object error, final _) => error,
      );
}
