import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/encoding_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'frame_buffer_update_message.freezed.dart';

@freezed
class RemoteFrameBufferFrameBufferUpdateMessage
    with _$RemoteFrameBufferFrameBufferUpdateMessage {
  const factory RemoteFrameBufferFrameBufferUpdateMessage({
    required final Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle>
        rectangles,
  }) = _RemoteFrameBufferFrameBufferUpdateMessage;

  factory RemoteFrameBufferFrameBufferUpdateMessage.fromBytes({
    required final ByteBuffer bytes,
  }) =>
      RemoteFrameBufferFrameBufferUpdateMessage(
        rectangles:
            List<RemoteFrameBufferFrameBufferUpdateMessageRectangle>.generate(
          bytes.asUint16List(2)[0],
          (final int index) =>
              RemoteFrameBufferFrameBufferUpdateMessageRectangle.fromBytes(
            bytes: bytes.asUint8List(2 + index * 12).buffer,
          ),
        ),
      );

  const RemoteFrameBufferFrameBufferUpdateMessage._();
}

@freezed
class RemoteFrameBufferFrameBufferUpdateMessageRectangle
    with _$RemoteFrameBufferFrameBufferUpdateMessageRectangle {
  const factory RemoteFrameBufferFrameBufferUpdateMessageRectangle({
    required final RemoteFrameBufferEncodingType encodingType,
    required final int height,
    required final int width,
    required final int x,
    required final int y,
  }) = _RemoteFrameBufferFrameBufferUpdateMessageRectangle;

  factory RemoteFrameBufferFrameBufferUpdateMessageRectangle.fromBytes({
    required final ByteBuffer bytes,
  }) =>
      RemoteFrameBufferFrameBufferUpdateMessageRectangle(
        encodingType: RemoteFrameBufferEncodingType.fromBytes(
          bytes: bytes.asInt32List(8, 4).buffer,
        ),
        height: bytes.asUint16List()[3],
        width: bytes.asUint16List()[2],
        x: bytes.asUint16List()[0],
        y: bytes.asUint16List()[1],
      );

  const RemoteFrameBufferFrameBufferUpdateMessageRectangle._();
}
