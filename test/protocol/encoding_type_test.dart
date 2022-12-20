import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/encoding_type.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Encoding type from bytes works', () {
    expect(
      RemoteFrameBufferEncodingType.fromBytes(
        bytes: ByteData(4)..setInt32(0, 0),
      ),
      equals(const RemoteFrameBufferEncodingType.raw()),
    );
    final RemoteFrameBufferEncodingType encodingType =
        RemoteFrameBufferEncodingType.fromBytes(
      bytes: ByteData(4)..setInt32(0, 1),
    );
    expect(encodingType, isA<RemoteFrameBufferEncodingTypeUnsupported>());
    expect(
      (encodingType as RemoteFrameBufferEncodingTypeUnsupported)
          .bytes
          .buffer
          .asUint8List(),
      (ByteData(4)..setInt32(0, 1)).buffer.asUint8List(),
    );
  });
}
