import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_init_message.freezed.dart';

@freezed
class RemoteFrameBufferServerInitMessage
    with _$RemoteFrameBufferServerInitMessage {
  const factory RemoteFrameBufferServerInitMessage({
    required final int frameBufferHeightInPixels,
    required final int frameBufferWidthInPixels,
    required final String name,
    required final RemoteFrameBufferServerInitMessagePixelFormat
        serverPixelFormat,
  }) = _RemoteFrameBufferServerInitMessage;

  factory RemoteFrameBufferServerInitMessage.fromBytes({
    required final ByteBuffer bytes,
  }) =>
      RemoteFrameBufferServerInitMessage(
        frameBufferHeightInPixels: bytes.asUint16List()[0],
        frameBufferWidthInPixels: bytes.asUint16List()[1],
        serverPixelFormat:
            RemoteFrameBufferServerInitMessagePixelFormat.fromBytes(
          bytes: bytes.asInt16List(4, 1).buffer,
        ),
        name: utf8.decode(bytes.asUint8List(24)),
      );

  const RemoteFrameBufferServerInitMessage._();
}

@freezed
class RemoteFrameBufferServerInitMessagePixelFormat
    with _$RemoteFrameBufferServerInitMessagePixelFormat {
  const factory RemoteFrameBufferServerInitMessagePixelFormat({
    required final int bitsPerPixel,
    required final int depth,
    required final bool bigEndian,
    required final bool trueColor,
    required final int redMax,
    required final int greenMax,
    required final int blueMax,
    required final int redShift,
    required final int greenShift,
    required final int blueShift,
  }) = _RemoteFrameBufferServerInitMessagePixelFormat;

  factory RemoteFrameBufferServerInitMessagePixelFormat.fromBytes({
    required final ByteBuffer bytes,
  }) =>
      RemoteFrameBufferServerInitMessagePixelFormat(
        bitsPerPixel: bytes.asUint8List()[0],
        depth: bytes.asUint8List()[1],
        bigEndian: bytes.asUint8List()[2] != 0,
        trueColor: bytes.asUint8List()[3] != 0,
        redMax: bytes.asUint16List(4)[0],
        greenMax: bytes.asUint16List(4)[1],
        blueMax: bytes.asUint16List(4)[2],
        redShift: bytes.asUint8List(10)[0],
        greenShift: bytes.asUint8List(10)[1],
        blueShift: bytes.asUint8List(10)[2],
      );

  const RemoteFrameBufferServerInitMessagePixelFormat._();
}
