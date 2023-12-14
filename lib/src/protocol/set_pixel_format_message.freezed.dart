// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_pixel_format_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferSetPixelFormatMessage {
  RemoteFrameBufferPixelFormat get pixelFormat =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferSetPixelFormatMessageCopyWith<
          RemoteFrameBufferSetPixelFormatMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferSetPixelFormatMessageCopyWith<$Res> {
  factory $RemoteFrameBufferSetPixelFormatMessageCopyWith(
          RemoteFrameBufferSetPixelFormatMessage value,
          $Res Function(RemoteFrameBufferSetPixelFormatMessage) then) =
      _$RemoteFrameBufferSetPixelFormatMessageCopyWithImpl<$Res,
          RemoteFrameBufferSetPixelFormatMessage>;
  @useResult
  $Res call({RemoteFrameBufferPixelFormat pixelFormat});

  $RemoteFrameBufferPixelFormatCopyWith<$Res> get pixelFormat;
}

/// @nodoc
class _$RemoteFrameBufferSetPixelFormatMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferSetPixelFormatMessage>
    implements $RemoteFrameBufferSetPixelFormatMessageCopyWith<$Res> {
  _$RemoteFrameBufferSetPixelFormatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixelFormat = null,
  }) {
    return _then(_value.copyWith(
      pixelFormat: null == pixelFormat
          ? _value.pixelFormat
          : pixelFormat // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferPixelFormat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteFrameBufferPixelFormatCopyWith<$Res> get pixelFormat {
    return $RemoteFrameBufferPixelFormatCopyWith<$Res>(_value.pixelFormat,
        (value) {
      return _then(_value.copyWith(pixelFormat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferSetPixelFormatMessageImplCopyWith<$Res>
    implements $RemoteFrameBufferSetPixelFormatMessageCopyWith<$Res> {
  factory _$$RemoteFrameBufferSetPixelFormatMessageImplCopyWith(
          _$RemoteFrameBufferSetPixelFormatMessageImpl value,
          $Res Function(_$RemoteFrameBufferSetPixelFormatMessageImpl) then) =
      __$$RemoteFrameBufferSetPixelFormatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RemoteFrameBufferPixelFormat pixelFormat});

  @override
  $RemoteFrameBufferPixelFormatCopyWith<$Res> get pixelFormat;
}

/// @nodoc
class __$$RemoteFrameBufferSetPixelFormatMessageImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferSetPixelFormatMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferSetPixelFormatMessageImpl>
    implements _$$RemoteFrameBufferSetPixelFormatMessageImplCopyWith<$Res> {
  __$$RemoteFrameBufferSetPixelFormatMessageImplCopyWithImpl(
      _$RemoteFrameBufferSetPixelFormatMessageImpl _value,
      $Res Function(_$RemoteFrameBufferSetPixelFormatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixelFormat = null,
  }) {
    return _then(_$RemoteFrameBufferSetPixelFormatMessageImpl(
      pixelFormat: null == pixelFormat
          ? _value.pixelFormat
          : pixelFormat // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferPixelFormat,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferSetPixelFormatMessageImpl
    extends _RemoteFrameBufferSetPixelFormatMessage {
  const _$RemoteFrameBufferSetPixelFormatMessageImpl(
      {required this.pixelFormat})
      : super._();

  @override
  final RemoteFrameBufferPixelFormat pixelFormat;

  @override
  String toString() {
    return 'RemoteFrameBufferSetPixelFormatMessage(pixelFormat: $pixelFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferSetPixelFormatMessageImpl &&
            (identical(other.pixelFormat, pixelFormat) ||
                other.pixelFormat == pixelFormat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pixelFormat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferSetPixelFormatMessageImplCopyWith<
          _$RemoteFrameBufferSetPixelFormatMessageImpl>
      get copyWith =>
          __$$RemoteFrameBufferSetPixelFormatMessageImplCopyWithImpl<
              _$RemoteFrameBufferSetPixelFormatMessageImpl>(this, _$identity);
}

abstract class _RemoteFrameBufferSetPixelFormatMessage
    extends RemoteFrameBufferSetPixelFormatMessage {
  const factory _RemoteFrameBufferSetPixelFormatMessage(
          {required final RemoteFrameBufferPixelFormat pixelFormat}) =
      _$RemoteFrameBufferSetPixelFormatMessageImpl;
  const _RemoteFrameBufferSetPixelFormatMessage._() : super._();

  @override
  RemoteFrameBufferPixelFormat get pixelFormat;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferSetPixelFormatMessageImplCopyWith<
          _$RemoteFrameBufferSetPixelFormatMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
