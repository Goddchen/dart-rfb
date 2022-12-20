import 'package:dart_rfb/dart_rfb.dart';
import 'package:test/test.dart';

void main() {
  test('Connect to VNC running on localhost', skip: true, () async {
    final RemoteFrameBufferClient client = RemoteFrameBufferClient()
      ..loggingEnabled = true;
    await client.connect(
      hostname: '127.0.0.1',
      password: 'password',
    );
    // await client.startReadLoop();
  });
}
