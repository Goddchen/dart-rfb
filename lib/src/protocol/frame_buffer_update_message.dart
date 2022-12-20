import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:dart_rfb/src/client/config.dart';
import 'package:dart_rfb/src/constants.dart';
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
          while (socket.available() < 2) {
            await Future<void>.delayed(Constants.socketReadWaitDuration);
          }
          final int numberOfRectangles = optionOf(socket.read(2))
              .map(
                (final Uint8List bytes) =>
                    ByteData.sublistView(bytes).getUint16(0),
              )
              .getOrElse(
                () => throw Exception('Error reading number of rectangles'),
              );
          final List<RemoteFrameBufferFrameBufferUpdateMessageRectangle>
              rectangles =
              List<RemoteFrameBufferFrameBufferUpdateMessageRectangle>.empty(
            growable: true,
          );
          for (int i = 0; i < numberOfRectangles; i++) {
            while (socket.available() < 12) {
              await Future<void>.delayed(Constants.socketReadWaitDuration);
            }
            final ByteData headerBytes = optionOf(socket.read(12))
                .map(ByteData.sublistView)
                .getOrElse(() => throw Exception('Error reading header bytes'));
            final RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader
                rectangleHeader =
                RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader
                    .fromBytes(bytes: headerBytes);
            final int numberOfDataBytes = (rectangleHeader.width *
                    rectangleHeader.height *
                    (config.pixelFormat.bitsPerPixel / 8))
                .toInt();
            final BytesBuilder bytesBuilder = BytesBuilder();
            while (bytesBuilder.length < numberOfDataBytes) {
              optionOf(
                socket.read(min(1024, numberOfDataBytes - bytesBuilder.length)),
              ).match(
                () {},
                bytesBuilder.add,
              );
            }
            rectangles.add(
              RemoteFrameBufferFrameBufferUpdateMessageRectangle(
                encodingType: rectangleHeader.encodingType,
                height: rectangleHeader.height,
                pixelData: ByteData.sublistView(bytesBuilder.toBytes()),
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
