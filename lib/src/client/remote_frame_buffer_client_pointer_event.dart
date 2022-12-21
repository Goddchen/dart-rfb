import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_frame_buffer_client_pointer_event.freezed.dart';

@freezed
class RemoteFrameBufferClientPointerEvent
    with _$RemoteFrameBufferClientPointerEvent {
  const factory RemoteFrameBufferClientPointerEvent({
    required final bool button1Down,
    required final bool button2Down,
    required final bool button3Down,
    required final bool button4Down,
    required final bool button5Down,
    required final bool button6Down,
    required final bool button7Down,
    required final bool button8Down,
    required final int x,
    required final int y,
  }) = _RemoteFrameBufferClientPointerEvent;
}
