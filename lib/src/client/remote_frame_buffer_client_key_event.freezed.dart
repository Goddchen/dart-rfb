// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_frame_buffer_client_key_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferClientKeyEvent {
  bool get down => throw _privateConstructorUsedError;
  int get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferClientKeyEventCopyWith<RemoteFrameBufferClientKeyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferClientKeyEventCopyWith<$Res> {
  factory $RemoteFrameBufferClientKeyEventCopyWith(
          RemoteFrameBufferClientKeyEvent value,
          $Res Function(RemoteFrameBufferClientKeyEvent) then) =
      _$RemoteFrameBufferClientKeyEventCopyWithImpl<$Res,
          RemoteFrameBufferClientKeyEvent>;
  @useResult
  $Res call({bool down, int key});
}

/// @nodoc
class _$RemoteFrameBufferClientKeyEventCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferClientKeyEvent>
    implements $RemoteFrameBufferClientKeyEventCopyWith<$Res> {
  _$RemoteFrameBufferClientKeyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? down = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      down: null == down
          ? _value.down
          : down // ignore: cast_nullable_to_non_nullable
              as bool,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferClientKeyEventImplCopyWith<$Res>
    implements $RemoteFrameBufferClientKeyEventCopyWith<$Res> {
  factory _$$RemoteFrameBufferClientKeyEventImplCopyWith(
          _$RemoteFrameBufferClientKeyEventImpl value,
          $Res Function(_$RemoteFrameBufferClientKeyEventImpl) then) =
      __$$RemoteFrameBufferClientKeyEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool down, int key});
}

/// @nodoc
class __$$RemoteFrameBufferClientKeyEventImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferClientKeyEventCopyWithImpl<$Res,
        _$RemoteFrameBufferClientKeyEventImpl>
    implements _$$RemoteFrameBufferClientKeyEventImplCopyWith<$Res> {
  __$$RemoteFrameBufferClientKeyEventImplCopyWithImpl(
      _$RemoteFrameBufferClientKeyEventImpl _value,
      $Res Function(_$RemoteFrameBufferClientKeyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? down = null,
    Object? key = null,
  }) {
    return _then(_$RemoteFrameBufferClientKeyEventImpl(
      down: null == down
          ? _value.down
          : down // ignore: cast_nullable_to_non_nullable
              as bool,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferClientKeyEventImpl
    implements _RemoteFrameBufferClientKeyEvent {
  const _$RemoteFrameBufferClientKeyEventImpl(
      {required this.down, required this.key});

  @override
  final bool down;
  @override
  final int key;

  @override
  String toString() {
    return 'RemoteFrameBufferClientKeyEvent(down: $down, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferClientKeyEventImpl &&
            (identical(other.down, down) || other.down == down) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, down, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferClientKeyEventImplCopyWith<
          _$RemoteFrameBufferClientKeyEventImpl>
      get copyWith => __$$RemoteFrameBufferClientKeyEventImplCopyWithImpl<
          _$RemoteFrameBufferClientKeyEventImpl>(this, _$identity);
}

abstract class _RemoteFrameBufferClientKeyEvent
    implements RemoteFrameBufferClientKeyEvent {
  const factory _RemoteFrameBufferClientKeyEvent(
      {required final bool down,
      required final int key}) = _$RemoteFrameBufferClientKeyEventImpl;

  @override
  bool get down;
  @override
  int get key;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferClientKeyEventImplCopyWith<
          _$RemoteFrameBufferClientKeyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
