import 'package:dart_rfb/src/protocol/frame_buffer_update_message.dart';
import 'package:dart_rfb/src/protocol/server_cut_text_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_frame_buffer_client_read_message.freezed.dart';

@freezed
class RemoteFrameBufferClientReadMessage
    with _$RemoteFrameBufferClientReadMessage {
  const factory RemoteFrameBufferClientReadMessage.bell() =
      _RemoteFrameBufferClientReadMessageBell;
  const factory RemoteFrameBufferClientReadMessage.frameBufferUpdate({
    required final RemoteFrameBufferFrameBufferUpdateMessage message,
  }) = _RemoteFrameBufferClientReadMessageFrameBufferUpdate;
  const factory RemoteFrameBufferClientReadMessage.serverCutTextMessage({
    required final RemoteFrameBufferServerCutTextMessage message,
  }) = _RemoteFrameBufferClientReadMessageServerCutTextMessage;
  const factory RemoteFrameBufferClientReadMessage.setColorMapEntries() =
      _RemoteFrameBufferClientReadMessageSetColorMapEntries;
}
