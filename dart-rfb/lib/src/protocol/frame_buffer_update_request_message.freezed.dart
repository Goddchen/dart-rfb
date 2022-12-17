// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'frame_buffer_update_request_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferFrameBufferUpdateRequestMessage {
  int get height => throw _privateConstructorUsedError;
  bool get incremental => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith<
          RemoteFrameBufferFrameBufferUpdateRequestMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith<$Res> {
  factory $RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith(
          RemoteFrameBufferFrameBufferUpdateRequestMessage value,
          $Res Function(RemoteFrameBufferFrameBufferUpdateRequestMessage)
              then) =
      _$RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWithImpl<$Res,
          RemoteFrameBufferFrameBufferUpdateRequestMessage>;
  @useResult
  $Res call({int height, bool incremental, int width, int x, int y});
}

/// @nodoc
class _$RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferFrameBufferUpdateRequestMessage>
    implements $RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith<$Res> {
  _$RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? incremental = null,
    Object? width = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      incremental: null == incremental
          ? _value.incremental
          : incremental // ignore: cast_nullable_to_non_nullable
              as bool,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith<
        $Res>
    implements $RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith(
          _$_RemoteFrameBufferFrameBufferUpdateRequestMessage value,
          $Res Function(_$_RemoteFrameBufferFrameBufferUpdateRequestMessage)
              then) =
      __$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, bool incremental, int width, int x, int y});
}

/// @nodoc
class __$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferFrameBufferUpdateRequestMessage>
    implements
        _$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWithImpl(
      _$_RemoteFrameBufferFrameBufferUpdateRequestMessage _value,
      $Res Function(_$_RemoteFrameBufferFrameBufferUpdateRequestMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? incremental = null,
    Object? width = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_RemoteFrameBufferFrameBufferUpdateRequestMessage(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      incremental: null == incremental
          ? _value.incremental
          : incremental // ignore: cast_nullable_to_non_nullable
              as bool,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferFrameBufferUpdateRequestMessage
    implements _RemoteFrameBufferFrameBufferUpdateRequestMessage {
  const _$_RemoteFrameBufferFrameBufferUpdateRequestMessage(
      {required this.height,
      required this.incremental,
      required this.width,
      required this.x,
      required this.y});

  @override
  final int height;
  @override
  final bool incremental;
  @override
  final int width;
  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'RemoteFrameBufferFrameBufferUpdateRequestMessage(height: $height, incremental: $incremental, width: $width, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferFrameBufferUpdateRequestMessage &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.incremental, incremental) ||
                other.incremental == incremental) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, height, incremental, width, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith<
          _$_RemoteFrameBufferFrameBufferUpdateRequestMessage>
      get copyWith =>
          __$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWithImpl<
                  _$_RemoteFrameBufferFrameBufferUpdateRequestMessage>(
              this, _$identity);
}

abstract class _RemoteFrameBufferFrameBufferUpdateRequestMessage
    implements RemoteFrameBufferFrameBufferUpdateRequestMessage {
  const factory _RemoteFrameBufferFrameBufferUpdateRequestMessage(
          {required final int height,
          required final bool incremental,
          required final int width,
          required final int x,
          required final int y}) =
      _$_RemoteFrameBufferFrameBufferUpdateRequestMessage;

  @override
  int get height;
  @override
  bool get incremental;
  @override
  int get width;
  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferFrameBufferUpdateRequestMessageCopyWith<
          _$_RemoteFrameBufferFrameBufferUpdateRequestMessage>
      get copyWith => throw _privateConstructorUsedError;
}
