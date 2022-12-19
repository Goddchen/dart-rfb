// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Config {
  int get frameBufferHeight => throw _privateConstructorUsedError;
  int get frameBufferWidth => throw _privateConstructorUsedError;
  RemoteFrameBufferPixelFormat get pixelFormat =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigCopyWith<Config> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) then) =
      _$ConfigCopyWithImpl<$Res, Config>;
  @useResult
  $Res call(
      {int frameBufferHeight,
      int frameBufferWidth,
      RemoteFrameBufferPixelFormat pixelFormat});

  $RemoteFrameBufferPixelFormatCopyWith<$Res> get pixelFormat;
}

/// @nodoc
class _$ConfigCopyWithImpl<$Res, $Val extends Config>
    implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameBufferHeight = null,
    Object? frameBufferWidth = null,
    Object? pixelFormat = null,
  }) {
    return _then(_value.copyWith(
      frameBufferHeight: null == frameBufferHeight
          ? _value.frameBufferHeight
          : frameBufferHeight // ignore: cast_nullable_to_non_nullable
              as int,
      frameBufferWidth: null == frameBufferWidth
          ? _value.frameBufferWidth
          : frameBufferWidth // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_ConfigCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$$_ConfigCopyWith(_$_Config value, $Res Function(_$_Config) then) =
      __$$_ConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int frameBufferHeight,
      int frameBufferWidth,
      RemoteFrameBufferPixelFormat pixelFormat});

  @override
  $RemoteFrameBufferPixelFormatCopyWith<$Res> get pixelFormat;
}

/// @nodoc
class __$$_ConfigCopyWithImpl<$Res>
    extends _$ConfigCopyWithImpl<$Res, _$_Config>
    implements _$$_ConfigCopyWith<$Res> {
  __$$_ConfigCopyWithImpl(_$_Config _value, $Res Function(_$_Config) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameBufferHeight = null,
    Object? frameBufferWidth = null,
    Object? pixelFormat = null,
  }) {
    return _then(_$_Config(
      frameBufferHeight: null == frameBufferHeight
          ? _value.frameBufferHeight
          : frameBufferHeight // ignore: cast_nullable_to_non_nullable
              as int,
      frameBufferWidth: null == frameBufferWidth
          ? _value.frameBufferWidth
          : frameBufferWidth // ignore: cast_nullable_to_non_nullable
              as int,
      pixelFormat: null == pixelFormat
          ? _value.pixelFormat
          : pixelFormat // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferPixelFormat,
    ));
  }
}

/// @nodoc

class _$_Config implements _Config {
  const _$_Config(
      {required this.frameBufferHeight,
      required this.frameBufferWidth,
      required this.pixelFormat});

  @override
  final int frameBufferHeight;
  @override
  final int frameBufferWidth;
  @override
  final RemoteFrameBufferPixelFormat pixelFormat;

  @override
  String toString() {
    return 'Config(frameBufferHeight: $frameBufferHeight, frameBufferWidth: $frameBufferWidth, pixelFormat: $pixelFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Config &&
            (identical(other.frameBufferHeight, frameBufferHeight) ||
                other.frameBufferHeight == frameBufferHeight) &&
            (identical(other.frameBufferWidth, frameBufferWidth) ||
                other.frameBufferWidth == frameBufferWidth) &&
            (identical(other.pixelFormat, pixelFormat) ||
                other.pixelFormat == pixelFormat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, frameBufferHeight, frameBufferWidth, pixelFormat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigCopyWith<_$_Config> get copyWith =>
      __$$_ConfigCopyWithImpl<_$_Config>(this, _$identity);
}

abstract class _Config implements Config {
  const factory _Config(
      {required final int frameBufferHeight,
      required final int frameBufferWidth,
      required final RemoteFrameBufferPixelFormat pixelFormat}) = _$_Config;

  @override
  int get frameBufferHeight;
  @override
  int get frameBufferWidth;
  @override
  RemoteFrameBufferPixelFormat get pixelFormat;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigCopyWith<_$_Config> get copyWith =>
      throw _privateConstructorUsedError;
}
