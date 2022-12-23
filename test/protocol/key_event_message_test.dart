import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/key_event_message.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Key event message to bytes works', () {
    expect(
      const RemoteFrameBufferKeyEventMessage(down: true, key: 0)
          .toBytes()
          .buffer
          .asUint8List(),
      equals(
        (ByteData(8)
              ..setUint8(0, 4)
              ..setUint8(1, 1)
              ..setUint32(4, 0))
            .buffer
            .asUint8List(),
      ),
    );
    expect(
      const RemoteFrameBufferKeyEventMessage(down: false, key: 1)
          .toBytes()
          .buffer
          .asUint8List(),
      equals(
        (ByteData(8)
              ..setUint8(0, 4)
              ..setUint8(1, 0)
              ..setUint32(4, 1))
            .buffer
            .asUint8List(),
      ),
    );
  });
}
