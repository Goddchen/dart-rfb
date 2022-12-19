import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_pixel_format_message.freezed.dart';

@freezed
class RemoteFrameBufferSetPixelFormatMessage
    with _$RemoteFrameBufferSetPixelFormatMessage {
  const factory RemoteFrameBufferSetPixelFormatMessage({
    required final RemoteFrameBufferPixelFormat pixelFormat,
  }) = _RemoteFrameBufferSetPixelFormatMessage;
}
