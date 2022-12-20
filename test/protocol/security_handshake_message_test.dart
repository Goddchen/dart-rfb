import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/security_handshake_message.dart';
import 'package:dart_rfb/src/protocol/security_type.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('SecurityHandshakeMesasge from bytes works', () {
    expect(
      () => RemoteFrameBufferSecurityHandshakeMessage.fromBytes(
        bytes: ByteData(0),
      ),
      throwsA(isA<AssertionError>()),
    );

    expect(
      RemoteFrameBufferSecurityHandshakeMessage.fromBytes(
        bytes: ByteData(2)..setUint8(1, 0),
      ),
      equals(
        const RemoteFrameBufferSecurityHandshakeMessage(
          securityTypes: <RemoteFrameBufferSecurityType>[
            RemoteFrameBufferSecurityType.invalid(),
          ],
        ),
      ),
    );

    expect(
      RemoteFrameBufferSecurityHandshakeMessage.fromBytes(
        bytes: ByteData(2)..setUint8(1, 1),
      ),
      equals(
        const RemoteFrameBufferSecurityHandshakeMessage(
          securityTypes: <RemoteFrameBufferSecurityType>[
            RemoteFrameBufferSecurityType.none(),
          ],
        ),
      ),
    );

    expect(
      RemoteFrameBufferSecurityHandshakeMessage.fromBytes(
        bytes: ByteData(2)..setUint8(1, 2),
      ),
      equals(
        const RemoteFrameBufferSecurityHandshakeMessage(
          securityTypes: <RemoteFrameBufferSecurityType>[
            RemoteFrameBufferSecurityType.vncAuthentication(),
          ],
        ),
      ),
    );

    expect(
      RemoteFrameBufferSecurityHandshakeMessage.fromBytes(
        bytes: ByteData(3)
          ..setUint8(1, 1)
          ..setUint8(2, 2),
      ),
      equals(
        const RemoteFrameBufferSecurityHandshakeMessage(
          securityTypes: <RemoteFrameBufferSecurityType>[
            RemoteFrameBufferSecurityType.none(),
            RemoteFrameBufferSecurityType.vncAuthentication(),
          ],
        ),
      ),
    );
  });
}
