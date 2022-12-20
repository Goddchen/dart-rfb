extension IntExtensions on int {
  /// Reverse the bits that make this byte.
  ///
  /// Source: https://stackoverflow.com/a/2602885/373138
  int reverseBits() {
    int byte = this;
    byte = (byte & 0xF0) >> 4 | (byte & 0x0F) << 4;
    byte = (byte & 0xCC) >> 2 | (byte & 0x33) << 2;
    byte = (byte & 0xAA) >> 1 | (byte & 0x55) << 1;
    return byte;
  }
}
