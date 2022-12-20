import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:fake_async/fake_async.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../mocks.mocks.dart';

/// Runs a callback using FakeAsync.run while continually pumping the
/// microtask queue. This avoids a deadlock when tests `await` a Future
/// which queues a microtask that will not be processed unless the queue
/// is flushed.
Future<T> _runFakeAsync<T>(final Future<T> Function(FakeAsync time) f) async =>
    FakeAsync().run((final FakeAsync time) async {
      bool pump = true;
      final Future<T> future = f(time).whenComplete(() => pump = false);
      while (pump) {
        time
          ..elapse(const Duration(seconds: 1))
          ..flushMicrotasks();
      }
      return future;
    });

void main() {
  test('ServerInit message from bytes works', () async {
    const ZoneSpecification(scheduleMicrotask: null);
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
      await _runFakeAsync(
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
