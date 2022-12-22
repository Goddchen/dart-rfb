import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/encoding_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_encodings_message.freezed.dart';

/// A message sent to the server to let it know which encodings we support.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.5.2
@freezed
class RemoteFrameBufferSetEncodingsMessage
    with _$RemoteFrameBufferSetEncodingsMessage {
  const factory RemoteFrameBufferSetEncodingsMessage({
    required final Iterable<RemoteFrameBufferEncodingType> encodingTypes,
  }) = _RemoteFrameBufferSetEncodingsMessage;

  const RemoteFrameBufferSetEncodingsMessage._();

  /// Get bytes for this message.
  ByteData toBytes() {
    final BytesBuilder bytesBuilder = BytesBuilder()
      ..add(
        (ByteData(4)
              ..setUint8(0, 2)
              ..setUint16(2, encodingTypes.length))
            .buffer
            .asUint8List(),
      );
    for (final RemoteFrameBufferEncodingType encodingType in encodingTypes) {
      bytesBuilder.add(encodingType.toBytes().buffer.asUint8List());
    }
    return ByteData.sublistView(bytesBuilder.toBytes());
  }
}
