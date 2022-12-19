import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/security_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_handshake_message.freezed.dart';

/// Security handshake message.
/// 
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.1.2
@freezed
class RemoteFrameBufferSecurityHandshakeMessage
    with _$RemoteFrameBufferSecurityHandshakeMessage {
  const factory RemoteFrameBufferSecurityHandshakeMessage({
    required final Iterable<RemoteFrameBufferSecurityType> securityTypes,
  }) = _RemoteFrameBufferSecurityHandshakeMessage;

  factory RemoteFrameBufferSecurityHandshakeMessage.fromBytes({
    required final ByteData bytes,
  }) {
    assert(bytes.lengthInBytes > 0);
    return RemoteFrameBufferSecurityHandshakeMessage(
      securityTypes: bytes.buffer
          .asUint8List(bytes.offsetInBytes, bytes.lengthInBytes)
          .skip(1)
          .map((final int byte) {
        switch (byte) {
          case 0:
            return const RemoteFrameBufferSecurityType.invalid();
          case 1:
            return const RemoteFrameBufferSecurityType.none();
          case 2:
            return const RemoteFrameBufferSecurityType.vncAuthentication();
          default:
            return const RemoteFrameBufferSecurityType.invalid();
        }
      }),
    );
  }

  const RemoteFrameBufferSecurityHandshakeMessage._();
}
