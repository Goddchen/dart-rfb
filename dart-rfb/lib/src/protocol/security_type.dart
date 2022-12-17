import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_type.freezed.dart';

@freezed
class RemoteFrameBufferSecurityType with _$RemoteFrameBufferSecurityType {
  const factory RemoteFrameBufferSecurityType.invalid() =
      RemoteFrameBufferSecurityTypeInvalid;
  const factory RemoteFrameBufferSecurityType.none() =
      RemoteFrameBufferSecurityTypeInvalid;
  const factory RemoteFrameBufferSecurityType.vncAuthentication() =
      RemoteFrameBufferSecurityTypeInvalid;

  ByteBuffer toBytes() => map(
        invalid: (final _) => Uint8List.fromList(<int>[0]).buffer,
        none: (final _) => Uint8List.fromList(<int>[1]).buffer,
        vncAuthentication: (final _) => Uint8List.fromList(<int>[2]).buffer,
      );

  const RemoteFrameBufferSecurityType._();
}
