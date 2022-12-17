import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/protocol_version_handshake_message.dart';
import 'package:test/test.dart';

void main() {
  test('Protocol version handshake message parsing works', () {
    expect(
      () {
        RemoteFrameBufferProtocolVersionHandshakeMessage.fromBytes(
          bytes: ByteData.sublistView(Uint8List(0)),
        );
      },
      throwsA(isA<AssertionError>()),
    );

    Uint8List bytes = Uint8List.fromList(
      <int>[
        0x52,
        0x46,
        0x42,
        0x20,
        0x30,
        0x30,
        0x33,
        0x2e,
        0x30,
        0x30,
        0x33,
        0x0a,
      ],
    );
    expect(
      RemoteFrameBufferProtocolVersionHandshakeMessage.fromBytes(
        bytes: ByteData.sublistView(bytes),
      ),
      equals(
        const RemoteFrameBufferProtocolVersionHandshakeMessage(
          version: RemoteFrameBufferProtocolVersion.v3_3(),
        ),
      ),
    );

    bytes = Uint8List.fromList(
      <int>[
        0x52,
        0x46,
        0x42,
        0x20,
        0x30,
        0x30,
        0x33,
        0x2e,
        0x30,
        0x30,
        0x37,
        0x0a,
      ],
    );
    expect(
      RemoteFrameBufferProtocolVersionHandshakeMessage.fromBytes(
        bytes: ByteData.sublistView(bytes),
      ),
      equals(
        const RemoteFrameBufferProtocolVersionHandshakeMessage(
          version: RemoteFrameBufferProtocolVersion.v3_7(),
        ),
      ),
    );

    bytes = Uint8List.fromList(
      <int>[
        0x52,
        0x46,
        0x42,
        0x20,
        0x30,
        0x30,
        0x33,
        0x2e,
        0x30,
        0x30,
        0x38,
        0x0a,
      ],
    );
    expect(
      RemoteFrameBufferProtocolVersionHandshakeMessage.fromBytes(
        bytes: ByteData.sublistView(bytes),
      ),
      equals(
        const RemoteFrameBufferProtocolVersionHandshakeMessage(
          version: RemoteFrameBufferProtocolVersion.v3_8(),
        ),
      ),
    );
  });
}
