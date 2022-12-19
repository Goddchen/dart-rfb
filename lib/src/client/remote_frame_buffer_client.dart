import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dart_rfb/src/client/config.dart';
import 'package:dart_rfb/src/client/remote_frame_buffer_client_update.dart';
import 'package:dart_rfb/src/extensions/byte_data_extensions.dart';
import 'package:dart_rfb/src/protocol/client_init_message.dart';
import 'package:dart_rfb/src/protocol/frame_buffer_update_message.dart';
import 'package:dart_rfb/src/protocol/frame_buffer_update_request_message.dart';
import 'package:dart_rfb/src/protocol/protocol_version_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_result_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_type.dart';
import 'package:dart_rfb/src/protocol/server_init_message.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logging/logging.dart';

class RemoteFrameBufferClient {
  static final Logger _logger = Logger('RemoteFrameBufferClient');

  final StreamController<RemoteFrameBufferClientUpdate>
      _updateStreamController =
      StreamController<RemoteFrameBufferClientUpdate>.broadcast();

  Option<Config> _config = none();

  Option<RawSocket> _socket = none();

  bool _loggingEnabled = false;

  Option<StreamSubscription<LogRecord>> _loggingSubscription = none();

  bool _readLoopRunning = false;

  /// A client that implements communication according to
  /// The Remote Framebuffer Protocol, aka RFC 6143, aka VNC).
  RemoteFrameBufferClient() {
    loggingEnabled = false;
    _loggingSubscription = some(
      Logger.root.onRecord.listen(
        (final LogRecord logRecord) {
          // ignore: avoid_print
          print('${logRecord.loggerName}: ${logRecord.message}');
        },
      ),
    );
  }

  /// The config used by the underlying session.
  Option<Config> get config => _config;

  /// Wether logging messages should be printed.
  bool get loggingEnabled => _loggingEnabled;

  set loggingEnabled(final bool enabled) {
    _loggingEnabled = enabled;
    if (enabled) {
      Logger.root.level = Level.ALL;
    } else {
      Logger.root.level = Level.OFF;
    }
  }

  /// A [Stream] that will give access to all incoming framebuffer updates.
  Stream<RemoteFrameBufferClientUpdate> get updateStream =>
      _updateStreamController.stream;

  /// Dispose the currently active session and all used resources.
  Future<void> close() async {
    _readLoopRunning = false;
    await _updateStreamController.close();
    await _loggingSubscription.match(
      () {},
      (final StreamSubscription<LogRecord> subscription) =>
          subscription.cancel(),
    );
  }

  /// Connect to [hostname] on [port] and perform the protocol handshake.
  Future<void> connect({
    required final String hostname,
    final int port = 5900,
  }) async =>
      (await TaskEither<Object, void>.tryCatch(
        () async {
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
            _logger.log(Level.INFO, '> $requestMessage');
            socket.write(
              requestMessage.toBytes().asUint8List(),
            );
          },
        ),
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
                while (socket.available() < 1) {
                  await Future<void>.delayed(const Duration(seconds: 1));
                }
                final int messageType = optionOf(socket.read(1))
                    .map(
                      (final Uint8List bytes) =>
                          ByteData.sublistView(bytes).getUint8(0),
                    )
                    .getOrElse(
                      () => throw Exception(
                        'Error reading incoming message type',
                      ),
                    );
                _logger.log(Level.INFO, '< messageType: $messageType');
                switch (messageType) {
                  case 0:
                    while (socket.available() < 1) {
                      await Future<void>.delayed(const Duration(seconds: 1));
                    }
                    // read and ignore padding
                    optionOf(socket.read(1)).getOrElse(
                      () => throw Exception('Error reading padding'),
                    );
                    (await RemoteFrameBufferFrameBufferUpdateMessage
                                .readFromSocket(config: config, socket: socket)
                            .run())
                        .match(
                      (final Object error) => _logger.log(
                        Level.INFO,
                        'Error reading and handling update message: $error',
                      ),
                      (
                        final RemoteFrameBufferFrameBufferUpdateMessage
                            updateMessage,
                      ) {
                        _logger.log(
                          Level.INFO,
                          '< ${updateMessage.rectangles.length} update rectangles',
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
                    while (socket.available() < 5) {
                      await Future<void>.delayed(const Duration(seconds: 1));
                    }
                    final int numberOfColors = optionOf(socket.read(5))
                        .map(
                          (final Uint8List bytes) =>
                              ByteData.sublistView(bytes).getUint16(3),
                        )
                        .getOrElse(
                          () =>
                              throw Exception('Error reading number of colors'),
                        );
                    while (socket.available() < numberOfColors * 6) {
                      await Future<void>.delayed(const Duration(seconds: 1));
                    }
                    optionOf(socket.read(numberOfColors * 6)).getOrElse(
                      () => throw Exception('Error reading colors'),
                    );
                    break;
                  case 2: // Bell
                    // no data, just ignore for now
                    break;
                  case 3: // ServerCutText
                    while (socket.available() < 7) {
                      await Future<void>.delayed(const Duration(seconds: 1));
                    }
                    final int length = optionOf(socket.read(7))
                        .map(
                          (final Uint8List bytes) =>
                              ByteData.sublistView(bytes).getUint32(3),
                        )
                        .getOrElse(
                          () => throw Exception('Error reading length'),
                        );
                    while (socket.available() < length) {
                      await Future<void>.delayed(const Duration(seconds: 1));
                    }
                    optionOf(socket.read(length)).getOrElse(
                      () => throw Exception('Error reading content'),
                    );
                    break;
                  default:
                    _logger.log(
                      Level.INFO,
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

  TaskEither<Object, void> _performHandshake() => _socket.match(
        () => TaskEither<Object, void>.left('Error using socket'),
        (final RawSocket socket) => _readProtocolVersionMessage(socket: socket)
            .andThen(() => _sendProtocolVersionMessage(socket: socket))
            .andThen(() => _readSecurityHandshake(socket: socket))
            .andThen(() => _sendSecurityType(socket: socket))
            .andThen(() => _readSecurityResultMessage(socket: socket))
            .andThen(() => _sendClientInitMessage(socket: socket))
            .andThen(() => _readServerInitMessage(socket: socket)),
      );

  TaskEither<Object, void> _readProtocolVersionMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          while (socket.available() <
              RemoteFrameBufferProtocolVersionHandshakeMessage.length) {
            await Future<void>.delayed(const Duration(seconds: 1));
          }
          final RemoteFrameBufferProtocolVersionHandshakeMessage
              protocolVersionHandshakeMessage =
              RemoteFrameBufferProtocolVersionHandshakeMessage.fromBytes(
            bytes: ByteData.sublistView(
              optionOf(
                socket.read(
                  RemoteFrameBufferProtocolVersionHandshakeMessage.length,
                ),
              ).getOrElse(
                () => throw Exception(
                  'Error reading protocol version handshake message',
                ),
              ),
            ),
          );
          _logger.log(Level.INFO, '< $protocolVersionHandshakeMessage');
          if (protocolVersionHandshakeMessage.version !=
              const RemoteFrameBufferProtocolVersion.v3_8()) {
            throw Exception(
              'Unsupported server protocol version (${protocolVersionHandshakeMessage.version})',
            );
          }
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _readSecurityHandshake({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          while (socket.available() < 1) {
            await Future<void>.delayed(const Duration(seconds: 1));
          }
          final int numberOfSecurityTypes = optionOf(socket.read(1)).getOrElse(
            () => throw Exception('Error reading number of security types'),
          )[0];
          _logger.log(
            Level.INFO,
            '< numberOfSecurityTypes=$numberOfSecurityTypes',
          );
          if (numberOfSecurityTypes == 0) {
            // Error, next 4 bytes is reason-length, then reason-string
            while (socket.available() < 4) {
              await Future<void>.delayed(const Duration(seconds: 1));
            }
            final int reasonLength = ByteData.sublistView(
              optionOf(socket.read(4)).getOrElse(
                () => throw Exception('Error getting reason length'),
              ),
            ).getUint32(0);
            while (socket.available() < reasonLength) {
              await Future<void>.delayed(const Duration(seconds: 1));
            }
            final String reason = optionOf(socket.read(reasonLength))
                .map((final Uint8List bytes) => ascii.decode(bytes))
                .getOrElse(() => throw Exception('Error reading reason'));
            throw Exception(
              'Error reading security handshake message: $reason',
            );
          } else {
            while (socket.available() < numberOfSecurityTypes) {
              await Future<void>.delayed(const Duration(seconds: 1));
            }
            final RemoteFrameBufferSecurityHandshakeMessage
                securityResultHandshakeMessage =
                RemoteFrameBufferSecurityHandshakeMessage.fromBytes(
              bytes: ByteData.sublistView(
                Uint8List.fromList(
                  <int>[
                    numberOfSecurityTypes,
                    ...optionOf(socket.read(numberOfSecurityTypes)).getOrElse(
                      () => throw Exception('Error reading security types'),
                    )
                  ],
                ),
              ),
            );
            _logger.log(Level.INFO, '< $securityResultHandshakeMessage');
            if (securityResultHandshakeMessage.securityTypes.notElem(
              const RemoteFrameBufferSecurityType.none(),
            )) {
              throw Exception('Server does not support security type "none"');
            }
          }
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _readSecurityResultMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          while (socket.available() < 4) {
            await Future<void>.delayed(const Duration(seconds: 1));
          }
          final RemoteFrameBufferSecurityResultHandshakeMessage
              securityResultHandshakeMessage =
              RemoteFrameBufferSecurityResultHandshakeMessage.fromBytes(
            bytes: ByteData.sublistView(
              optionOf(socket.read(4)).getOrElse(
                () => throw Exception(
                  'Error reading security result message',
                ),
              ),
            ),
          );
          _logger.log(Level.INFO, '< $securityResultHandshakeMessage');
          if (!securityResultHandshakeMessage.success) {
            while (socket.available() < 4) {
              await Future<void>.delayed(const Duration(seconds: 1));
            }
            final int reasonLength = optionOf(socket.read(4))
                .map(
                  (final Uint8List bytes) =>
                      ByteData.sublistView(bytes).getUint32(0),
                )
                .getOrElse(
                  () => throw Exception('Error reading reason length'),
                );
            while (socket.available() < reasonLength) {
              await Future<void>.delayed(const Duration(seconds: 1));
            }
            final String reason = optionOf(socket.read(reasonLength))
                .map((final Uint8List bytes) => ascii.decode(bytes))
                .getOrElse(() => throw Exception('Error reading reason'));
            throw Exception('Error reading security result message: $reason');
          }
        },
        (final Object error, final _) => error,
      );

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
          _logger.log(
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
          _logger.log(
              Level.INFO,
              '> ${const RemoteFrameBufferProtocolVersionHandshakeMessage(
                version: RemoteFrameBufferProtocolVersion.v3_8(),
              )}');
          socket.write(
            const RemoteFrameBufferProtocolVersionHandshakeMessage(
              version: RemoteFrameBufferProtocolVersion.v3_8(),
            ).toBytes().asUint8List(),
          );
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _sendSecurityType({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          _logger.log(
            Level.INFO,
            '> ${const RemoteFrameBufferSecurityType.none()}',
          );
          socket.write(
            const RemoteFrameBufferSecurityType.none().toBytes().asUint8List(),
          );
        },
        (final Object error, final _) => error,
      );
}
