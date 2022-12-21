import 'package:dart_rfb/dart_rfb.dart';

void main() async {
  final RemoteFrameBufferClient client = RemoteFrameBufferClient();
  await client.connect(hostname: '127.0.0.1');
  await client.startReadLoop();
}
