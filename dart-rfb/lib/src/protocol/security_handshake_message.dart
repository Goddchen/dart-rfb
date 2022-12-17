import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_handshake_message.freezed.dart';

@freezed
class RemoteFrameBufferSecurityHandshakeMessage
    with _$RemoteFrameBufferSecurityHandshakeMessage {
  const factory RemoteFrameBufferSecurityHandshakeMessage({
    required final Iterable<
            RemoteFrameBufferSecurityHandshakeMessageSecurityType>
        securityTypes,
  }) = _RemoteFrameBufferSecurityHandshakeMessage;

  factory RemoteFrameBufferSecurityHandshakeMessage.fromBytes({
    required final ByteBuffer bytes,
  }) {
    assert(bytes.lengthInBytes > 0);
    return RemoteFrameBufferSecurityHandshakeMessage(
      securityTypes: bytes.asUint8List().skip(1).map((final int byte) {
        switch (byte) {
          case 0:
            return const RemoteFrameBufferSecurityHandshakeMessageSecurityType
                .invalid();
          case 1:
            return const RemoteFrameBufferSecurityHandshakeMessageSecurityType
                .none();
          case 2:
            return const RemoteFrameBufferSecurityHandshakeMessageSecurityType
                .vncAuthentication();
          default:
            return const RemoteFrameBufferSecurityHandshakeMessageSecurityType
                .invalid();
        }
      }),
    );
  }

  const RemoteFrameBufferSecurityHandshakeMessage._();
}

@freezed
class RemoteFrameBufferSecurityHandshakeMessageSecurityType
    with _$RemoteFrameBufferSecurityHandshakeMessageSecurityType {
  const factory RemoteFrameBufferSecurityHandshakeMessageSecurityType.invalid() =
      RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid;
  const factory RemoteFrameBufferSecurityHandshakeMessageSecurityType.none() =
      RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid;
  const factory RemoteFrameBufferSecurityHandshakeMessageSecurityType.vncAuthentication() =
      RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid;
}
