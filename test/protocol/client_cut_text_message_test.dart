import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/client_cut_text_message.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Client cut text message to bytes works', () {
    expect(
      const RemoteFrameBufferClientCutTextMessage(text: 'Test')
          .toBytes()
          .buffer
          .asUint8List(),
      equals(
        (BytesBuilder()
              ..add(
                (ByteData(8)
                      ..setUint8(0, 6)
                      ..setUint32(4, 4))
                    .buffer
                    .asUint8List(),
              )
              ..add(latin1.encode('Test')))
            .toBytes(),
      ),
    );
  });
}
