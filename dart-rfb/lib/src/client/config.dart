import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';

@freezed
class Config with _$Config {
  const factory Config({
    required final int frameBufferHeight,
    required final int frameBufferWidth,
    required final RemoteFrameBufferPixelFormat pixelFormat,
  }) = _Config;
}
