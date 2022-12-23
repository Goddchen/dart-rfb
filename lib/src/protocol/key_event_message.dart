import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_event_message.freezed.dart';

@freezed
class RemoteFrameBufferKeyEventMessage with _$RemoteFrameBufferKeyEventMessage {
  const factory RemoteFrameBufferKeyEventMessage({
    required final bool down,
    required final int key,
  }) = _RemoteFrameBufferKeyEventMessage;

  const RemoteFrameBufferKeyEventMessage._();

  ByteData toBytes() => ByteData(8)
    ..setUint8(0, 4)
    ..setUint8(1, down ? 1 : 0)
    ..setUint32(3, key);
}
