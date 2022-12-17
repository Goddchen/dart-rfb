import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_init_message.freezed.dart';

@freezed
class RemoteFrameBufferServerInitMessage
    with _$RemoteFrameBufferServerInitMessage {
  const factory RemoteFrameBufferServerInitMessage({
    required final int frameBufferHeightInPixels,
    required final int frameBufferWidthInPixels,
    required final String name,
    required final RemoteFrameBufferPixelFormat serverPixelFormat,
  }) = _RemoteFrameBufferServerInitMessage;

  factory RemoteFrameBufferServerInitMessage.fromBytes({
    required final ByteBuffer bytes,
  }) =>
      RemoteFrameBufferServerInitMessage(
        frameBufferHeightInPixels: bytes.asUint16List()[0],
        frameBufferWidthInPixels: bytes.asUint16List()[1],
        serverPixelFormat: RemoteFrameBufferPixelFormat.fromBytes(
          bytes: bytes.asInt16List(4, 1).buffer,
        ),
        name: utf8.decode(bytes.asUint8List(24)),
      );

  const RemoteFrameBufferServerInitMessage._();
}
