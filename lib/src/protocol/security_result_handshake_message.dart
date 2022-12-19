import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_result_handshake_message.freezed.dart';

/// Security result handshake message.
/// 
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.1.3
@freezed
class RemoteFrameBufferSecurityResultHandshakeMessage
    with _$RemoteFrameBufferSecurityResultHandshakeMessage {
  const factory RemoteFrameBufferSecurityResultHandshakeMessage({
    required final bool success,
  }) = _RemoteFrameBufferSecurityResultHandshakeMessage;

  factory RemoteFrameBufferSecurityResultHandshakeMessage.fromBytes({
    required final ByteData bytes,
  }) =>
      RemoteFrameBufferSecurityResultHandshakeMessage(
        success: bytes.getUint32(0) == 0,
      );

  const RemoteFrameBufferSecurityResultHandshakeMessage._();
}
