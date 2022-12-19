import 'dart:typed_data';

extension ByteDataExtensions on ByteData {
  /// Returns a [Uint8List] representation.
  Uint8List asUint8List() => buffer.asUint8List(offsetInBytes, lengthInBytes);
}
