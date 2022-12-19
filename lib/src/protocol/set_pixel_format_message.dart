import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_pixel_format_message.freezed.dart';

/// Set pixel format message.
/// 
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.5.1
@freezed
class RemoteFrameBufferSetPixelFormatMessage
    with _$RemoteFrameBufferSetPixelFormatMessage {
  const factory RemoteFrameBufferSetPixelFormatMessage({
    required final RemoteFrameBufferPixelFormat pixelFormat,
  }) = _RemoteFrameBufferSetPixelFormatMessage;
}
