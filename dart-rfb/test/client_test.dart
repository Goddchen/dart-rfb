import 'package:dart_rfb/dart_rfb.dart';
import 'package:test/test.dart';

void main() {
  test('Connect to VNC running on localhost', skip: false, () async {
    final RemoteFrameBufferClient client = RemoteFrameBufferClient();
    await client.connect();
    await client.start();
  });
}
