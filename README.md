# dart-rfb

Implementation of The Remote Framebuffer Protocol (RFC 6143, aka VNC protocol).

![https://pub.dev/packages/dart_rfb](https://img.shields.io/pub/v/dart_rfb)
![](https://github.com/Goddchen/dart-rfb/actions/workflows/main.yml/badge.svg)

## Motivation

We were searching a VNC viewer package for Flutter - without success.
Then there was a discussion about how complex the protocol is and wether we should implement it ourself.
Estimations ranged from 5 days to 100 days and we began joking that I'd be able to do it "after the weekend".
And here we are, after a weekend, with the first, minimal, protocol implementation.

## Supported Features

### Protocol Versions

- ✅ 3.3
- ✅ 3.7
- ✅ 3.8

### Encodings

- ✅ Raw
- ✅ CopyRect
- ⬜ RRE (obsolescent)
- ⬜ Hextile (obsolescent)
- ⬜ TRLE
- ⬜ ZRLE
- ⬜ Cursor pseudo-encoding
- ⬜ DesktopSize pseudo-encoding

### Security Types

- ✅ None
- ✅ VNC Authentication

### Pixel Formats

- ✅ BGRA8888 (https://api.flutter.dev/flutter/dart-ui/PixelFormat.html#bgra8888, 32 bits per pixel, true-color)

### Protocol Messages

- ✅ ProtocolVersion handshake
- ✅ Security handshake
- ✅ SecurityResult handshake
- ✅ ClientInit
- ✅ ServerInit
- Client-to-Server
  - ✅ SetPixelFormat
  - ✅ SetEncodings
  - ✅ FramebufferUpdateRequest
  - ⬜ KeyEvent
  - ✅ PointerEvent
  - ⬜ ClientCutText
- Server-to-Client
  - ✅ FramebufferUpdate
  - ⬜ SetColorMapEntries
  - ⬜ Bell
  - ⬜ ServerCutText

## Installation

As simple as `dart pub add dart_rfb`.

Or manually add `dart_rfb: ^<latest-version>` to your `pubspec.yaml`.

## Usage

```dart
final RemoteFrameBufferClient client = RemoteFrameBufferClient()
await client.connect(
  hostname: '127.0.0.1',
  password: 'password',
);
client.updateStream.listen(
  (final RemoteFrameBufferClientUpdate update) {
    // Update your framebuffer
  },
);
await client.startReadLoop();
client.requestUpdate();
```

## Learn More

https://www.rfc-editor.org/rfc/rfc6143
