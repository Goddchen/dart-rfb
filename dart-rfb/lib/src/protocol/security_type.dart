import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_type.freezed.dart';

@freezed
class RemoteFrameBufferSecurityType with _$RemoteFrameBufferSecurityType {
  const factory RemoteFrameBufferSecurityType.invalid() =
      RemoteFrameBufferSecurityTypeInvalid;
  const factory RemoteFrameBufferSecurityType.none() =
      RemoteFrameBufferSecurityTypeNone;
  const factory RemoteFrameBufferSecurityType.vncAuthentication() =
      RemoteFrameBufferSecurityVncAuthentication;

  ByteData toBytes() => map(
        invalid: (final _) => ByteData(1)..setUint8(0, 0),
        none: (final _) => ByteData(1)..setUint8(0, 1),
        vncAuthentication: (final _) => ByteData(1)..setUint8(0, 2),
      );

  const RemoteFrameBufferSecurityType._();
}
