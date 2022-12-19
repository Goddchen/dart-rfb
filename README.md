# dart-rfb

Implementation of The Remote Framebuffer Protocol (RFC 6143, aka VNC protocol).

![https://pub.dev/packages/dart_rfb](https://img.shields.io/pub/v/dart_rfb)
![](https://github.com/Goddchen/dart-rfb/actions/workflows/main.yml/badge.svg)

## Motivation

We were searching a VNC viewer package for Flutter - without success.
Then there was a discussion about how complex the protocol is and wether we should implement it ourself.
Estimations ranged from 5 days to 100 days and we began joking that I'd be able to do it "after the weekend".
And here we are, after a weekend, with the first, minimal, protocol implementation.

## Installation

As simple as `dart pub add dart_rfb`.

Or manually add `dart_rfb: ^0.0.1` to your `pubspec.yaml`.

## Usage

```dart
final RemoteFrameBufferClient client = RemoteFrameBufferClient()
await client.connect();
await client.startReadLoop();
client.updateStream.listen(
  (final RemoteFrameBufferClientUpdate update) {
    // Update your framebuffer
  },
);
client.requestUpdate();
```
