import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:dart_rfb/src/config.dart';
import 'package:dart_rfb/src/protocol/client_init_message.dart';
import 'package:dart_rfb/src/protocol/frame_buffer_update_message.dart';
import 'package:dart_rfb/src/protocol/frame_buffer_update_request_message.dart';
import 'package:dart_rfb/src/protocol/protocol_version_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_result_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_type.dart';
import 'package:dart_rfb/src/protocol/server_init_message.dart';
import 'package:fpdart/fpdart.dart';

typedef FrameBuffer = Iterable<Iterable<int>>;

class RemoteFrameBufferClient {
  final StreamController<FrameBuffer> _frameBufferUpdateStreamController =
      StreamController<FrameBuffer>.broadcast();

  Stream<FrameBuffer> get frameBufferUpdateStream =>
      _frameBufferUpdateStreamController.stream;

  Option<Config> _config = none();

  Option<RawSocket> _socket = none();

  Future<void> connect() async => (await TaskEither<Object, void>.tryCatch(
        () async {
          _socket = some(await RawSocket.connect('localhost', 5900));
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

  Future<void> start() async => await _socket.match(
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
              while (true) {
                while (socket.available() < 1) {
                  await null;
                }
                final int messageType = optionOf(socket.read(1))
                    .map((final Uint8List bytes) => bytes[0])
                    .getOrElse(
                      () => throw Exception(
                        'Error reading incoming message type',
                      ),
                    );
                switch (messageType) {
                  case 0:
                    while (socket.available() < 3) {
                      await null;
                    }
                    final int numberOfRectangles = optionOf(socket.read(3))
                        .map(
                          (final Uint8List bytes) =>
                              bytes.buffer.asUint16List(1)[0],
                        )
                        .getOrElse(
                          () => throw Exception(
                            'Error reading number of rectangles',
                          ),
                        );
                    while (socket.available() < 12 * numberOfRectangles) {
                      await null;
                    }
                    final Uint8List bytes =
                        optionOf(socket.read(12 * numberOfRectangles))
                            .getOrElse(
                      () => throw Exception('Error reading rectangles'),
                    );
                    final RemoteFrameBufferFrameBufferUpdateMessage
                        frameBufferUpdateMessage =
                        RemoteFrameBufferFrameBufferUpdateMessage.fromBytes(
                      bytes: Uint8List.fromList(<int>[
                        ...(ByteData(4 + numberOfRectangles * 12)
                              ..setUint8(0, 0x00)
                              ..setUint8(1, 0x00)
                              ..setUint16(2, numberOfRectangles))
                            .buffer
                            .asUint8List(),
                        ...bytes,
                      ]).buffer,
                    );
                    (await _handleFrameBufferUpdateMessage(
                      config: config,
                      message: frameBufferUpdateMessage,
                      socket: socket,
                    ).run())
                        .match(
                      // ignore: avoid_print
                      (final Object error) => print(
                        'Error handling frame buffer update: $error',
                      ),
                      (final _) {},
                    );
                    break;
                  default:
                    // ignore: avoid_print
                    print('Receive unsupported message type: $messageType');
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

  Future<void> close() async {
    await _frameBufferUpdateStreamController.close();
  }

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
            await null;
          }
          final RemoteFrameBufferProtocolVersionHandshakeMessage
              protocolVersionHandshakeMessage =
              RemoteFrameBufferProtocolVersionHandshakeMessage.fromBytes(
            bytes: optionOf(
              socket.read(
                RemoteFrameBufferProtocolVersionHandshakeMessage.length,
              ),
            )
                .getOrElse(
                  () => throw Exception(
                    'Error reading protocol version handshake message',
                  ),
                )
                .buffer,
          );
          if (protocolVersionHandshakeMessage.version !=
              const RemoteFrameBufferProtocolVersion.v3_8()) {
            throw Exception(
              'Unsupported server protocol version (${protocolVersionHandshakeMessage.version})',
            );
          }
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _sendProtocolVersionMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          socket.write(
            const RemoteFrameBufferProtocolVersionHandshakeMessage(
              version: RemoteFrameBufferProtocolVersion.v3_8(),
            ).toBytes().asUint8List(),
          );
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _readSecurityHandshake({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          while (socket.available() < 1) {
            await null;
          }
          final int numberOfSecurityTypes = optionOf(socket.read(1)).getOrElse(
            () => throw Exception('Error reading number of security types'),
          )[0];
          if (numberOfSecurityTypes == 0) {
            // Error, next 4 bytes is reason-length, then reason-string
            while (socket.available() < 4) {
              await null;
            }
            final int reasonLength = optionOf(socket.read(4))
                .getOrElse(() => throw Exception('Error getting reason length'))
                .buffer
                .asUint32List()[0];
            while (socket.available() < reasonLength) {
              await null;
            }
            final String reason = optionOf(socket.read(reasonLength))
                .map((final Uint8List bytes) => ascii.decode(bytes))
                .getOrElse(() => throw Exception('Error reading reason'));
            throw Exception(
              'Error reading security handshake message: $reason',
            );
          } else {
            while (socket.available() < numberOfSecurityTypes) {
              await null;
            }
            final RemoteFrameBufferSecurityHandshakeMessage
                securityResultHandshakeMessage =
                RemoteFrameBufferSecurityHandshakeMessage.fromBytes(
              bytes: Uint8List.fromList(<int>[
                numberOfSecurityTypes,
                ...optionOf(socket.read(numberOfSecurityTypes)).getOrElse(
                  () => throw Exception('Error reading security types'),
                )
              ]).buffer,
            );
            if (securityResultHandshakeMessage.securityTypes.notElem(
              const RemoteFrameBufferSecurityType.none(),
            )) {
              throw Exception('Server does not support security type "none"');
            }
          }
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _sendSecurityType({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          socket.write(
            const RemoteFrameBufferSecurityType.none().toBytes().asUint8List(),
          );
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _readSecurityResultMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          while (socket.available() < 4) {
            await null;
          }
          final RemoteFrameBufferSecurityResultHandshakeMessage
              securityResultHandshakeMessage =
              RemoteFrameBufferSecurityResultHandshakeMessage.fromBytes(
            bytes: optionOf(socket.read(4))
                .getOrElse(
                  () => throw Exception(
                    'Error reading security result message',
                  ),
                )
                .buffer,
          );
          if (!securityResultHandshakeMessage.success) {
            while (socket.available() < 4) {
              await null;
            }
            final int reasonLength = optionOf(socket.read(4))
                .map((final Uint8List bytes) => bytes.buffer.asUint32List()[0])
                .getOrElse(
                  () => throw Exception('Error reading reason length'),
                );
            while (socket.available() < reasonLength) {
              await null;
            }
            final String reason = optionOf(socket.read(reasonLength))
                .map((final Uint8List bytes) => ascii.decode(bytes))
                .getOrElse(() => throw Exception('Error reading reason'));
            throw Exception('Error reading security result message: $reason');
          }
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _sendClientInitMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          socket.write(
            const RemoteFrameBufferClientInitMessage(sharedFlag: true)
                .toBytes()
                .asUint8List(),
          );
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _readServerInitMessage({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          while (socket.available() < 20) {
            await null;
          }
          final Uint8List bytes = optionOf(socket.read(20)).getOrElse(
            () => throw Exception('Error reading server init message'),
          );
          while (socket.available() < 4) {
            await null;
          }
          final int nameLength = optionOf(socket.read(4))
              .map((final Uint8List bytes) => bytes.buffer.asUint32List()[0])
              .getOrElse(() => throw Exception('Error reading name length'));
          while (socket.available() < nameLength) {
            await null;
          }
          final Uint8List nameBytes = optionOf(socket.read(nameLength))
              .getOrElse(() => throw Exception('Error reading name'));
          final RemoteFrameBufferServerInitMessage serverInitMessage =
              RemoteFrameBufferServerInitMessage.fromBytes(
            bytes: Uint8List.fromList(
              <int>[
                ...bytes,
                nameLength,
                ...nameBytes,
              ],
            ).buffer,
          );
          _config = some(
            Config(
              frameBufferHeight: serverInitMessage.frameBufferHeightInPixels,
              frameBufferWidth: serverInitMessage.frameBufferWidthInPixels,
              pixelFormat: serverInitMessage.serverPixelFormat,
            ),
          );
        },
        (final Object error, final _) => error,
      );

  TaskEither<Object, void> _handleFrameBufferUpdateMessage({
    required final Config config,
    required final RemoteFrameBufferFrameBufferUpdateMessage message,
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.flatten(message.rectangles.map(
          (final RemoteFrameBufferFrameBufferUpdateMessageRectangle
                  rectangle) =>
              _handleFrameBufferUpdateRectangle(
                  config: config, rectangle: rectangle, socket: socket)));

  TaskEither<Object, void> _handleFrameBufferUpdateRectangle({
    required final Config config,
    required final RemoteFrameBufferFrameBufferUpdateMessageRectangle rectangle,
    required final RawSocket socket,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          final int numberOfPixels = (rectangle.width *
                  rectangle.height *
                  (config.pixelFormat.bitsPerPixel / 8))
              .toInt();
          while (socket.available() < numberOfPixels) {
            await null;
          }
          final List<int> pixelData =
              optionOf(socket.read(numberOfPixels)).getOrElse(
            () => throw Exception(
              'Error getting frame buffer update pixel data',
            ),
          );
          final FrameBuffer frameBuffer =
              pixelData.slices(config.frameBufferWidth);
          _frameBufferUpdateStreamController.add(frameBuffer);
        },
        (final Object error, final _) => error,
      );
}
