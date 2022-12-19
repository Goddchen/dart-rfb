import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_frame_buffer_client_update.freezed.dart';

/// Holds the configuration of the currently active framebuffer.
@freezed
class RemoteFrameBufferClientFrameBufferConfig
    with _$RemoteFrameBufferClientFrameBufferConfig {
  const factory RemoteFrameBufferClientFrameBufferConfig({
    required final int height,
    required final int width,
  }) = _RemoteFrameBufferClientFrameBufferConfig;
}

/// Holds all data that is associated with this framebuffer update.
@freezed
class RemoteFrameBufferClientUpdate with _$RemoteFrameBufferClientUpdate {
  const factory RemoteFrameBufferClientUpdate({
    required final Iterable<RemoteFrameBufferClientUpdateRectangle> rectangles,
  }) = _RemoteFrameBufferClientUpdate;
}

/// Contains all data that is relevant for an updated rectangle.
@freezed
class RemoteFrameBufferClientUpdateRectangle
    with _$RemoteFrameBufferClientUpdateRectangle {
  const factory RemoteFrameBufferClientUpdateRectangle({
    required final ByteData byteData,
    required final int height,
    required final int width,
    required final int x,
    required final int y,
  }) = _RemoteFrameBufferClientUpdateRectangle;
}
