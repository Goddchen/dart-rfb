import 'dart:io';

import 'package:dart_rfb/src/client/config.dart';
import 'package:dart_rfb/src/protocol/pixel_format.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(<Type>[
  Config,
  RemoteFrameBufferPixelFormat,
  RawSocket,
])
class Mocks {}
