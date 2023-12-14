// Mocks generated by Mockito 5.4.3 from annotations
// in dart_rfb/test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;
import 'dart:io' as _i2;
import 'dart:typed_data' as _i5;

import 'package:dart_rfb/src/client/config.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeInternetAddress_0 extends _i1.SmartFake
    implements _i2.InternetAddress {
  _FakeInternetAddress_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRawSocketEvent_1 extends _i1.SmartFake
    implements _i2.RawSocketEvent {
  _FakeRawSocketEvent_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRawSocket_2 extends _i1.SmartFake implements _i2.RawSocket {
  _FakeRawSocket_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamSubscription_3<T> extends _i1.SmartFake
    implements _i3.StreamSubscription<T> {
  _FakeStreamSubscription_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFuture_4<T> extends _i1.SmartFake implements _i3.Future<T> {
  _FakeFuture_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Config].
///
/// See the documentation for Mockito's code generation for more information.
class MockConfig extends _i1.Mock implements _i4.Config {
  MockConfig() {
    _i1.throwOnMissingStub(this);
  }
}

/// A class which mocks [RawSocket].
///
/// See the documentation for Mockito's code generation for more information.
class MockRawSocket extends _i1.Mock implements _i2.RawSocket {
  MockRawSocket() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get readEventsEnabled => (super.noSuchMethod(
        Invocation.getter(#readEventsEnabled),
        returnValue: false,
      ) as bool);

  @override
  set readEventsEnabled(bool? _readEventsEnabled) => super.noSuchMethod(
        Invocation.setter(
          #readEventsEnabled,
          _readEventsEnabled,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get writeEventsEnabled => (super.noSuchMethod(
        Invocation.getter(#writeEventsEnabled),
        returnValue: false,
      ) as bool);

  @override
  set writeEventsEnabled(bool? _writeEventsEnabled) => super.noSuchMethod(
        Invocation.setter(
          #writeEventsEnabled,
          _writeEventsEnabled,
        ),
        returnValueForMissingStub: null,
      );

  @override
  int get port => (super.noSuchMethod(
        Invocation.getter(#port),
        returnValue: 0,
      ) as int);

  @override
  int get remotePort => (super.noSuchMethod(
        Invocation.getter(#remotePort),
        returnValue: 0,
      ) as int);

  @override
  _i2.InternetAddress get address => (super.noSuchMethod(
        Invocation.getter(#address),
        returnValue: _FakeInternetAddress_0(
          this,
          Invocation.getter(#address),
        ),
      ) as _i2.InternetAddress);

  @override
  _i2.InternetAddress get remoteAddress => (super.noSuchMethod(
        Invocation.getter(#remoteAddress),
        returnValue: _FakeInternetAddress_0(
          this,
          Invocation.getter(#remoteAddress),
        ),
      ) as _i2.InternetAddress);

  @override
  bool get isBroadcast => (super.noSuchMethod(
        Invocation.getter(#isBroadcast),
        returnValue: false,
      ) as bool);

  @override
  _i3.Future<int> get length => (super.noSuchMethod(
        Invocation.getter(#length),
        returnValue: _i3.Future<int>.value(0),
      ) as _i3.Future<int>);

  @override
  _i3.Future<bool> get isEmpty => (super.noSuchMethod(
        Invocation.getter(#isEmpty),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<_i2.RawSocketEvent> get first => (super.noSuchMethod(
        Invocation.getter(#first),
        returnValue: _i3.Future<_i2.RawSocketEvent>.value(_FakeRawSocketEvent_1(
          this,
          Invocation.getter(#first),
        )),
      ) as _i3.Future<_i2.RawSocketEvent>);

  @override
  _i3.Future<_i2.RawSocketEvent> get last => (super.noSuchMethod(
        Invocation.getter(#last),
        returnValue: _i3.Future<_i2.RawSocketEvent>.value(_FakeRawSocketEvent_1(
          this,
          Invocation.getter(#last),
        )),
      ) as _i3.Future<_i2.RawSocketEvent>);

  @override
  _i3.Future<_i2.RawSocketEvent> get single => (super.noSuchMethod(
        Invocation.getter(#single),
        returnValue: _i3.Future<_i2.RawSocketEvent>.value(_FakeRawSocketEvent_1(
          this,
          Invocation.getter(#single),
        )),
      ) as _i3.Future<_i2.RawSocketEvent>);

  @override
  int available() => (super.noSuchMethod(
        Invocation.method(
          #available,
          [],
        ),
        returnValue: 0,
      ) as int);

  @override
  int write(
    List<int>? buffer, [
    int? offset = 0,
    int? count,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #write,
          [
            buffer,
            offset,
            count,
          ],
        ),
        returnValue: 0,
      ) as int);

  @override
  int sendMessage(
    List<_i2.SocketControlMessage>? controlMessages,
    List<int>? data, [
    int? offset = 0,
    int? count,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendMessage,
          [
            controlMessages,
            data,
            offset,
            count,
          ],
        ),
        returnValue: 0,
      ) as int);

  @override
  _i3.Future<_i2.RawSocket> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i3.Future<_i2.RawSocket>.value(_FakeRawSocket_2(
          this,
          Invocation.method(
            #close,
            [],
          ),
        )),
      ) as _i3.Future<_i2.RawSocket>);

  @override
  void shutdown(_i2.SocketDirection? direction) => super.noSuchMethod(
        Invocation.method(
          #shutdown,
          [direction],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool setOption(
    _i2.SocketOption? option,
    bool? enabled,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setOption,
          [
            option,
            enabled,
          ],
        ),
        returnValue: false,
      ) as bool);

  @override
  _i5.Uint8List getRawOption(_i2.RawSocketOption? option) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRawOption,
          [option],
        ),
        returnValue: _i5.Uint8List(0),
      ) as _i5.Uint8List);

  @override
  void setRawOption(_i2.RawSocketOption? option) => super.noSuchMethod(
        Invocation.method(
          #setRawOption,
          [option],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.Stream<_i2.RawSocketEvent> asBroadcastStream({
    void Function(_i3.StreamSubscription<_i2.RawSocketEvent>)? onListen,
    void Function(_i3.StreamSubscription<_i2.RawSocketEvent>)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #asBroadcastStream,
          [],
          {
            #onListen: onListen,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);

  @override
  _i3.StreamSubscription<_i2.RawSocketEvent> listen(
    void Function(_i2.RawSocketEvent)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #listen,
          [onData],
          {
            #onError: onError,
            #onDone: onDone,
            #cancelOnError: cancelOnError,
          },
        ),
        returnValue: _FakeStreamSubscription_3<_i2.RawSocketEvent>(
          this,
          Invocation.method(
            #listen,
            [onData],
            {
              #onError: onError,
              #onDone: onDone,
              #cancelOnError: cancelOnError,
            },
          ),
        ),
      ) as _i3.StreamSubscription<_i2.RawSocketEvent>);

  @override
  _i3.Stream<_i2.RawSocketEvent> where(
          bool Function(_i2.RawSocketEvent)? test) =>
      (super.noSuchMethod(
        Invocation.method(
          #where,
          [test],
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);

  @override
  _i3.Stream<S> map<S>(S Function(_i2.RawSocketEvent)? convert) =>
      (super.noSuchMethod(
        Invocation.method(
          #map,
          [convert],
        ),
        returnValue: _i3.Stream<S>.empty(),
      ) as _i3.Stream<S>);

  @override
  _i3.Stream<E> asyncMap<E>(
          _i3.FutureOr<E> Function(_i2.RawSocketEvent)? convert) =>
      (super.noSuchMethod(
        Invocation.method(
          #asyncMap,
          [convert],
        ),
        returnValue: _i3.Stream<E>.empty(),
      ) as _i3.Stream<E>);

  @override
  _i3.Stream<E> asyncExpand<E>(
          _i3.Stream<E>? Function(_i2.RawSocketEvent)? convert) =>
      (super.noSuchMethod(
        Invocation.method(
          #asyncExpand,
          [convert],
        ),
        returnValue: _i3.Stream<E>.empty(),
      ) as _i3.Stream<E>);

  @override
  _i3.Stream<_i2.RawSocketEvent> handleError(
    Function? onError, {
    bool Function(dynamic)? test,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #handleError,
          [onError],
          {#test: test},
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);

  @override
  _i3.Stream<S> expand<S>(Iterable<S> Function(_i2.RawSocketEvent)? convert) =>
      (super.noSuchMethod(
        Invocation.method(
          #expand,
          [convert],
        ),
        returnValue: _i3.Stream<S>.empty(),
      ) as _i3.Stream<S>);

  @override
  _i3.Future<dynamic> pipe(
          _i3.StreamConsumer<_i2.RawSocketEvent>? streamConsumer) =>
      (super.noSuchMethod(
        Invocation.method(
          #pipe,
          [streamConsumer],
        ),
        returnValue: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);

  @override
  _i3.Stream<S> transform<S>(
          _i3.StreamTransformer<_i2.RawSocketEvent, S>? streamTransformer) =>
      (super.noSuchMethod(
        Invocation.method(
          #transform,
          [streamTransformer],
        ),
        returnValue: _i3.Stream<S>.empty(),
      ) as _i3.Stream<S>);

  @override
  _i3.Future<_i2.RawSocketEvent> reduce(
          _i2.RawSocketEvent Function(
            _i2.RawSocketEvent,
            _i2.RawSocketEvent,
          )? combine) =>
      (super.noSuchMethod(
        Invocation.method(
          #reduce,
          [combine],
        ),
        returnValue: _i3.Future<_i2.RawSocketEvent>.value(_FakeRawSocketEvent_1(
          this,
          Invocation.method(
            #reduce,
            [combine],
          ),
        )),
      ) as _i3.Future<_i2.RawSocketEvent>);

  @override
  _i3.Future<S> fold<S>(
    S? initialValue,
    S Function(
      S,
      _i2.RawSocketEvent,
    )? combine,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fold,
          [
            initialValue,
            combine,
          ],
        ),
        returnValue: _i6.ifNotNull(
              _i6.dummyValueOrNull<S>(
                this,
                Invocation.method(
                  #fold,
                  [
                    initialValue,
                    combine,
                  ],
                ),
              ),
              (S v) => _i3.Future<S>.value(v),
            ) ??
            _FakeFuture_4<S>(
              this,
              Invocation.method(
                #fold,
                [
                  initialValue,
                  combine,
                ],
              ),
            ),
      ) as _i3.Future<S>);

  @override
  _i3.Future<String> join([String? separator = r'']) => (super.noSuchMethod(
        Invocation.method(
          #join,
          [separator],
        ),
        returnValue: _i3.Future<String>.value(_i6.dummyValue<String>(
          this,
          Invocation.method(
            #join,
            [separator],
          ),
        )),
      ) as _i3.Future<String>);

  @override
  _i3.Future<bool> contains(Object? needle) => (super.noSuchMethod(
        Invocation.method(
          #contains,
          [needle],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<void> forEach(void Function(_i2.RawSocketEvent)? action) =>
      (super.noSuchMethod(
        Invocation.method(
          #forEach,
          [action],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<bool> every(bool Function(_i2.RawSocketEvent)? test) =>
      (super.noSuchMethod(
        Invocation.method(
          #every,
          [test],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<bool> any(bool Function(_i2.RawSocketEvent)? test) =>
      (super.noSuchMethod(
        Invocation.method(
          #any,
          [test],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Stream<R> cast<R>() => (super.noSuchMethod(
        Invocation.method(
          #cast,
          [],
        ),
        returnValue: _i3.Stream<R>.empty(),
      ) as _i3.Stream<R>);

  @override
  _i3.Future<List<_i2.RawSocketEvent>> toList() => (super.noSuchMethod(
        Invocation.method(
          #toList,
          [],
        ),
        returnValue:
            _i3.Future<List<_i2.RawSocketEvent>>.value(<_i2.RawSocketEvent>[]),
      ) as _i3.Future<List<_i2.RawSocketEvent>>);

  @override
  _i3.Future<Set<_i2.RawSocketEvent>> toSet() => (super.noSuchMethod(
        Invocation.method(
          #toSet,
          [],
        ),
        returnValue:
            _i3.Future<Set<_i2.RawSocketEvent>>.value(<_i2.RawSocketEvent>{}),
      ) as _i3.Future<Set<_i2.RawSocketEvent>>);

  @override
  _i3.Future<E> drain<E>([E? futureValue]) => (super.noSuchMethod(
        Invocation.method(
          #drain,
          [futureValue],
        ),
        returnValue: _i6.ifNotNull(
              _i6.dummyValueOrNull<E>(
                this,
                Invocation.method(
                  #drain,
                  [futureValue],
                ),
              ),
              (E v) => _i3.Future<E>.value(v),
            ) ??
            _FakeFuture_4<E>(
              this,
              Invocation.method(
                #drain,
                [futureValue],
              ),
            ),
      ) as _i3.Future<E>);

  @override
  _i3.Stream<_i2.RawSocketEvent> take(int? count) => (super.noSuchMethod(
        Invocation.method(
          #take,
          [count],
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);

  @override
  _i3.Stream<_i2.RawSocketEvent> takeWhile(
          bool Function(_i2.RawSocketEvent)? test) =>
      (super.noSuchMethod(
        Invocation.method(
          #takeWhile,
          [test],
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);

  @override
  _i3.Stream<_i2.RawSocketEvent> skip(int? count) => (super.noSuchMethod(
        Invocation.method(
          #skip,
          [count],
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);

  @override
  _i3.Stream<_i2.RawSocketEvent> skipWhile(
          bool Function(_i2.RawSocketEvent)? test) =>
      (super.noSuchMethod(
        Invocation.method(
          #skipWhile,
          [test],
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);

  @override
  _i3.Stream<_i2.RawSocketEvent> distinct(
          [bool Function(
            _i2.RawSocketEvent,
            _i2.RawSocketEvent,
          )? equals]) =>
      (super.noSuchMethod(
        Invocation.method(
          #distinct,
          [equals],
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);

  @override
  _i3.Future<_i2.RawSocketEvent> firstWhere(
    bool Function(_i2.RawSocketEvent)? test, {
    _i2.RawSocketEvent Function()? orElse,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #firstWhere,
          [test],
          {#orElse: orElse},
        ),
        returnValue: _i3.Future<_i2.RawSocketEvent>.value(_FakeRawSocketEvent_1(
          this,
          Invocation.method(
            #firstWhere,
            [test],
            {#orElse: orElse},
          ),
        )),
      ) as _i3.Future<_i2.RawSocketEvent>);

  @override
  _i3.Future<_i2.RawSocketEvent> lastWhere(
    bool Function(_i2.RawSocketEvent)? test, {
    _i2.RawSocketEvent Function()? orElse,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #lastWhere,
          [test],
          {#orElse: orElse},
        ),
        returnValue: _i3.Future<_i2.RawSocketEvent>.value(_FakeRawSocketEvent_1(
          this,
          Invocation.method(
            #lastWhere,
            [test],
            {#orElse: orElse},
          ),
        )),
      ) as _i3.Future<_i2.RawSocketEvent>);

  @override
  _i3.Future<_i2.RawSocketEvent> singleWhere(
    bool Function(_i2.RawSocketEvent)? test, {
    _i2.RawSocketEvent Function()? orElse,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #singleWhere,
          [test],
          {#orElse: orElse},
        ),
        returnValue: _i3.Future<_i2.RawSocketEvent>.value(_FakeRawSocketEvent_1(
          this,
          Invocation.method(
            #singleWhere,
            [test],
            {#orElse: orElse},
          ),
        )),
      ) as _i3.Future<_i2.RawSocketEvent>);

  @override
  _i3.Future<_i2.RawSocketEvent> elementAt(int? index) => (super.noSuchMethod(
        Invocation.method(
          #elementAt,
          [index],
        ),
        returnValue: _i3.Future<_i2.RawSocketEvent>.value(_FakeRawSocketEvent_1(
          this,
          Invocation.method(
            #elementAt,
            [index],
          ),
        )),
      ) as _i3.Future<_i2.RawSocketEvent>);

  @override
  _i3.Stream<_i2.RawSocketEvent> timeout(
    Duration? timeLimit, {
    void Function(_i3.EventSink<_i2.RawSocketEvent>)? onTimeout,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #timeout,
          [timeLimit],
          {#onTimeout: onTimeout},
        ),
        returnValue: _i3.Stream<_i2.RawSocketEvent>.empty(),
      ) as _i3.Stream<_i2.RawSocketEvent>);
}
