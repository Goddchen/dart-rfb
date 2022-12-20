import 'package:fake_async/fake_async.dart';

/// Runs a callback using FakeAsync.run while continually pumping the
/// microtask queue. This avoids a deadlock when tests `await` a Future
/// which queues a microtask that will not be processed unless the queue
/// is flushed.
Future<T> runFakeAsync<T>(final Future<T> Function(FakeAsync time) f) async =>
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
