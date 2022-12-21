import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/encoding_type.dart';
import 'package:dart_rfb/src/protocol/set_encodings_message.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Set encodings message to bytes works', () {
    expect(
      const RemoteFrameBufferSetEncodingsMessage(
        encodingTypes: <RemoteFrameBufferEncodingType>[
          RemoteFrameBufferEncodingType.raw(),
        ],
      ).toBytes().buffer.asUint8List(),
      equals(
        (ByteData(8)
              ..setUint8(0, 2)
              ..setUint16(2, 1)
              ..setInt32(4, 0))
            .buffer
            .asUint8List(),
      ),
    );
  });
}
