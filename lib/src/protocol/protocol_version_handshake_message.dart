import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'protocol_version_handshake_message.freezed.dart';

/// List of known protocol versions.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-6
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.1.1
@freezed
class RemoteFrameBufferProtocolVersion with _$RemoteFrameBufferProtocolVersion {
  const factory RemoteFrameBufferProtocolVersion.unknown({
    required final ByteData bytes,
  }) = RemoteFrameBufferProtocolVersionUnknown;
  const factory RemoteFrameBufferProtocolVersion.v3_3() =
      RemoteFrameBufferProtocolVersion_3_3;
  const factory RemoteFrameBufferProtocolVersion.v3_7() =
      RemoteFrameBufferProtocolVersion_3_7;
  const factory RemoteFrameBufferProtocolVersion.v3_8() =
      RemoteFrameBufferProtocolVersion_3_8;
}

/// Protocol version handshake message.
///
/// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.1.1
@freezed
class RemoteFrameBufferProtocolVersionHandshakeMessage
    with _$RemoteFrameBufferProtocolVersionHandshakeMessage {
  static const int length = 12;

  const factory RemoteFrameBufferProtocolVersionHandshakeMessage({
    required final RemoteFrameBufferProtocolVersion version,
  }) = _RemoteFrameBufferProtocolVersionHandshakeMessage;

  factory RemoteFrameBufferProtocolVersionHandshakeMessage.fromBytes({
    required final ByteData bytes,
  }) {
    assert(bytes.lengthInBytes == 12);
    final String versionString =
        String.fromCharCodes(bytes.buffer.asUint8List(bytes.offsetInBytes));
    switch (versionString[6]) {
      case '3':
        switch (versionString[10]) {
          case '3':
            return const RemoteFrameBufferProtocolVersionHandshakeMessage(
              version: RemoteFrameBufferProtocolVersion.v3_3(),
            );
          case '7':
            return const RemoteFrameBufferProtocolVersionHandshakeMessage(
              version: RemoteFrameBufferProtocolVersion.v3_7(),
            );
          case '8':
            return const RemoteFrameBufferProtocolVersionHandshakeMessage(
              version: RemoteFrameBufferProtocolVersion.v3_8(),
            );
          default:
            return RemoteFrameBufferProtocolVersionHandshakeMessage(
              version: RemoteFrameBufferProtocolVersion.unknown(bytes: bytes),
            );
        }
      default:
        return RemoteFrameBufferProtocolVersionHandshakeMessage(
          version: RemoteFrameBufferProtocolVersion.unknown(bytes: bytes),
        );
    }
  }

  const RemoteFrameBufferProtocolVersionHandshakeMessage._();

  ByteData toBytes() => version.map(
        unknown: (final _) =>
            throw Exception('Cannot send an unknown protocol version'),
        v3_3: (final _) => ByteData.sublistView(ascii.encode('RFB 003.003\n')),
        v3_7: (final _) => ByteData.sublistView(ascii.encode('RFB 003.007\n')),
        v3_8: (final _) => ByteData.sublistView(ascii.encode('RFB 003.008\n')),
      );
}
