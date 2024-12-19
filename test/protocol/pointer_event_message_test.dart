import 'dart:typed_data';

import 'package:binary/binary.dart';
import 'package:dart_rfb/src/protocol/pointer_event_message.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Pointer event message to bytes works', () {
    expect(
      const RemoteFrameBufferPointerEventMessage(
        button1Down: false,
        button2Down: false,
        button3Down: false,
        button4Down: false,
        button5Down: false,
        button6Down: false,
        button7Down: false,
        button8Down: false,
        x: 0,
        y: 0,
      ).toBytes().buffer.asUint8List(),
      equals(
        (ByteData(6)
              ..setUint8(0, 5)
              ..setUint8(1, 0)
              ..setUint16(2, 0)
              ..setUint16(4, 0))
            .buffer
            .asUint8List(),
      ),
    );
    expect(
      const RemoteFrameBufferPointerEventMessage(
        button1Down: true,
        button2Down: false,
        button3Down: false,
        button4Down: false,
        button5Down: false,
        button6Down: false,
        button7Down: false,
        button8Down: false,
        x: 0,
        y: 0,
      ).toBytes().buffer.asUint8List(),
      equals(
        (ByteData(6)
              ..setUint8(0, 5)
              ..setUint8(1, Uint8(0).setNthBit(0))
              ..setUint16(2, 0)
              ..setUint16(4, 0))
            .buffer
            .asUint8List(),
      ),
    );
  });
}
