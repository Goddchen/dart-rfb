import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixel_format.freezed.dart';

@freezed
class RemoteFrameBufferPixelFormat with _$RemoteFrameBufferPixelFormat {
  const factory RemoteFrameBufferPixelFormat({
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
  }) = _RemoteFrameBufferPixelFormat;

  factory RemoteFrameBufferPixelFormat.fromBytes({
    required final ByteBuffer bytes,
  }) =>
      RemoteFrameBufferPixelFormat(
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

  const RemoteFrameBufferPixelFormat._();
}
