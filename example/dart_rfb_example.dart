import 'package:dart_rfb/dart_rfb.dart';

void main() async {
  final RemoteFrameBufferClient client = RemoteFrameBufferClient()
    ..loggingEnabled = true;
  await client.connect();
  await client.startReadLoop();
}
