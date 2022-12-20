import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/security_type.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Security type to bytes works', () {
    expect(
      const RemoteFrameBufferSecurityType.invalid()
          .toBytes()
          .buffer
          .asUint8List(),
      equals((ByteData(1)..setUint8(0, 0)).buffer.asUint8List()),
    );
    expect(
      const RemoteFrameBufferSecurityType.none().toBytes().buffer.asUint8List(),
      equals((ByteData(1)..setUint8(0, 1)).buffer.asUint8List()),
    );
    expect(
      const RemoteFrameBufferSecurityType.vncAuthentication()
          .toBytes()
          .buffer
          .asUint8List(),
      equals((ByteData(1)..setUint8(0, 2)).buffer.asUint8List()),
    );
  });
}
