import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_init_message.freezed.dart';

@freezed
class RemoteFrameBufferClientInitMessage
    with _$RemoteFrameBufferClientInitMessage {
  const factory RemoteFrameBufferClientInitMessage({
    required final bool sharedFlag,
  }) = _RemoteFrameBufferClientInitMessage;

  ByteData toBytes() => ByteData(1)..setUint8(0, sharedFlag ? 1 : 0);

  const RemoteFrameBufferClientInitMessage._();
}
