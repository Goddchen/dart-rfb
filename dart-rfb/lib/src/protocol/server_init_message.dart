import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part 'server_init_message.freezed.dart';

@freezed
class RemoteFrameBufferServerInitMessage
    with _$RemoteFrameBufferServerInitMessage {
  static final Logger _logger = Logger('RemoteFrameBufferServerInitMessage');

  const factory RemoteFrameBufferServerInitMessage({
    required final int frameBufferHeightInPixels,
    required final int frameBufferWidthInPixels,
    required final String name,
    required final RemoteFrameBufferPixelFormat serverPixelFormat,
  }) = _RemoteFrameBufferServerInitMessage;

  const RemoteFrameBufferServerInitMessage._();

  static TaskEither<Object, RemoteFrameBufferServerInitMessage> readFromSocket({
    required final RawSocket socket,
  }) =>
      TaskEither<Object, RemoteFrameBufferServerInitMessage>.tryCatch(
        () async {
          final BytesBuilder bytesBuilder = BytesBuilder();
          while (bytesBuilder.length < 24) {
            await Future<void>.delayed(const Duration(milliseconds: 10));

            optionOf(socket.read(1)).match(
              () {},
              bytesBuilder.add,
            );
          }
          final Uint8List bytes = bytesBuilder.toBytes();
          final int nameLength = ByteData.sublistView(bytes).getUint32(20);
          while (socket.available() < nameLength) {
            await Future<void>.delayed(const Duration(seconds: 1));
          }
          final Uint8List nameBytes = optionOf(socket.read(nameLength))
              .getOrElse(() => throw Exception('Error reading name'));
          final RemoteFrameBufferServerInitMessage serverInitMessage =
              RemoteFrameBufferServerInitMessage(
            frameBufferHeightInPixels: ByteData.sublistView(bytes).getUint16(2),
            frameBufferWidthInPixels: ByteData.sublistView(bytes).getUint16(0),
            name: utf8.decode(nameBytes),
            serverPixelFormat: RemoteFrameBufferPixelFormat.fromBytes(
              bytes: ByteData.sublistView(bytes, 4, 20),
            ),
          );
          _logger.log(Level.INFO, '< $serverInitMessage');
          return serverInitMessage;
        },
        (final Object error, final _) => error,
      );
}
