// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_init_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferServerInitMessage {
  int get frameBufferHeightInPixels => throw _privateConstructorUsedError;
  int get frameBufferWidthInPixels => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  RemoteFrameBufferPixelFormat get serverPixelFormat =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferServerInitMessageCopyWith<
          RemoteFrameBufferServerInitMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferServerInitMessageCopyWith<$Res> {
  factory $RemoteFrameBufferServerInitMessageCopyWith(
          RemoteFrameBufferServerInitMessage value,
          $Res Function(RemoteFrameBufferServerInitMessage) then) =
      _$RemoteFrameBufferServerInitMessageCopyWithImpl<$Res,
          RemoteFrameBufferServerInitMessage>;
  @useResult
  $Res call(
      {int frameBufferHeightInPixels,
      int frameBufferWidthInPixels,
      String name,
      RemoteFrameBufferPixelFormat serverPixelFormat});

  $RemoteFrameBufferPixelFormatCopyWith<$Res> get serverPixelFormat;
}

/// @nodoc
class _$RemoteFrameBufferServerInitMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferServerInitMessage>
    implements $RemoteFrameBufferServerInitMessageCopyWith<$Res> {
  _$RemoteFrameBufferServerInitMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameBufferHeightInPixels = null,
    Object? frameBufferWidthInPixels = null,
    Object? name = null,
    Object? serverPixelFormat = null,
  }) {
    return _then(_value.copyWith(
      frameBufferHeightInPixels: null == frameBufferHeightInPixels
          ? _value.frameBufferHeightInPixels
          : frameBufferHeightInPixels // ignore: cast_nullable_to_non_nullable
              as int,
      frameBufferWidthInPixels: null == frameBufferWidthInPixels
          ? _value.frameBufferWidthInPixels
          : frameBufferWidthInPixels // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serverPixelFormat: null == serverPixelFormat
          ? _value.serverPixelFormat
          : serverPixelFormat // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferPixelFormat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteFrameBufferPixelFormatCopyWith<$Res> get serverPixelFormat {
    return $RemoteFrameBufferPixelFormatCopyWith<$Res>(_value.serverPixelFormat,
        (value) {
      return _then(_value.copyWith(serverPixelFormat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferServerInitMessageImplCopyWith<$Res>
    implements $RemoteFrameBufferServerInitMessageCopyWith<$Res> {
  factory _$$RemoteFrameBufferServerInitMessageImplCopyWith(
          _$RemoteFrameBufferServerInitMessageImpl value,
          $Res Function(_$RemoteFrameBufferServerInitMessageImpl) then) =
      __$$RemoteFrameBufferServerInitMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int frameBufferHeightInPixels,
      int frameBufferWidthInPixels,
      String name,
      RemoteFrameBufferPixelFormat serverPixelFormat});

  @override
  $RemoteFrameBufferPixelFormatCopyWith<$Res> get serverPixelFormat;
}

/// @nodoc
class __$$RemoteFrameBufferServerInitMessageImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferServerInitMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferServerInitMessageImpl>
    implements _$$RemoteFrameBufferServerInitMessageImplCopyWith<$Res> {
  __$$RemoteFrameBufferServerInitMessageImplCopyWithImpl(
      _$RemoteFrameBufferServerInitMessageImpl _value,
      $Res Function(_$RemoteFrameBufferServerInitMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameBufferHeightInPixels = null,
    Object? frameBufferWidthInPixels = null,
    Object? name = null,
    Object? serverPixelFormat = null,
  }) {
    return _then(_$RemoteFrameBufferServerInitMessageImpl(
      frameBufferHeightInPixels: null == frameBufferHeightInPixels
          ? _value.frameBufferHeightInPixels
          : frameBufferHeightInPixels // ignore: cast_nullable_to_non_nullable
              as int,
      frameBufferWidthInPixels: null == frameBufferWidthInPixels
          ? _value.frameBufferWidthInPixels
          : frameBufferWidthInPixels // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serverPixelFormat: null == serverPixelFormat
          ? _value.serverPixelFormat
          : serverPixelFormat // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferPixelFormat,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferServerInitMessageImpl
    extends _RemoteFrameBufferServerInitMessage {
  const _$RemoteFrameBufferServerInitMessageImpl(
      {required this.frameBufferHeightInPixels,
      required this.frameBufferWidthInPixels,
      required this.name,
      required this.serverPixelFormat})
      : super._();

  @override
  final int frameBufferHeightInPixels;
  @override
  final int frameBufferWidthInPixels;
  @override
  final String name;
  @override
  final RemoteFrameBufferPixelFormat serverPixelFormat;

  @override
  String toString() {
    return 'RemoteFrameBufferServerInitMessage(frameBufferHeightInPixels: $frameBufferHeightInPixels, frameBufferWidthInPixels: $frameBufferWidthInPixels, name: $name, serverPixelFormat: $serverPixelFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferServerInitMessageImpl &&
            (identical(other.frameBufferHeightInPixels,
                    frameBufferHeightInPixels) ||
                other.frameBufferHeightInPixels == frameBufferHeightInPixels) &&
            (identical(
                    other.frameBufferWidthInPixels, frameBufferWidthInPixels) ||
                other.frameBufferWidthInPixels == frameBufferWidthInPixels) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serverPixelFormat, serverPixelFormat) ||
                other.serverPixelFormat == serverPixelFormat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frameBufferHeightInPixels,
      frameBufferWidthInPixels, name, serverPixelFormat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferServerInitMessageImplCopyWith<
          _$RemoteFrameBufferServerInitMessageImpl>
      get copyWith => __$$RemoteFrameBufferServerInitMessageImplCopyWithImpl<
          _$RemoteFrameBufferServerInitMessageImpl>(this, _$identity);
}

abstract class _RemoteFrameBufferServerInitMessage
    extends RemoteFrameBufferServerInitMessage {
  const factory _RemoteFrameBufferServerInitMessage(
          {required final int frameBufferHeightInPixels,
          required final int frameBufferWidthInPixels,
          required final String name,
          required final RemoteFrameBufferPixelFormat serverPixelFormat}) =
      _$RemoteFrameBufferServerInitMessageImpl;
  const _RemoteFrameBufferServerInitMessage._() : super._();

  @override
  int get frameBufferHeightInPixels;
  @override
  int get frameBufferWidthInPixels;
  @override
  String get name;
  @override
  RemoteFrameBufferPixelFormat get serverPixelFormat;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferServerInitMessageImplCopyWith<
          _$RemoteFrameBufferServerInitMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
