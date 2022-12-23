// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_event_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferKeyEventMessage {
  bool get down => throw _privateConstructorUsedError;
  int get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferKeyEventMessageCopyWith<RemoteFrameBufferKeyEventMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferKeyEventMessageCopyWith<$Res> {
  factory $RemoteFrameBufferKeyEventMessageCopyWith(
          RemoteFrameBufferKeyEventMessage value,
          $Res Function(RemoteFrameBufferKeyEventMessage) then) =
      _$RemoteFrameBufferKeyEventMessageCopyWithImpl<$Res,
          RemoteFrameBufferKeyEventMessage>;
  @useResult
  $Res call({bool down, int key});
}

/// @nodoc
class _$RemoteFrameBufferKeyEventMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferKeyEventMessage>
    implements $RemoteFrameBufferKeyEventMessageCopyWith<$Res> {
  _$RemoteFrameBufferKeyEventMessageCopyWithImpl(this._value, this._then);

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
abstract class _$$_RemoteFrameBufferKeyEventMessageCopyWith<$Res>
    implements $RemoteFrameBufferKeyEventMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferKeyEventMessageCopyWith(
          _$_RemoteFrameBufferKeyEventMessage value,
          $Res Function(_$_RemoteFrameBufferKeyEventMessage) then) =
      __$$_RemoteFrameBufferKeyEventMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool down, int key});
}

/// @nodoc
class __$$_RemoteFrameBufferKeyEventMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferKeyEventMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferKeyEventMessage>
    implements _$$_RemoteFrameBufferKeyEventMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferKeyEventMessageCopyWithImpl(
      _$_RemoteFrameBufferKeyEventMessage _value,
      $Res Function(_$_RemoteFrameBufferKeyEventMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? down = null,
    Object? key = null,
  }) {
    return _then(_$_RemoteFrameBufferKeyEventMessage(
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

class _$_RemoteFrameBufferKeyEventMessage
    extends _RemoteFrameBufferKeyEventMessage {
  const _$_RemoteFrameBufferKeyEventMessage(
      {required this.down, required this.key})
      : super._();

  @override
  final bool down;
  @override
  final int key;

  @override
  String toString() {
    return 'RemoteFrameBufferKeyEventMessage(down: $down, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferKeyEventMessage &&
            (identical(other.down, down) || other.down == down) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, down, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferKeyEventMessageCopyWith<
          _$_RemoteFrameBufferKeyEventMessage>
      get copyWith => __$$_RemoteFrameBufferKeyEventMessageCopyWithImpl<
          _$_RemoteFrameBufferKeyEventMessage>(this, _$identity);
}

abstract class _RemoteFrameBufferKeyEventMessage
    extends RemoteFrameBufferKeyEventMessage {
  const factory _RemoteFrameBufferKeyEventMessage(
      {required final bool down,
      required final int key}) = _$_RemoteFrameBufferKeyEventMessage;
  const _RemoteFrameBufferKeyEventMessage._() : super._();

  @override
  bool get down;
  @override
  int get key;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferKeyEventMessageCopyWith<
          _$_RemoteFrameBufferKeyEventMessage>
      get copyWith => throw _privateConstructorUsedError;
}
