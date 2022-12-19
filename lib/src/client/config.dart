import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';

@freezed

/// Holds all config parameters of the current session.
class Config with _$Config {
  const factory Config({
    /// The framebuffer height in pixels.
    required final int frameBufferHeight,

    /// The framebuffer width in pixels.
    required final int frameBufferWidth,

    /// The pixel format negotiated between client and server.
    required final RemoteFrameBufferPixelFormat pixelFormat,
  }) = _Config;
}
