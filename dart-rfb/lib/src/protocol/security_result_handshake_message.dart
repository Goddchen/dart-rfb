import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_result_handshake_message.freezed.dart';

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
