import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_pixel_format_message.freezed.dart';

@freezed
class RemoteFrameBufferSetPixelFormatMessage
    with _$RemoteFrameBufferSetPixelFormatMessage {
  const factory RemoteFrameBufferSetPixelFormatMessage({
    required final RemoteFrameBufferPixelFormat pixelFormat,
  }) = _RemoteFrameBufferSetPixelFormatMessage;

  factory RemoteFrameBufferSetPixelFormatMessage.fromBytes({
    required final ByteBuffer bytes,
  }) =>
      RemoteFrameBufferSetPixelFormatMessage(
        pixelFormat: RemoteFrameBufferPixelFormat.fromBytes(
          bytes: bytes.asUint8List(4).buffer,
        ),
      );

  const RemoteFrameBufferSetPixelFormatMessage._();
}
