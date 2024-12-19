import 'dart:io';
import 'dart:typed_data';

import 'package:dart_rfb/src/client/config.dart';
import 'package:dart_rfb/src/client/remote_frame_buffer_client.dart';
import 'package:dart_rfb/src/constants.dart';
import 'package:dart_rfb/src/extensions/raw_socket_extensions.dart';
import 'package:dart_rfb/src/protocol/encoding_type.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'frame_buffer_update_message.freezed.dart';

/// A framebuffer update message.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.6.1
@freezed
class RemoteFrameBufferFrameBufferUpdateMessage
    with _$RemoteFrameBufferFrameBufferUpdateMessage {
  const factory RemoteFrameBufferFrameBufferUpdateMessage({
    required final Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle>
        rectangles,
  }) = _RemoteFrameBufferFrameBufferUpdateMessage;

  /// Read and parse incoming message from [socket].
  static TaskEither<Object,
      RemoteFrameBufferFrameBufferUpdateMessage> readFromSocket({
    required final Config config,
    required final RawSocket socket,
  }) =>
      TaskEither<Object, RemoteFrameBufferFrameBufferUpdateMessage>.tryCatch(
        () async {
          final int numberOfRectangles =
              (await socket.readSync(length: 2).run()).getUint16(0);
          RemoteFrameBufferClient.logger
              .fine('< $numberOfRectangles rectangles');
          final List<RemoteFrameBufferFrameBufferUpdateMessageRectangle>
              rectangles =
              List<RemoteFrameBufferFrameBufferUpdateMessageRectangle>.empty(
            growable: true,
          );
          for (int i = 0; i < numberOfRectangles; i++) {
            final RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader
                rectangleHeader =
                RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader
                    .fromBytes(
              bytes: await socket.readSync(length: 12).run(),
            );
            RemoteFrameBufferClient.logger.fine('< $rectangleHeader');
            final int numberOfDataBytes = rectangleHeader.encodingType.map(
              copyRect: (final _) => 4,
              raw: (final _) => (rectangleHeader.width *
                      rectangleHeader.height *
                      (config.pixelFormat.bitsPerPixel / 8))
                  .toInt(),
              unsupported: (final _) => 0,
            );
            rectangles.add(
              RemoteFrameBufferFrameBufferUpdateMessageRectangle(
                encodingType: rectangleHeader.encodingType,
                height: rectangleHeader.height,
                pixelData: await socket
                    .readSync(
                      length: numberOfDataBytes,
                      readWaitDuration: some(Constants.socketReadWaitDuration),
                    )
                    .run(),
                width: rectangleHeader.width,
                x: rectangleHeader.x,
                y: rectangleHeader.y,
              ),
            );
          }
          return RemoteFrameBufferFrameBufferUpdateMessage(
            rectangles: rectangles,
          );
        },
        (final Object error, final _) => error,
      );

  const RemoteFrameBufferFrameBufferUpdateMessage._();
}

@freezed
class RemoteFrameBufferFrameBufferUpdateMessageRectangle
    with _$RemoteFrameBufferFrameBufferUpdateMessageRectangle {
  const factory RemoteFrameBufferFrameBufferUpdateMessageRectangle({
    required final RemoteFrameBufferEncodingType encodingType,
    required final int height,
    required final ByteData pixelData,
    required final int width,
    required final int x,
    required final int y,
  }) = _RemoteFrameBufferFrameBufferUpdateMessageRectangle;
}

@freezed
class RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader
    with _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader {
  const factory RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader({
    required final RemoteFrameBufferEncodingType encodingType,
    required final int height,
    required final int width,
    required final int x,
    required final int y,
  }) = _RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader;

  factory RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader.fromBytes({
    required final ByteData bytes,
  }) =>
      RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader(
        encodingType: RemoteFrameBufferEncodingType.fromBytes(
          bytes: ByteData.sublistView(bytes, 8, 12),
        ),
        height: bytes.getUint16(6),
        width: bytes.getUint16(4),
        x: bytes.getUint16(0),
        y: bytes.getUint16(2),
      );

  const RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader._();
}
