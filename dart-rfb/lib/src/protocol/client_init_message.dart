import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_init_message.freezed.dart';

@freezed
class RemoteFrameBufferClientInitMessage
    with _$RemoteFrameBufferClientInitMessage {
  const factory RemoteFrameBufferClientInitMessage({
    required final bool sharedFlag,
  }) = _RemoteFrameBufferClientInitMessage;

  ByteBuffer toBytes() =>
      Uint8List.fromList(<int>[if (sharedFlag) 1 else 0]).buffer;

  const RemoteFrameBufferClientInitMessage._();
}
