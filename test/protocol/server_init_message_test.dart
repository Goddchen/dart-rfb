import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../common.dart';
import '../mocks.mocks.dart';

void main() {
  test('ServerInit message from bytes works', () async {
    final MockRawSocket mockRawSocket = MockRawSocket();
    when(mockRawSocket.available()).thenReturn(28);
    final Uint8List nameBytes = Uint8List.fromList(utf8.encode('Test'));
    final List<ByteData> readResponses = <ByteData>[
      ByteData(28)
        ..setUint16(0, 1920)
        ..setUint16(2, 1080)
        ..setUint8(4, 32)
        ..setUint8(5, 24)
        ..setUint8(6, 1)
        ..setUint8(7, 1)
        ..setUint16(8, 255)
        ..setUint16(10, 255)
        ..setUint16(12, 255)
        ..setUint8(14, 0)
        ..setUint8(15, 8)
        ..setUint8(16, 16)
        ..setUint8(17, 0)
        ..setUint8(18, 0)
        ..setUint8(19, 0)
        ..setUint32(20, 4),
      ByteData(4)
        ..setUint8(0, nameBytes[0])
        ..setUint8(1, nameBytes[1])
        ..setUint8(2, nameBytes[2])
        ..setUint8(3, nameBytes[3]),
    ];
    when(mockRawSocket.read(any)).thenAnswer(
      (final _) => readResponses.removeAt(0).buffer.asUint8List(),
    );
    expect(
      await runFakeAsync(
        (final _) => RemoteFrameBufferServerInitMessage.readFromSocket(
          socket: mockRawSocket,
        ).run(),
      ),
      equals(
        right(
          const RemoteFrameBufferServerInitMessage(
            frameBufferHeightInPixels: 1080,
            frameBufferWidthInPixels: 1920,
            name: 'Test',
            serverPixelFormat: RemoteFrameBufferPixelFormat(
              bitsPerPixel: 32,
              depth: 24,
              bigEndian: true,
              trueColor: true,
              redMax: 255,
              greenMax: 255,
              blueMax: 255,
              redShift: 0,
              greenShift: 8,
              blueShift: 16,
            ),
          ),
        ),
      ),
    );
  });
}
