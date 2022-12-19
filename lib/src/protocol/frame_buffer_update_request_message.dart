import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'frame_buffer_update_request_message.freezed.dart';

@freezed
class RemoteFrameBufferFrameBufferUpdateRequestMessage
    with _$RemoteFrameBufferFrameBufferUpdateRequestMessage {
  const factory RemoteFrameBufferFrameBufferUpdateRequestMessage({
    required final int height,
    required final bool incremental,
    required final int width,
    required final int x,
    required final int y,
  }) = _RemoteFrameBufferFrameBufferUpdateRequestMessage;

  const RemoteFrameBufferFrameBufferUpdateRequestMessage._();

  ByteData toBytes() => ByteData(10)
    ..setUint8(0, 0x03)
    ..setUint8(1, incremental ? 1 : 0)
    ..setUint16(2, x)
    ..setUint16(4, y)
    ..setUint16(6, width)
    ..setUint16(8, height);
}
