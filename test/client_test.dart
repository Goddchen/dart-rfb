import 'dart:async';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';

void main() {
  test(
    'Connect to VNC running on localhost',
    skip: true,
    timeout: const Timeout(Duration(hours: 1)),
    () async {
      Logger.root.level = Level.ALL;
      Logger.root.onRecord.listen((final LogRecord logRecord) {
        // ignore: avoid_print
        print('${logRecord.loggerName}: ${logRecord.message}');
      });
      final RemoteFrameBufferClient client = RemoteFrameBufferClient();
      await client.connect(
        hostname: '127.0.0.1',
        password: 'password',
      );
      unawaited(client.startReadLoop());
      while (true) {
        client.requestUpdate();
        await Future<void>.delayed(const Duration(milliseconds: 33));
      }
    },
  );
}
