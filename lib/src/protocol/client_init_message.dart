import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_init_message.freezed.dart';

/// Sent to the server to configure client init parameters.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.3.1
@freezed
class RemoteFrameBufferClientInitMessage
    with _$RemoteFrameBufferClientInitMessage {
  const factory RemoteFrameBufferClientInitMessage({
    required final bool sharedFlag,
  }) = _RemoteFrameBufferClientInitMessage;

  ByteData toBytes() => ByteData(1)..setUint8(0, sharedFlag ? 1 : 0);

  const RemoteFrameBufferClientInitMessage._();
}
