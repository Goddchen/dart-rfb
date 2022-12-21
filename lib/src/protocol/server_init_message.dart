import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dart_rfb/src/client/remote_frame_buffer_client.dart';
import 'package:dart_rfb/src/constants.dart';
import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_init_message.freezed.dart';

/// Server init message.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.3.2
@freezed
class RemoteFrameBufferServerInitMessage
    with _$RemoteFrameBufferServerInitMessage {
  const factory RemoteFrameBufferServerInitMessage({
    required final int frameBufferHeightInPixels,
    required final int frameBufferWidthInPixels,
    required final String name,
    required final RemoteFrameBufferPixelFormat serverPixelFormat,
  }) = _RemoteFrameBufferServerInitMessage;

  const RemoteFrameBufferServerInitMessage._();

  /// Read and parse incoming message from [socket].
  static TaskEither<Object, RemoteFrameBufferServerInitMessage> readFromSocket({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, RemoteFrameBufferServerInitMessage>.tryCatch(
        () async {
          final BytesBuilder bytesBuilder = BytesBuilder();
          while (bytesBuilder.length < 24) {
            await Future<void>.delayed(Constants.socketReadWaitDuration);

            optionOf(socket.read(1)).match(
              () {},
              bytesBuilder.add,
            );
          }
          final Uint8List bytes = bytesBuilder.toBytes();
          final int nameLength = ByteData.sublistView(bytes).getUint32(20);
          while (socket.available() < nameLength) {
            await Future<void>.delayed(Constants.socketReadWaitDuration);
          }
          final Uint8List nameBytes = optionOf(socket.read(nameLength))
              .getOrElse(() => throw Exception('Error reading name'));
          final RemoteFrameBufferServerInitMessage serverInitMessage =
              RemoteFrameBufferServerInitMessage(
            frameBufferHeightInPixels: ByteData.sublistView(bytes).getUint16(2),
            frameBufferWidthInPixels: ByteData.sublistView(bytes).getUint16(0),
            name: utf8.decode(nameBytes),
            serverPixelFormat: RemoteFrameBufferPixelFormat.fromBytes(
              bytes: ByteData.sublistView(bytes, 4, 20),
            ),
          );
          RemoteFrameBufferClient.logger.info('< $serverInitMessage');
          return serverInitMessage;
        },
        (final Object error, final _) => error,
      );
}
