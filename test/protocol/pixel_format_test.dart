import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('PixelFormat from bytes works', () {
    expect(
      RemoteFrameBufferPixelFormat.fromBytes(
        bytes: ByteData(16)
          ..setUint8(0, 32)
          ..setUint8(1, 24)
          ..setUint8(2, 1)
          ..setUint8(3, 1)
          ..setUint16(4, 255)
          ..setUint16(6, 255)
          ..setUint16(8, 255)
          ..setUint8(10, 0)
          ..setUint8(11, 8)
          ..setUint8(12, 16),
      ),
      equals(
        const RemoteFrameBufferPixelFormat(
          bitsPerPixel: 32,
          depth: 24,
          bigEndian: true,
          trueColor: true,
          redMax: 255,
          greenMax: 255,
          blueMax: 255,
          redShift: 0,
          greenShift: 8,
          blueShift: 16,
        ),
      ),
    );
  });
}
