import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/client_init_message.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Client init message to bytes works', () {
    expect(
      const RemoteFrameBufferClientInitMessage(sharedFlag: true)
          .toBytes()
          .buffer
          .asUint8List(),
      equals((ByteData(1)..setUint8(0, 1)).buffer.asUint8List()),
    );
    expect(
      const RemoteFrameBufferClientInitMessage(sharedFlag: false)
          .toBytes()
          .buffer
          .asUint8List(),
      equals((ByteData(1)..setUint8(0, 0)).buffer.asUint8List()),
    );
  });
}
