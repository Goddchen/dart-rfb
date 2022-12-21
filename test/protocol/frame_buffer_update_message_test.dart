import 'dart:typed_data';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../common.dart';
import '../mocks.mocks.dart';

void main() {
  test('Framebuffer update message from bytes works', () async {
    final MockRawSocket mockRawSocket = MockRawSocket();
    when(mockRawSocket.available()).thenReturn(18);
    final List<ByteData> readResponses = <ByteData>[
      ByteData(2)..setUint16(0, 1),
      ByteData(12)
        ..setUint16(0, 0)
        ..setUint16(2, 0)
        ..setUint16(4, 1)
        ..setUint16(6, 1)
        ..setInt32(8, 0),
      ByteData(4)..setUint32(0, 1),
    ];
    when(mockRawSocket.read(any)).thenAnswer(
      (final _) => readResponses.removeAt(0).buffer.asUint8List(),
    );
    final Either<Object, RemoteFrameBufferFrameBufferUpdateMessage> message =
        await runFakeAsync(
      (final _) => RemoteFrameBufferFrameBufferUpdateMessage.readFromSocket(
        config: Config(
          frameBufferHeight: 1,
          frameBufferWidth: 1,
          pixelFormat: RemoteFrameBufferPixelFormat.bgra8888,
        ),
        socket: mockRawSocket,
      ).run(),
    );
    expect(message.toNullable()?.rectangles, hasLength(1));
    expect(
      message.toNullable()?.rectangles.first.encodingType,
      equals(const RemoteFrameBufferEncodingType.raw()),
    );
    expect(message.toNullable()?.rectangles.first.height, equals(1));
    expect(
      message.toNullable()?.rectangles.first.pixelData.buffer.asUint8List(),
      equals((ByteData(4)..setUint32(0, 1)).buffer.asUint8List()),
    );
    expect(message.toNullable()?.rectangles.first.width, equals(1));
    expect(message.toNullable()?.rectangles.first.x, equals(0));
    expect(message.toNullable()?.rectangles.first.y, equals(0));
  });
}
