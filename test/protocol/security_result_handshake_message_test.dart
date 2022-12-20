import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/security_result_handshake_message.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Security result handshake message from bytes works', () {
    expect(
      RemoteFrameBufferSecurityResultHandshakeMessage.fromBytes(
        bytes: ByteData(4)..setUint32(0, 0),
      ),
      equals(
        const RemoteFrameBufferSecurityResultHandshakeMessage(success: true),
      ),
    );
    expect(
      RemoteFrameBufferSecurityResultHandshakeMessage.fromBytes(
        bytes: ByteData(4)..setUint32(0, 1),
      ),
      equals(
        const RemoteFrameBufferSecurityResultHandshakeMessage(success: false),
      ),
    );
  });
}
