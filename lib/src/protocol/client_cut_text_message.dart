import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_cut_text_message.freezed.dart';

@freezed
class RemoteFrameBufferClientCutTextMessage
    with _$RemoteFrameBufferClientCutTextMessage {
  const factory RemoteFrameBufferClientCutTextMessage({
    required final String text,
  }) = _RemoteFrameBufferClientCutTextMessage;

  const RemoteFrameBufferClientCutTextMessage._();

  ByteData toBytes() {
    final String text = this.text.replaceAll('\r', '');
    return ByteData.sublistView(
      (BytesBuilder()
            ..add(
              (ByteData(8)
                    ..setUint8(0, 6)
                    ..setUint32(4, text.length))
                  .buffer
                  .asUint8List(),
            )
            ..add(latin1.encode(text)))
          .toBytes(),
    );
  }
}
