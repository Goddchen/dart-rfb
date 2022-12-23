import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/server_cut_text_message.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../common.dart';
import '../mocks.mocks.dart';

void main() {
  test('Server cut text message to bytes works', () {
    expect(
      const RemoteFrameBufferServerCutTextMessage(text: 'Test')
          .toBytes()
          .buffer
          .asUint8List(),
      equals(
        (BytesBuilder()
              ..add(
                (ByteData(8)
                      ..setUint8(0, 3)
                      ..setUint32(4, 4))
                    .buffer
                    .asUint8List(),
              )
              ..add(latin1.encode('Test')))
            .toBytes(),
      ),
    );
  });

  test('Server cut text message from socket works', () async {
    final MockRawSocket mockRawSocket = MockRawSocket();
    when(mockRawSocket.available()).thenReturn(11);
    final List<ByteData> readResponses = <ByteData>[
      ByteData(7)..setUint32(3, 4),
      ByteData.sublistView(latin1.encode('Test')),
    ];
    when(mockRawSocket.read(any)).thenAnswer(
      (final _) => readResponses.removeAt(0).buffer.asUint8List(),
    );
    final Either<Object, RemoteFrameBufferServerCutTextMessage> message =
        await runFakeAsync(
      (final _) => RemoteFrameBufferServerCutTextMessage.readFromSocket(
        socket: mockRawSocket,
      ).run(),
    );
    expect(
      message.toNullable()?.text,
      equals('Test'),
    );
  });
}
