import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'encoding_type.freezed.dart';

@freezed
class RemoteFrameBufferEncodingType with _$RemoteFrameBufferEncodingType {
  const factory RemoteFrameBufferEncodingType.raw() =
      RemoteFrameBufferEncodingTypeRaw;
  const factory RemoteFrameBufferEncodingType.unsupported({
    required final ByteBuffer bytes,
  }) = RemoteFrameBufferEncodingTypeUnsupported;

  factory RemoteFrameBufferEncodingType.fromBytes({
    required final ByteBuffer bytes,
  }) {
    switch (bytes.asInt32List()[0]) {
      case 0:
        return const RemoteFrameBufferEncodingType.raw();
      default:
        return RemoteFrameBufferEncodingType.unsupported(bytes: bytes);
    }
  }

  const RemoteFrameBufferEncodingType._();
}
