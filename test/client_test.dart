import 'package:dart_rfb/dart_rfb.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';

void main() {
  test('Connect to VNC running on localhost', skip: true, () async {
    Logger.root.onRecord.listen((final LogRecord logRecord) {
      // ignore: avoid_print
      print('${logRecord.loggerName}: ${logRecord.message}');
    });
    final RemoteFrameBufferClient client = RemoteFrameBufferClient();
    await client.connect(
      hostname: '127.0.0.1',
      password: 'password',
    );
    // await client.startReadLoop();
  });
}
