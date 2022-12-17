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
    required final ByteBuffer bytes,
  }) =>
      RemoteFrameBufferSecurityResultHandshakeMessage(
        success: bytes.asUint32List()[0] == 0,
      );

  const RemoteFrameBufferSecurityResultHandshakeMessage._();
}
