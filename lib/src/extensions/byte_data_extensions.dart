import 'dart:typed_data';

extension ByteDataExtensions on ByteData {
  Uint8List asUint8List() => buffer.asUint8List(offsetInBytes, lengthInBytes);
}
