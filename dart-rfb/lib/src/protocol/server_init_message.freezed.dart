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
  RemoteFrameBufferServerInitMessagePixelFormat get serverPixelFormat =>
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
      RemoteFrameBufferServerInitMessagePixelFormat serverPixelFormat});

  $RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res>
      get serverPixelFormat;
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
              as RemoteFrameBufferServerInitMessagePixelFormat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res>
      get serverPixelFormat {
    return $RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res>(
        _value.serverPixelFormat, (value) {
      return _then(_value.copyWith(serverPixelFormat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferServerInitMessageCopyWith<$Res>
    implements $RemoteFrameBufferServerInitMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferServerInitMessageCopyWith(
          _$_RemoteFrameBufferServerInitMessage value,
          $Res Function(_$_RemoteFrameBufferServerInitMessage) then) =
      __$$_RemoteFrameBufferServerInitMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int frameBufferHeightInPixels,
      int frameBufferWidthInPixels,
      String name,
      RemoteFrameBufferServerInitMessagePixelFormat serverPixelFormat});

  @override
  $RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res>
      get serverPixelFormat;
}

/// @nodoc
class __$$_RemoteFrameBufferServerInitMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferServerInitMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferServerInitMessage>
    implements _$$_RemoteFrameBufferServerInitMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferServerInitMessageCopyWithImpl(
      _$_RemoteFrameBufferServerInitMessage _value,
      $Res Function(_$_RemoteFrameBufferServerInitMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameBufferHeightInPixels = null,
    Object? frameBufferWidthInPixels = null,
    Object? name = null,
    Object? serverPixelFormat = null,
  }) {
    return _then(_$_RemoteFrameBufferServerInitMessage(
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
              as RemoteFrameBufferServerInitMessagePixelFormat,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferServerInitMessage
    extends _RemoteFrameBufferServerInitMessage {
  const _$_RemoteFrameBufferServerInitMessage(
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
  final RemoteFrameBufferServerInitMessagePixelFormat serverPixelFormat;

  @override
  String toString() {
    return 'RemoteFrameBufferServerInitMessage(frameBufferHeightInPixels: $frameBufferHeightInPixels, frameBufferWidthInPixels: $frameBufferWidthInPixels, name: $name, serverPixelFormat: $serverPixelFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferServerInitMessage &&
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
  _$$_RemoteFrameBufferServerInitMessageCopyWith<
          _$_RemoteFrameBufferServerInitMessage>
      get copyWith => __$$_RemoteFrameBufferServerInitMessageCopyWithImpl<
          _$_RemoteFrameBufferServerInitMessage>(this, _$identity);
}

abstract class _RemoteFrameBufferServerInitMessage
    extends RemoteFrameBufferServerInitMessage {
  const factory _RemoteFrameBufferServerInitMessage(
      {required final int frameBufferHeightInPixels,
      required final int frameBufferWidthInPixels,
      required final String name,
      required final RemoteFrameBufferServerInitMessagePixelFormat
          serverPixelFormat}) = _$_RemoteFrameBufferServerInitMessage;
  const _RemoteFrameBufferServerInitMessage._() : super._();

  @override
  int get frameBufferHeightInPixels;
  @override
  int get frameBufferWidthInPixels;
  @override
  String get name;
  @override
  RemoteFrameBufferServerInitMessagePixelFormat get serverPixelFormat;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferServerInitMessageCopyWith<
          _$_RemoteFrameBufferServerInitMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferServerInitMessagePixelFormat {
  int get bitsPerPixel => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;
  bool get bigEndian => throw _privateConstructorUsedError;
  bool get trueColor => throw _privateConstructorUsedError;
  int get redMax => throw _privateConstructorUsedError;
  int get greenMax => throw _privateConstructorUsedError;
  int get blueMax => throw _privateConstructorUsedError;
  int get redShift => throw _privateConstructorUsedError;
  int get greenShift => throw _privateConstructorUsedError;
  int get blueShift => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferServerInitMessagePixelFormatCopyWith<
          RemoteFrameBufferServerInitMessagePixelFormat>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res> {
  factory $RemoteFrameBufferServerInitMessagePixelFormatCopyWith(
          RemoteFrameBufferServerInitMessagePixelFormat value,
          $Res Function(RemoteFrameBufferServerInitMessagePixelFormat) then) =
      _$RemoteFrameBufferServerInitMessagePixelFormatCopyWithImpl<$Res,
          RemoteFrameBufferServerInitMessagePixelFormat>;
  @useResult
  $Res call(
      {int bitsPerPixel,
      int depth,
      bool bigEndian,
      bool trueColor,
      int redMax,
      int greenMax,
      int blueMax,
      int redShift,
      int greenShift,
      int blueShift});
}

/// @nodoc
class _$RemoteFrameBufferServerInitMessagePixelFormatCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferServerInitMessagePixelFormat>
    implements $RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res> {
  _$RemoteFrameBufferServerInitMessagePixelFormatCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitsPerPixel = null,
    Object? depth = null,
    Object? bigEndian = null,
    Object? trueColor = null,
    Object? redMax = null,
    Object? greenMax = null,
    Object? blueMax = null,
    Object? redShift = null,
    Object? greenShift = null,
    Object? blueShift = null,
  }) {
    return _then(_value.copyWith(
      bitsPerPixel: null == bitsPerPixel
          ? _value.bitsPerPixel
          : bitsPerPixel // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      bigEndian: null == bigEndian
          ? _value.bigEndian
          : bigEndian // ignore: cast_nullable_to_non_nullable
              as bool,
      trueColor: null == trueColor
          ? _value.trueColor
          : trueColor // ignore: cast_nullable_to_non_nullable
              as bool,
      redMax: null == redMax
          ? _value.redMax
          : redMax // ignore: cast_nullable_to_non_nullable
              as int,
      greenMax: null == greenMax
          ? _value.greenMax
          : greenMax // ignore: cast_nullable_to_non_nullable
              as int,
      blueMax: null == blueMax
          ? _value.blueMax
          : blueMax // ignore: cast_nullable_to_non_nullable
              as int,
      redShift: null == redShift
          ? _value.redShift
          : redShift // ignore: cast_nullable_to_non_nullable
              as int,
      greenShift: null == greenShift
          ? _value.greenShift
          : greenShift // ignore: cast_nullable_to_non_nullable
              as int,
      blueShift: null == blueShift
          ? _value.blueShift
          : blueShift // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res>
    implements $RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res> {
  factory _$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWith(
          _$_RemoteFrameBufferServerInitMessagePixelFormat value,
          $Res Function(_$_RemoteFrameBufferServerInitMessagePixelFormat)
              then) =
      __$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bitsPerPixel,
      int depth,
      bool bigEndian,
      bool trueColor,
      int redMax,
      int greenMax,
      int blueMax,
      int redShift,
      int greenShift,
      int blueShift});
}

/// @nodoc
class __$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWithImpl<$Res>
    extends _$RemoteFrameBufferServerInitMessagePixelFormatCopyWithImpl<$Res,
        _$_RemoteFrameBufferServerInitMessagePixelFormat>
    implements _$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWith<$Res> {
  __$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWithImpl(
      _$_RemoteFrameBufferServerInitMessagePixelFormat _value,
      $Res Function(_$_RemoteFrameBufferServerInitMessagePixelFormat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitsPerPixel = null,
    Object? depth = null,
    Object? bigEndian = null,
    Object? trueColor = null,
    Object? redMax = null,
    Object? greenMax = null,
    Object? blueMax = null,
    Object? redShift = null,
    Object? greenShift = null,
    Object? blueShift = null,
  }) {
    return _then(_$_RemoteFrameBufferServerInitMessagePixelFormat(
      bitsPerPixel: null == bitsPerPixel
          ? _value.bitsPerPixel
          : bitsPerPixel // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      bigEndian: null == bigEndian
          ? _value.bigEndian
          : bigEndian // ignore: cast_nullable_to_non_nullable
              as bool,
      trueColor: null == trueColor
          ? _value.trueColor
          : trueColor // ignore: cast_nullable_to_non_nullable
              as bool,
      redMax: null == redMax
          ? _value.redMax
          : redMax // ignore: cast_nullable_to_non_nullable
              as int,
      greenMax: null == greenMax
          ? _value.greenMax
          : greenMax // ignore: cast_nullable_to_non_nullable
              as int,
      blueMax: null == blueMax
          ? _value.blueMax
          : blueMax // ignore: cast_nullable_to_non_nullable
              as int,
      redShift: null == redShift
          ? _value.redShift
          : redShift // ignore: cast_nullable_to_non_nullable
              as int,
      greenShift: null == greenShift
          ? _value.greenShift
          : greenShift // ignore: cast_nullable_to_non_nullable
              as int,
      blueShift: null == blueShift
          ? _value.blueShift
          : blueShift // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferServerInitMessagePixelFormat
    extends _RemoteFrameBufferServerInitMessagePixelFormat {
  const _$_RemoteFrameBufferServerInitMessagePixelFormat(
      {required this.bitsPerPixel,
      required this.depth,
      required this.bigEndian,
      required this.trueColor,
      required this.redMax,
      required this.greenMax,
      required this.blueMax,
      required this.redShift,
      required this.greenShift,
      required this.blueShift})
      : super._();

  @override
  final int bitsPerPixel;
  @override
  final int depth;
  @override
  final bool bigEndian;
  @override
  final bool trueColor;
  @override
  final int redMax;
  @override
  final int greenMax;
  @override
  final int blueMax;
  @override
  final int redShift;
  @override
  final int greenShift;
  @override
  final int blueShift;

  @override
  String toString() {
    return 'RemoteFrameBufferServerInitMessagePixelFormat(bitsPerPixel: $bitsPerPixel, depth: $depth, bigEndian: $bigEndian, trueColor: $trueColor, redMax: $redMax, greenMax: $greenMax, blueMax: $blueMax, redShift: $redShift, greenShift: $greenShift, blueShift: $blueShift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferServerInitMessagePixelFormat &&
            (identical(other.bitsPerPixel, bitsPerPixel) ||
                other.bitsPerPixel == bitsPerPixel) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.bigEndian, bigEndian) ||
                other.bigEndian == bigEndian) &&
            (identical(other.trueColor, trueColor) ||
                other.trueColor == trueColor) &&
            (identical(other.redMax, redMax) || other.redMax == redMax) &&
            (identical(other.greenMax, greenMax) ||
                other.greenMax == greenMax) &&
            (identical(other.blueMax, blueMax) || other.blueMax == blueMax) &&
            (identical(other.redShift, redShift) ||
                other.redShift == redShift) &&
            (identical(other.greenShift, greenShift) ||
                other.greenShift == greenShift) &&
            (identical(other.blueShift, blueShift) ||
                other.blueShift == blueShift));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bitsPerPixel, depth, bigEndian,
      trueColor, redMax, greenMax, blueMax, redShift, greenShift, blueShift);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWith<
          _$_RemoteFrameBufferServerInitMessagePixelFormat>
      get copyWith =>
          __$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWithImpl<
                  _$_RemoteFrameBufferServerInitMessagePixelFormat>(
              this, _$identity);
}

abstract class _RemoteFrameBufferServerInitMessagePixelFormat
    extends RemoteFrameBufferServerInitMessagePixelFormat {
  const factory _RemoteFrameBufferServerInitMessagePixelFormat(
          {required final int bitsPerPixel,
          required final int depth,
          required final bool bigEndian,
          required final bool trueColor,
          required final int redMax,
          required final int greenMax,
          required final int blueMax,
          required final int redShift,
          required final int greenShift,
          required final int blueShift}) =
      _$_RemoteFrameBufferServerInitMessagePixelFormat;
  const _RemoteFrameBufferServerInitMessagePixelFormat._() : super._();

  @override
  int get bitsPerPixel;
  @override
  int get depth;
  @override
  bool get bigEndian;
  @override
  bool get trueColor;
  @override
  int get redMax;
  @override
  int get greenMax;
  @override
  int get blueMax;
  @override
  int get redShift;
  @override
  int get greenShift;
  @override
  int get blueShift;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferServerInitMessagePixelFormatCopyWith<
          _$_RemoteFrameBufferServerInitMessagePixelFormat>
      get copyWith => throw _privateConstructorUsedError;
}
