import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'encoding_type.freezed.dart';

/// Encoding types as defined by RFC 6143.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.7
@freezed
class RemoteFrameBufferEncodingType with _$RemoteFrameBufferEncodingType {
  const factory RemoteFrameBufferEncodingType.raw() =
      RemoteFrameBufferEncodingTypeRaw;
  const factory RemoteFrameBufferEncodingType.unsupported({
    required final ByteData bytes,
  }) = RemoteFrameBufferEncodingTypeUnsupported;

  /// Parse [bytes].
  factory RemoteFrameBufferEncodingType.fromBytes({
    required final ByteData bytes,
  }) {
    switch (bytes.getInt32(0)) {
      case 0:
        return const RemoteFrameBufferEncodingType.raw();
      default:
        return RemoteFrameBufferEncodingType.unsupported(bytes: bytes);
    }
  }

  /// Generate byte representation of thie encoding type.
  ByteData toBytes() => ByteData(4)
    ..setInt32(
      0,
      map(
        raw: (final _) => 0,
        unsupported: (final _) => -1,
      ),
    );

  const RemoteFrameBufferEncodingType._();
}
