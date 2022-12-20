import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_type.freezed.dart';

/// List of known security types.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.2
@freezed
class RemoteFrameBufferSecurityType with _$RemoteFrameBufferSecurityType {
  const factory RemoteFrameBufferSecurityType.invalid() =
      RemoteFrameBufferSecurityTypeInvalid;
  const factory RemoteFrameBufferSecurityType.none() =
      RemoteFrameBufferSecurityTypeNone;
  const factory RemoteFrameBufferSecurityType.vncAuthentication() =
      RemoteFrameBufferSecurityTypeVncAuthentication;

  /// Parse [bytes].
  factory RemoteFrameBufferSecurityType.fromBytes({
    required final ByteData bytes,
  }) {
    if (bytes.lengthInBytes == 1) {
      switch (bytes.getUint8(0)) {
        case 0:
          return const RemoteFrameBufferSecurityType.invalid();
        case 1:
          return const RemoteFrameBufferSecurityType.none();
        case 2:
          return const RemoteFrameBufferSecurityType.vncAuthentication();
        default:
          return const RemoteFrameBufferSecurityType.invalid();
      }
    } else if (bytes.lengthInBytes == 4) {
      switch (bytes.getUint32(0)) {
        case 0:
          return const RemoteFrameBufferSecurityType.invalid();
        case 1:
          return const RemoteFrameBufferSecurityType.none();
        case 2:
          return const RemoteFrameBufferSecurityType.vncAuthentication();
        default:
          return const RemoteFrameBufferSecurityType.invalid();
      }
    } else {
      throw Exception(
        'Unable to read security type from ${bytes.lengthInBytes} bytes',
      );
    }
  }

  /// Convert this type to a [ByteData].
  ByteData toBytes() => map(
        invalid: (final _) => ByteData(1)..setUint8(0, 0),
        none: (final _) => ByteData(1)..setUint8(0, 1),
        vncAuthentication: (final _) => ByteData(1)..setUint8(0, 2),
      );

  const RemoteFrameBufferSecurityType._();
}
