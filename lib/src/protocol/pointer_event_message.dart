import 'dart:typed_data';

import 'package:binary/binary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pointer_event_message.freezed.dart';

@freezed
class RemoteFrameBufferPointerEventMessage
    with _$RemoteFrameBufferPointerEventMessage {
  const factory RemoteFrameBufferPointerEventMessage({
    required final bool button1Down,
    required final bool button2Down,
    required final bool button3Down,
    required final bool button4Down,
    required final bool button5Down,
    required final bool button6Down,
    required final bool button7Down,
    required final bool button8Down,
    required final int x,
    required final int y,
  }) = _RemoteFrameBufferPointerEventMessage;

  const RemoteFrameBufferPointerEventMessage._();

  ByteData toBytes() {
    Uint8 buttonMask = Uint8(0);
    if (button1Down) {
      buttonMask = buttonMask.setBit(0);
    }
    if (button2Down) {
      buttonMask = buttonMask.setBit(1);
    }
    if (button3Down) {
      buttonMask = buttonMask.setBit(2);
    }
    if (button4Down) {
      buttonMask = buttonMask.setBit(3);
    }
    if (button5Down) {
      buttonMask = buttonMask.setBit(4);
    }
    if (button6Down) {
      buttonMask = buttonMask.setBit(5);
    }
    if (button7Down) {
      buttonMask = buttonMask.setBit(6);
    }
    if (button8Down) {
      buttonMask = buttonMask.setBit(7);
    }
    return ByteData(6)
      ..setUint8(0, 5)
      ..setUint8(1, buttonMask.value)
      ..setUint16(2, x)
      ..setUint16(4, y);
  }
}
