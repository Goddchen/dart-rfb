// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_frame_buffer_client_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferClientFrameBufferConfig {
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferClientFrameBufferConfigCopyWith<
          RemoteFrameBufferClientFrameBufferConfig>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferClientFrameBufferConfigCopyWith<$Res> {
  factory $RemoteFrameBufferClientFrameBufferConfigCopyWith(
          RemoteFrameBufferClientFrameBufferConfig value,
          $Res Function(RemoteFrameBufferClientFrameBufferConfig) then) =
      _$RemoteFrameBufferClientFrameBufferConfigCopyWithImpl<$Res,
          RemoteFrameBufferClientFrameBufferConfig>;
  @useResult
  $Res call({int height, int width});
}

/// @nodoc
class _$RemoteFrameBufferClientFrameBufferConfigCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferClientFrameBufferConfig>
    implements $RemoteFrameBufferClientFrameBufferConfigCopyWith<$Res> {
  _$RemoteFrameBufferClientFrameBufferConfigCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferClientFrameBufferConfigCopyWith<$Res>
    implements $RemoteFrameBufferClientFrameBufferConfigCopyWith<$Res> {
  factory _$$_RemoteFrameBufferClientFrameBufferConfigCopyWith(
          _$_RemoteFrameBufferClientFrameBufferConfig value,
          $Res Function(_$_RemoteFrameBufferClientFrameBufferConfig) then) =
      __$$_RemoteFrameBufferClientFrameBufferConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, int width});
}

/// @nodoc
class __$$_RemoteFrameBufferClientFrameBufferConfigCopyWithImpl<$Res>
    extends _$RemoteFrameBufferClientFrameBufferConfigCopyWithImpl<$Res,
        _$_RemoteFrameBufferClientFrameBufferConfig>
    implements _$$_RemoteFrameBufferClientFrameBufferConfigCopyWith<$Res> {
  __$$_RemoteFrameBufferClientFrameBufferConfigCopyWithImpl(
      _$_RemoteFrameBufferClientFrameBufferConfig _value,
      $Res Function(_$_RemoteFrameBufferClientFrameBufferConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$_RemoteFrameBufferClientFrameBufferConfig(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferClientFrameBufferConfig
    implements _RemoteFrameBufferClientFrameBufferConfig {
  const _$_RemoteFrameBufferClientFrameBufferConfig(
      {required this.height, required this.width});

  @override
  final int height;
  @override
  final int width;

  @override
  String toString() {
    return 'RemoteFrameBufferClientFrameBufferConfig(height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferClientFrameBufferConfig &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @override
  int get hashCode => Object.hash(runtimeType, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferClientFrameBufferConfigCopyWith<
          _$_RemoteFrameBufferClientFrameBufferConfig>
      get copyWith => __$$_RemoteFrameBufferClientFrameBufferConfigCopyWithImpl<
          _$_RemoteFrameBufferClientFrameBufferConfig>(this, _$identity);
}

abstract class _RemoteFrameBufferClientFrameBufferConfig
    implements RemoteFrameBufferClientFrameBufferConfig {
  const factory _RemoteFrameBufferClientFrameBufferConfig(
      {required final int height,
      required final int width}) = _$_RemoteFrameBufferClientFrameBufferConfig;

  @override
  int get height;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferClientFrameBufferConfigCopyWith<
          _$_RemoteFrameBufferClientFrameBufferConfig>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferClientUpdate {
  Iterable<RemoteFrameBufferClientUpdateRectangle> get rectangles =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferClientUpdateCopyWith<RemoteFrameBufferClientUpdate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferClientUpdateCopyWith<$Res> {
  factory $RemoteFrameBufferClientUpdateCopyWith(
          RemoteFrameBufferClientUpdate value,
          $Res Function(RemoteFrameBufferClientUpdate) then) =
      _$RemoteFrameBufferClientUpdateCopyWithImpl<$Res,
          RemoteFrameBufferClientUpdate>;
  @useResult
  $Res call({Iterable<RemoteFrameBufferClientUpdateRectangle> rectangles});
}

/// @nodoc
class _$RemoteFrameBufferClientUpdateCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferClientUpdate>
    implements $RemoteFrameBufferClientUpdateCopyWith<$Res> {
  _$RemoteFrameBufferClientUpdateCopyWithImpl(this._value, this._then);

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
              as Iterable<RemoteFrameBufferClientUpdateRectangle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferClientUpdateCopyWith<$Res>
    implements $RemoteFrameBufferClientUpdateCopyWith<$Res> {
  factory _$$_RemoteFrameBufferClientUpdateCopyWith(
          _$_RemoteFrameBufferClientUpdate value,
          $Res Function(_$_RemoteFrameBufferClientUpdate) then) =
      __$$_RemoteFrameBufferClientUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<RemoteFrameBufferClientUpdateRectangle> rectangles});
}

/// @nodoc
class __$$_RemoteFrameBufferClientUpdateCopyWithImpl<$Res>
    extends _$RemoteFrameBufferClientUpdateCopyWithImpl<$Res,
        _$_RemoteFrameBufferClientUpdate>
    implements _$$_RemoteFrameBufferClientUpdateCopyWith<$Res> {
  __$$_RemoteFrameBufferClientUpdateCopyWithImpl(
      _$_RemoteFrameBufferClientUpdate _value,
      $Res Function(_$_RemoteFrameBufferClientUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectangles = null,
  }) {
    return _then(_$_RemoteFrameBufferClientUpdate(
      rectangles: null == rectangles
          ? _value.rectangles
          : rectangles // ignore: cast_nullable_to_non_nullable
              as Iterable<RemoteFrameBufferClientUpdateRectangle>,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferClientUpdate
    implements _RemoteFrameBufferClientUpdate {
  const _$_RemoteFrameBufferClientUpdate({required this.rectangles});

  @override
  final Iterable<RemoteFrameBufferClientUpdateRectangle> rectangles;

  @override
  String toString() {
    return 'RemoteFrameBufferClientUpdate(rectangles: $rectangles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferClientUpdate &&
            const DeepCollectionEquality()
                .equals(other.rectangles, rectangles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rectangles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferClientUpdateCopyWith<_$_RemoteFrameBufferClientUpdate>
      get copyWith => __$$_RemoteFrameBufferClientUpdateCopyWithImpl<
          _$_RemoteFrameBufferClientUpdate>(this, _$identity);
}

abstract class _RemoteFrameBufferClientUpdate
    implements RemoteFrameBufferClientUpdate {
  const factory _RemoteFrameBufferClientUpdate(
      {required final Iterable<RemoteFrameBufferClientUpdateRectangle>
          rectangles}) = _$_RemoteFrameBufferClientUpdate;

  @override
  Iterable<RemoteFrameBufferClientUpdateRectangle> get rectangles;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferClientUpdateCopyWith<_$_RemoteFrameBufferClientUpdate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferClientUpdateRectangle {
  ByteData get byteData => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferClientUpdateRectangleCopyWith<
          RemoteFrameBufferClientUpdateRectangle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferClientUpdateRectangleCopyWith<$Res> {
  factory $RemoteFrameBufferClientUpdateRectangleCopyWith(
          RemoteFrameBufferClientUpdateRectangle value,
          $Res Function(RemoteFrameBufferClientUpdateRectangle) then) =
      _$RemoteFrameBufferClientUpdateRectangleCopyWithImpl<$Res,
          RemoteFrameBufferClientUpdateRectangle>;
  @useResult
  $Res call({ByteData byteData, int height, int width, int x, int y});
}

/// @nodoc
class _$RemoteFrameBufferClientUpdateRectangleCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferClientUpdateRectangle>
    implements $RemoteFrameBufferClientUpdateRectangleCopyWith<$Res> {
  _$RemoteFrameBufferClientUpdateRectangleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byteData = null,
    Object? height = null,
    Object? width = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      byteData: null == byteData
          ? _value.byteData
          : byteData // ignore: cast_nullable_to_non_nullable
              as ByteData,
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
}

/// @nodoc
abstract class _$$_RemoteFrameBufferClientUpdateRectangleCopyWith<$Res>
    implements $RemoteFrameBufferClientUpdateRectangleCopyWith<$Res> {
  factory _$$_RemoteFrameBufferClientUpdateRectangleCopyWith(
          _$_RemoteFrameBufferClientUpdateRectangle value,
          $Res Function(_$_RemoteFrameBufferClientUpdateRectangle) then) =
      __$$_RemoteFrameBufferClientUpdateRectangleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ByteData byteData, int height, int width, int x, int y});
}

/// @nodoc
class __$$_RemoteFrameBufferClientUpdateRectangleCopyWithImpl<$Res>
    extends _$RemoteFrameBufferClientUpdateRectangleCopyWithImpl<$Res,
        _$_RemoteFrameBufferClientUpdateRectangle>
    implements _$$_RemoteFrameBufferClientUpdateRectangleCopyWith<$Res> {
  __$$_RemoteFrameBufferClientUpdateRectangleCopyWithImpl(
      _$_RemoteFrameBufferClientUpdateRectangle _value,
      $Res Function(_$_RemoteFrameBufferClientUpdateRectangle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byteData = null,
    Object? height = null,
    Object? width = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_RemoteFrameBufferClientUpdateRectangle(
      byteData: null == byteData
          ? _value.byteData
          : byteData // ignore: cast_nullable_to_non_nullable
              as ByteData,
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

class _$_RemoteFrameBufferClientUpdateRectangle
    implements _RemoteFrameBufferClientUpdateRectangle {
  const _$_RemoteFrameBufferClientUpdateRectangle(
      {required this.byteData,
      required this.height,
      required this.width,
      required this.x,
      required this.y});

  @override
  final ByteData byteData;
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
    return 'RemoteFrameBufferClientUpdateRectangle(byteData: $byteData, height: $height, width: $width, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferClientUpdateRectangle &&
            (identical(other.byteData, byteData) ||
                other.byteData == byteData) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(runtimeType, byteData, height, width, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferClientUpdateRectangleCopyWith<
          _$_RemoteFrameBufferClientUpdateRectangle>
      get copyWith => __$$_RemoteFrameBufferClientUpdateRectangleCopyWithImpl<
          _$_RemoteFrameBufferClientUpdateRectangle>(this, _$identity);
}

abstract class _RemoteFrameBufferClientUpdateRectangle
    implements RemoteFrameBufferClientUpdateRectangle {
  const factory _RemoteFrameBufferClientUpdateRectangle(
      {required final ByteData byteData,
      required final int height,
      required final int width,
      required final int x,
      required final int y}) = _$_RemoteFrameBufferClientUpdateRectangle;

  @override
  ByteData get byteData;
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
  _$$_RemoteFrameBufferClientUpdateRectangleCopyWith<
          _$_RemoteFrameBufferClientUpdateRectangle>
      get copyWith => throw _privateConstructorUsedError;
}
