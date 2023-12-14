// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'frame_buffer_update_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferFrameBufferUpdateMessage {
  Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle> get rectangles =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferFrameBufferUpdateMessageCopyWith<
          RemoteFrameBufferFrameBufferUpdateMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferFrameBufferUpdateMessageCopyWith<$Res> {
  factory $RemoteFrameBufferFrameBufferUpdateMessageCopyWith(
          RemoteFrameBufferFrameBufferUpdateMessage value,
          $Res Function(RemoteFrameBufferFrameBufferUpdateMessage) then) =
      _$RemoteFrameBufferFrameBufferUpdateMessageCopyWithImpl<$Res,
          RemoteFrameBufferFrameBufferUpdateMessage>;
  @useResult
  $Res call(
      {Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle>
          rectangles});
}

/// @nodoc
class _$RemoteFrameBufferFrameBufferUpdateMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferFrameBufferUpdateMessage>
    implements $RemoteFrameBufferFrameBufferUpdateMessageCopyWith<$Res> {
  _$RemoteFrameBufferFrameBufferUpdateMessageCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectangles = null,
  }) {
    return _then(_value.copyWith(
      rectangles: null == rectangles
          ? _value.rectangles
          : rectangles // ignore: cast_nullable_to_non_nullable
              as Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWith<$Res>
    implements $RemoteFrameBufferFrameBufferUpdateMessageCopyWith<$Res> {
  factory _$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWith(
          _$RemoteFrameBufferFrameBufferUpdateMessageImpl value,
          $Res Function(_$RemoteFrameBufferFrameBufferUpdateMessageImpl) then) =
      __$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle>
          rectangles});
}

/// @nodoc
class __$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferFrameBufferUpdateMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferFrameBufferUpdateMessageImpl>
    implements _$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWith<$Res> {
  __$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWithImpl(
      _$RemoteFrameBufferFrameBufferUpdateMessageImpl _value,
      $Res Function(_$RemoteFrameBufferFrameBufferUpdateMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectangles = null,
  }) {
    return _then(_$RemoteFrameBufferFrameBufferUpdateMessageImpl(
      rectangles: null == rectangles
          ? _value.rectangles
          : rectangles // ignore: cast_nullable_to_non_nullable
              as Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle>,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferFrameBufferUpdateMessageImpl
    extends _RemoteFrameBufferFrameBufferUpdateMessage {
  const _$RemoteFrameBufferFrameBufferUpdateMessageImpl(
      {required this.rectangles})
      : super._();

  @override
  final Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle> rectangles;

  @override
  String toString() {
    return 'RemoteFrameBufferFrameBufferUpdateMessage(rectangles: $rectangles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferFrameBufferUpdateMessageImpl &&
            const DeepCollectionEquality()
                .equals(other.rectangles, rectangles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rectangles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWith<
          _$RemoteFrameBufferFrameBufferUpdateMessageImpl>
      get copyWith =>
          __$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWithImpl<
                  _$RemoteFrameBufferFrameBufferUpdateMessageImpl>(
              this, _$identity);
}

abstract class _RemoteFrameBufferFrameBufferUpdateMessage
    extends RemoteFrameBufferFrameBufferUpdateMessage {
  const factory _RemoteFrameBufferFrameBufferUpdateMessage(
      {required final Iterable<
              RemoteFrameBufferFrameBufferUpdateMessageRectangle>
          rectangles}) = _$RemoteFrameBufferFrameBufferUpdateMessageImpl;
  const _RemoteFrameBufferFrameBufferUpdateMessage._() : super._();

  @override
  Iterable<RemoteFrameBufferFrameBufferUpdateMessageRectangle> get rectangles;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferFrameBufferUpdateMessageImplCopyWith<
          _$RemoteFrameBufferFrameBufferUpdateMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferFrameBufferUpdateMessageRectangle {
  RemoteFrameBufferEncodingType get encodingType =>
      throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  ByteData get pixelData => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWith<
          RemoteFrameBufferFrameBufferUpdateMessageRectangle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWith<
    $Res> {
  factory $RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWith(
          RemoteFrameBufferFrameBufferUpdateMessageRectangle value,
          $Res Function(RemoteFrameBufferFrameBufferUpdateMessageRectangle)
              then) =
      _$RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWithImpl<$Res,
          RemoteFrameBufferFrameBufferUpdateMessageRectangle>;
  @useResult
  $Res call(
      {RemoteFrameBufferEncodingType encodingType,
      int height,
      ByteData pixelData,
      int width,
      int x,
      int y});

  $RemoteFrameBufferEncodingTypeCopyWith<$Res> get encodingType;
}

/// @nodoc
class _$RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferFrameBufferUpdateMessageRectangle>
    implements
        $RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWith<$Res> {
  _$RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodingType = null,
    Object? height = null,
    Object? pixelData = null,
    Object? width = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      encodingType: null == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferEncodingType,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      pixelData: null == pixelData
          ? _value.pixelData
          : pixelData // ignore: cast_nullable_to_non_nullable
              as ByteData,
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

  @override
  @pragma('vm:prefer-inline')
  $RemoteFrameBufferEncodingTypeCopyWith<$Res> get encodingType {
    return $RemoteFrameBufferEncodingTypeCopyWith<$Res>(_value.encodingType,
        (value) {
      return _then(_value.copyWith(encodingType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWith<
        $Res>
    implements
        $RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWith<$Res> {
  factory _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWith(
          _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl value,
          $Res Function(
                  _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl)
              then) =
      __$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {RemoteFrameBufferEncodingType encodingType,
      int height,
      ByteData pixelData,
      int width,
      int x,
      int y});

  @override
  $RemoteFrameBufferEncodingTypeCopyWith<$Res> get encodingType;
}

/// @nodoc
class __$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWithImpl<
        $Res>
    extends _$RemoteFrameBufferFrameBufferUpdateMessageRectangleCopyWithImpl<
        $Res, _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl>
    implements
        _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWith<
            $Res> {
  __$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWithImpl(
      _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl _value,
      $Res Function(_$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodingType = null,
    Object? height = null,
    Object? pixelData = null,
    Object? width = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl(
      encodingType: null == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferEncodingType,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      pixelData: null == pixelData
          ? _value.pixelData
          : pixelData // ignore: cast_nullable_to_non_nullable
              as ByteData,
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

class _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl
    implements _RemoteFrameBufferFrameBufferUpdateMessageRectangle {
  const _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl(
      {required this.encodingType,
      required this.height,
      required this.pixelData,
      required this.width,
      required this.x,
      required this.y});

  @override
  final RemoteFrameBufferEncodingType encodingType;
  @override
  final int height;
  @override
  final ByteData pixelData;
  @override
  final int width;
  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'RemoteFrameBufferFrameBufferUpdateMessageRectangle(encodingType: $encodingType, height: $height, pixelData: $pixelData, width: $width, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl &&
            (identical(other.encodingType, encodingType) ||
                other.encodingType == encodingType) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.pixelData, pixelData) ||
                other.pixelData == pixelData) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, encodingType, height, pixelData, width, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWith<
          _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl>
      get copyWith =>
          __$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWithImpl<
                  _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl>(
              this, _$identity);
}

abstract class _RemoteFrameBufferFrameBufferUpdateMessageRectangle
    implements RemoteFrameBufferFrameBufferUpdateMessageRectangle {
  const factory _RemoteFrameBufferFrameBufferUpdateMessageRectangle(
          {required final RemoteFrameBufferEncodingType encodingType,
          required final int height,
          required final ByteData pixelData,
          required final int width,
          required final int x,
          required final int y}) =
      _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl;

  @override
  RemoteFrameBufferEncodingType get encodingType;
  @override
  int get height;
  @override
  ByteData get pixelData;
  @override
  int get width;
  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleImplCopyWith<
          _$RemoteFrameBufferFrameBufferUpdateMessageRectangleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader {
  RemoteFrameBufferEncodingType get encodingType =>
      throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWith<
          RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWith<
    $Res> {
  factory $RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWith(
          RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader value,
          $Res Function(
                  RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader)
              then) =
      _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWithImpl<
          $Res, RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader>;
  @useResult
  $Res call(
      {RemoteFrameBufferEncodingType encodingType,
      int height,
      int width,
      int x,
      int y});

  $RemoteFrameBufferEncodingTypeCopyWith<$Res> get encodingType;
}

/// @nodoc
class _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWithImpl<
        $Res,
        $Val extends RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader>
    implements
        $RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWith<
            $Res> {
  _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodingType = null,
    Object? height = null,
    Object? width = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      encodingType: null == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferEncodingType,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
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

  @override
  @pragma('vm:prefer-inline')
  $RemoteFrameBufferEncodingTypeCopyWith<$Res> get encodingType {
    return $RemoteFrameBufferEncodingTypeCopyWith<$Res>(_value.encodingType,
        (value) {
      return _then(_value.copyWith(encodingType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWith<
        $Res>
    implements
        $RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWith<
            $Res> {
  factory _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWith(
          _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl value,
          $Res Function(
                  _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl)
              then) =
      __$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {RemoteFrameBufferEncodingType encodingType,
      int height,
      int width,
      int x,
      int y});

  @override
  $RemoteFrameBufferEncodingTypeCopyWith<$Res> get encodingType;
}

/// @nodoc
class __$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWithImpl<
        $Res>
    extends _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderCopyWithImpl<
        $Res, _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl>
    implements
        _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWith<
            $Res> {
  __$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWithImpl(
      _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl _value,
      $Res Function(
              _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodingType = null,
    Object? height = null,
    Object? width = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl(
      encodingType: null == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferEncodingType,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl
    extends _RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader {
  const _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl(
      {required this.encodingType,
      required this.height,
      required this.width,
      required this.x,
      required this.y})
      : super._();

  @override
  final RemoteFrameBufferEncodingType encodingType;
  @override
  final int height;
  @override
  final int width;
  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader(encodingType: $encodingType, height: $height, width: $width, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl &&
            (identical(other.encodingType, encodingType) ||
                other.encodingType == encodingType) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, encodingType, height, width, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWith<
          _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl>
      get copyWith =>
          __$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWithImpl<
                  _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl>(
              this, _$identity);
}

abstract class _RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader
    extends RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader {
  const factory _RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader(
          {required final RemoteFrameBufferEncodingType encodingType,
          required final int height,
          required final int width,
          required final int x,
          required final int y}) =
      _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl;
  const _RemoteFrameBufferFrameBufferUpdateMessageRectangleHeader._()
      : super._();

  @override
  RemoteFrameBufferEncodingType get encodingType;
  @override
  int get height;
  @override
  int get width;
  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImplCopyWith<
          _$RemoteFrameBufferFrameBufferUpdateMessageRectangleHeaderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
