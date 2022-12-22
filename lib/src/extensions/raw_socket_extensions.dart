import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:fpdart/fpdart.dart';

extension RawSocketExtensions on RawSocket {
  Task<ByteData> readSync({
    required final int length,
    final Option<Duration> readWaitDuration = const None<Duration>(),
  }) =>
      Task<ByteData>(
        () async {
          final BytesBuilder bytesBuilder = BytesBuilder();
          while (bytesBuilder.length < length) {
            optionOf(
              read(
                min(length, length - bytesBuilder.length),
              ),
            ).match(
              () {},
              bytesBuilder.add,
            );
            if (bytesBuilder.length < length) {
              await readWaitDuration.match(
                () async {},
                (final Duration duration) async =>
                    await Future<void>.delayed(duration),
              );
            }
          }
          return ByteData.sublistView(bytesBuilder.toBytes());
        },
      );
}
