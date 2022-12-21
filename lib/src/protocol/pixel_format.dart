import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixel_format.freezed.dart';

/// The pixel format used by this session.
///
/// Server sends the default pixel format during init.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.4
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

  /// This corresponds to Flutter's `PixelFormat.bgra8888`.
  static RemoteFrameBufferPixelFormat bgra8888 =
      const RemoteFrameBufferPixelFormat(
    bitsPerPixel: 32,
    depth: 24,
    bigEndian: false,
    trueColor: true,
    redMax: 255,
    greenMax: 255,
    blueMax: 255,
    redShift: 16,
    greenShift: 8,
    blueShift: 0,
  );

  /// Parse [bytes].
  factory RemoteFrameBufferPixelFormat.fromBytes({
    required final ByteData bytes,
  }) =>
      RemoteFrameBufferPixelFormat(
        bitsPerPixel: bytes.getUint8(0),
        depth: bytes.getUint8(1),
        bigEndian: bytes.getUint8(2) != 0,
        trueColor: bytes.getUint8(3) != 0,
        redMax: bytes.getUint16(4),
        greenMax: bytes.getUint16(6),
        blueMax: bytes.getUint16(8),
        redShift: bytes.getUint8(10),
        greenShift: bytes.getUint8(11),
        blueShift: bytes.getUint8(12),
      );

  /// Get byte representation of this pixel format.
  ByteData toBytes() => ByteData(16)
    ..setUint8(0, bitsPerPixel)
    ..setUint8(1, depth)
    ..setUint8(2, bigEndian ? 1 : 0)
    ..setUint8(3, trueColor ? 1 : 0)
    ..setUint16(4, redMax)
    ..setUint16(6, greenMax)
    ..setUint16(8, blueMax)
    ..setUint8(10, redShift)
    ..setUint8(11, greenShift)
    ..setUint8(12, blueShift);

  const RemoteFrameBufferPixelFormat._();
}
