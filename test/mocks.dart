import 'dart:io';

import 'package:dart_rfb/src/client/config.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(<Type>[
  Config,
  RawSocket,
])
class Mocks {}
