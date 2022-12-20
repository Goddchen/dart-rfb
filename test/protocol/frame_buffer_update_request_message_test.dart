import 'dart:typed_data';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Framebuffer update request from bytes works', () {
    expect(
      const RemoteFrameBufferFrameBufferUpdateRequestMessage(
        height: 1080,
        incremental: true,
        width: 1920,
        x: 0,
        y: 0,
      ).toBytes().buffer.asUint8List(),
      equals(
        (ByteData(10)
              ..setUint8(0, 3)
              ..setUint8(1, 1)
              ..setUint16(2, 0)
              ..setUint16(4, 0)
              ..setUint16(6, 1920)
              ..setUint16(8, 1080))
            .buffer
            .asUint8List(),
      ),
    );
    expect(
      const RemoteFrameBufferFrameBufferUpdateRequestMessage(
        height: 1080,
        incremental: false,
        width: 1920,
        x: 0,
        y: 0,
      ).toBytes().buffer.asUint8List(),
      equals(
        (ByteData(10)
              ..setUint8(0, 3)
              ..setUint8(1, 0)
              ..setUint16(2, 0)
              ..setUint16(4, 0)
              ..setUint16(6, 1920)
              ..setUint16(8, 1080))
            .buffer
            .asUint8List(),
      ),
    );
  });
}
