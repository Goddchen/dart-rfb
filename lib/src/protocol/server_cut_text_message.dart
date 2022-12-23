import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dart_rfb/src/extensions/raw_socket_extensions.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_cut_text_message.freezed.dart';

@freezed
class RemoteFrameBufferServerCutTextMessage
    with _$RemoteFrameBufferServerCutTextMessage {
  const factory RemoteFrameBufferServerCutTextMessage({
    required final String text,
  }) = _RemoteFrameBufferServerCutTextMessage;

  const RemoteFrameBufferServerCutTextMessage._();

  ByteData toBytes() => ByteData.sublistView(
        (BytesBuilder()
              ..add(
                (ByteData(8)
                      ..setUint8(0, 3)
                      ..setUint32(4, text.length))
                    .buffer
                    .asUint8List(),
              )
              ..add(latin1.encode(text.replaceAll('\r', ''))))
            .toBytes(),
      );

  static TaskEither<Object, RemoteFrameBufferServerCutTextMessage>
      readFromSocket({
    required final RawSocket socket,
  }) =>
          TaskEither<Object, RemoteFrameBufferServerCutTextMessage>.tryCatch(
            () async {
              final int length =
                  (await socket.readSync(length: 7).run()).getUint32(3);
              final String text = latin1.decode(
                (await socket.readSync(length: length).run())
                    .buffer
                    .asUint8List(),
              );
              return RemoteFrameBufferServerCutTextMessage(text: text);
            },
            (final Object error, final _) => error,
          );
}
