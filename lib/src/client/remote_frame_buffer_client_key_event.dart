import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_frame_buffer_client_key_event.freezed.dart';

@freezed
class RemoteFrameBufferClientKeyEvent with _$RemoteFrameBufferClientKeyEvent {
  const factory RemoteFrameBufferClientKeyEvent({
    required final bool down,
    required final int key,
  }) = _RemoteFrameBufferClientKeyEvent;
}
