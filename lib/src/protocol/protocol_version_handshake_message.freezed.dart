// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol_version_handshake_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferProtocolVersion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ByteData bytes) unknown,
    required TResult Function() v3_3,
    required TResult Function() v3_7,
    required TResult Function() v3_8,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ByteData bytes)? unknown,
    TResult? Function()? v3_3,
    TResult? Function()? v3_7,
    TResult? Function()? v3_8,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ByteData bytes)? unknown,
    TResult Function()? v3_3,
    TResult Function()? v3_7,
    TResult Function()? v3_8,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteFrameBufferProtocolVersionUnknown value)
        unknown,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_3 value) v3_3,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_7 value) v3_7,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_8 value) v3_8,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferProtocolVersionCopyWith<$Res> {
  factory $RemoteFrameBufferProtocolVersionCopyWith(
          RemoteFrameBufferProtocolVersion value,
          $Res Function(RemoteFrameBufferProtocolVersion) then) =
      _$RemoteFrameBufferProtocolVersionCopyWithImpl<$Res,
          RemoteFrameBufferProtocolVersion>;
}

/// @nodoc
class _$RemoteFrameBufferProtocolVersionCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferProtocolVersion>
    implements $RemoteFrameBufferProtocolVersionCopyWith<$Res> {
  _$RemoteFrameBufferProtocolVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoteFrameBufferProtocolVersionUnknownImplCopyWith<$Res> {
  factory _$$RemoteFrameBufferProtocolVersionUnknownImplCopyWith(
          _$RemoteFrameBufferProtocolVersionUnknownImpl value,
          $Res Function(_$RemoteFrameBufferProtocolVersionUnknownImpl) then) =
      __$$RemoteFrameBufferProtocolVersionUnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ByteData bytes});
}

/// @nodoc
class __$$RemoteFrameBufferProtocolVersionUnknownImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferProtocolVersionCopyWithImpl<$Res,
        _$RemoteFrameBufferProtocolVersionUnknownImpl>
    implements _$$RemoteFrameBufferProtocolVersionUnknownImplCopyWith<$Res> {
  __$$RemoteFrameBufferProtocolVersionUnknownImplCopyWithImpl(
      _$RemoteFrameBufferProtocolVersionUnknownImpl _value,
      $Res Function(_$RemoteFrameBufferProtocolVersionUnknownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_$RemoteFrameBufferProtocolVersionUnknownImpl(
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as ByteData,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferProtocolVersionUnknownImpl
    implements RemoteFrameBufferProtocolVersionUnknown {
  const _$RemoteFrameBufferProtocolVersionUnknownImpl({required this.bytes});

  @override
  final ByteData bytes;

  @override
  String toString() {
    return 'RemoteFrameBufferProtocolVersion.unknown(bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferProtocolVersionUnknownImpl &&
            (identical(other.bytes, bytes) || other.bytes == bytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bytes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferProtocolVersionUnknownImplCopyWith<
          _$RemoteFrameBufferProtocolVersionUnknownImpl>
      get copyWith =>
          __$$RemoteFrameBufferProtocolVersionUnknownImplCopyWithImpl<
              _$RemoteFrameBufferProtocolVersionUnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ByteData bytes) unknown,
    required TResult Function() v3_3,
    required TResult Function() v3_7,
    required TResult Function() v3_8,
  }) {
    return unknown(bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ByteData bytes)? unknown,
    TResult? Function()? v3_3,
    TResult? Function()? v3_7,
    TResult? Function()? v3_8,
  }) {
    return unknown?.call(bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ByteData bytes)? unknown,
    TResult Function()? v3_3,
    TResult Function()? v3_7,
    TResult Function()? v3_8,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteFrameBufferProtocolVersionUnknown value)
        unknown,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_3 value) v3_3,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_7 value) v3_7,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_8 value) v3_8,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferProtocolVersionUnknown
    implements RemoteFrameBufferProtocolVersion {
  const factory RemoteFrameBufferProtocolVersionUnknown(
          {required final ByteData bytes}) =
      _$RemoteFrameBufferProtocolVersionUnknownImpl;

  ByteData get bytes;
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferProtocolVersionUnknownImplCopyWith<
          _$RemoteFrameBufferProtocolVersionUnknownImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteFrameBufferProtocolVersion_3_3ImplCopyWith<$Res> {
  factory _$$RemoteFrameBufferProtocolVersion_3_3ImplCopyWith(
          _$RemoteFrameBufferProtocolVersion_3_3Impl value,
          $Res Function(_$RemoteFrameBufferProtocolVersion_3_3Impl) then) =
      __$$RemoteFrameBufferProtocolVersion_3_3ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoteFrameBufferProtocolVersion_3_3ImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferProtocolVersionCopyWithImpl<$Res,
        _$RemoteFrameBufferProtocolVersion_3_3Impl>
    implements _$$RemoteFrameBufferProtocolVersion_3_3ImplCopyWith<$Res> {
  __$$RemoteFrameBufferProtocolVersion_3_3ImplCopyWithImpl(
      _$RemoteFrameBufferProtocolVersion_3_3Impl _value,
      $Res Function(_$RemoteFrameBufferProtocolVersion_3_3Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoteFrameBufferProtocolVersion_3_3Impl
    implements RemoteFrameBufferProtocolVersion_3_3 {
  const _$RemoteFrameBufferProtocolVersion_3_3Impl();

  @override
  String toString() {
    return 'RemoteFrameBufferProtocolVersion.v3_3()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferProtocolVersion_3_3Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ByteData bytes) unknown,
    required TResult Function() v3_3,
    required TResult Function() v3_7,
    required TResult Function() v3_8,
  }) {
    return v3_3();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ByteData bytes)? unknown,
    TResult? Function()? v3_3,
    TResult? Function()? v3_7,
    TResult? Function()? v3_8,
  }) {
    return v3_3?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ByteData bytes)? unknown,
    TResult Function()? v3_3,
    TResult Function()? v3_7,
    TResult Function()? v3_8,
    required TResult orElse(),
  }) {
    if (v3_3 != null) {
      return v3_3();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteFrameBufferProtocolVersionUnknown value)
        unknown,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_3 value) v3_3,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_7 value) v3_7,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_8 value) v3_8,
  }) {
    return v3_3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
  }) {
    return v3_3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
    required TResult orElse(),
  }) {
    if (v3_3 != null) {
      return v3_3(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferProtocolVersion_3_3
    implements RemoteFrameBufferProtocolVersion {
  const factory RemoteFrameBufferProtocolVersion_3_3() =
      _$RemoteFrameBufferProtocolVersion_3_3Impl;
}

/// @nodoc
abstract class _$$RemoteFrameBufferProtocolVersion_3_7ImplCopyWith<$Res> {
  factory _$$RemoteFrameBufferProtocolVersion_3_7ImplCopyWith(
          _$RemoteFrameBufferProtocolVersion_3_7Impl value,
          $Res Function(_$RemoteFrameBufferProtocolVersion_3_7Impl) then) =
      __$$RemoteFrameBufferProtocolVersion_3_7ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoteFrameBufferProtocolVersion_3_7ImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferProtocolVersionCopyWithImpl<$Res,
        _$RemoteFrameBufferProtocolVersion_3_7Impl>
    implements _$$RemoteFrameBufferProtocolVersion_3_7ImplCopyWith<$Res> {
  __$$RemoteFrameBufferProtocolVersion_3_7ImplCopyWithImpl(
      _$RemoteFrameBufferProtocolVersion_3_7Impl _value,
      $Res Function(_$RemoteFrameBufferProtocolVersion_3_7Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoteFrameBufferProtocolVersion_3_7Impl
    implements RemoteFrameBufferProtocolVersion_3_7 {
  const _$RemoteFrameBufferProtocolVersion_3_7Impl();

  @override
  String toString() {
    return 'RemoteFrameBufferProtocolVersion.v3_7()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferProtocolVersion_3_7Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ByteData bytes) unknown,
    required TResult Function() v3_3,
    required TResult Function() v3_7,
    required TResult Function() v3_8,
  }) {
    return v3_7();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ByteData bytes)? unknown,
    TResult? Function()? v3_3,
    TResult? Function()? v3_7,
    TResult? Function()? v3_8,
  }) {
    return v3_7?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ByteData bytes)? unknown,
    TResult Function()? v3_3,
    TResult Function()? v3_7,
    TResult Function()? v3_8,
    required TResult orElse(),
  }) {
    if (v3_7 != null) {
      return v3_7();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteFrameBufferProtocolVersionUnknown value)
        unknown,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_3 value) v3_3,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_7 value) v3_7,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_8 value) v3_8,
  }) {
    return v3_7(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
  }) {
    return v3_7?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
    required TResult orElse(),
  }) {
    if (v3_7 != null) {
      return v3_7(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferProtocolVersion_3_7
    implements RemoteFrameBufferProtocolVersion {
  const factory RemoteFrameBufferProtocolVersion_3_7() =
      _$RemoteFrameBufferProtocolVersion_3_7Impl;
}

/// @nodoc
abstract class _$$RemoteFrameBufferProtocolVersion_3_8ImplCopyWith<$Res> {
  factory _$$RemoteFrameBufferProtocolVersion_3_8ImplCopyWith(
          _$RemoteFrameBufferProtocolVersion_3_8Impl value,
          $Res Function(_$RemoteFrameBufferProtocolVersion_3_8Impl) then) =
      __$$RemoteFrameBufferProtocolVersion_3_8ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoteFrameBufferProtocolVersion_3_8ImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferProtocolVersionCopyWithImpl<$Res,
        _$RemoteFrameBufferProtocolVersion_3_8Impl>
    implements _$$RemoteFrameBufferProtocolVersion_3_8ImplCopyWith<$Res> {
  __$$RemoteFrameBufferProtocolVersion_3_8ImplCopyWithImpl(
      _$RemoteFrameBufferProtocolVersion_3_8Impl _value,
      $Res Function(_$RemoteFrameBufferProtocolVersion_3_8Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoteFrameBufferProtocolVersion_3_8Impl
    implements RemoteFrameBufferProtocolVersion_3_8 {
  const _$RemoteFrameBufferProtocolVersion_3_8Impl();

  @override
  String toString() {
    return 'RemoteFrameBufferProtocolVersion.v3_8()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferProtocolVersion_3_8Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ByteData bytes) unknown,
    required TResult Function() v3_3,
    required TResult Function() v3_7,
    required TResult Function() v3_8,
  }) {
    return v3_8();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ByteData bytes)? unknown,
    TResult? Function()? v3_3,
    TResult? Function()? v3_7,
    TResult? Function()? v3_8,
  }) {
    return v3_8?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ByteData bytes)? unknown,
    TResult Function()? v3_3,
    TResult Function()? v3_7,
    TResult Function()? v3_8,
    required TResult orElse(),
  }) {
    if (v3_8 != null) {
      return v3_8();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteFrameBufferProtocolVersionUnknown value)
        unknown,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_3 value) v3_3,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_7 value) v3_7,
    required TResult Function(RemoteFrameBufferProtocolVersion_3_8 value) v3_8,
  }) {
    return v3_8(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult? Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
  }) {
    return v3_8?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferProtocolVersionUnknown value)? unknown,
    TResult Function(RemoteFrameBufferProtocolVersion_3_3 value)? v3_3,
    TResult Function(RemoteFrameBufferProtocolVersion_3_7 value)? v3_7,
    TResult Function(RemoteFrameBufferProtocolVersion_3_8 value)? v3_8,
    required TResult orElse(),
  }) {
    if (v3_8 != null) {
      return v3_8(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferProtocolVersion_3_8
    implements RemoteFrameBufferProtocolVersion {
  const factory RemoteFrameBufferProtocolVersion_3_8() =
      _$RemoteFrameBufferProtocolVersion_3_8Impl;
}

/// @nodoc
mixin _$RemoteFrameBufferProtocolVersionHandshakeMessage {
  RemoteFrameBufferProtocolVersion get version =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferProtocolVersionHandshakeMessageCopyWith<
          RemoteFrameBufferProtocolVersionHandshakeMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferProtocolVersionHandshakeMessageCopyWith<$Res> {
  factory $RemoteFrameBufferProtocolVersionHandshakeMessageCopyWith(
          RemoteFrameBufferProtocolVersionHandshakeMessage value,
          $Res Function(RemoteFrameBufferProtocolVersionHandshakeMessage)
              then) =
      _$RemoteFrameBufferProtocolVersionHandshakeMessageCopyWithImpl<$Res,
          RemoteFrameBufferProtocolVersionHandshakeMessage>;
  @useResult
  $Res call({RemoteFrameBufferProtocolVersion version});

  $RemoteFrameBufferProtocolVersionCopyWith<$Res> get version;
}

/// @nodoc
class _$RemoteFrameBufferProtocolVersionHandshakeMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferProtocolVersionHandshakeMessage>
    implements $RemoteFrameBufferProtocolVersionHandshakeMessageCopyWith<$Res> {
  _$RemoteFrameBufferProtocolVersionHandshakeMessageCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferProtocolVersion,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteFrameBufferProtocolVersionCopyWith<$Res> get version {
    return $RemoteFrameBufferProtocolVersionCopyWith<$Res>(_value.version,
        (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWith<
        $Res>
    implements $RemoteFrameBufferProtocolVersionHandshakeMessageCopyWith<$Res> {
  factory _$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWith(
          _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl value,
          $Res Function(_$RemoteFrameBufferProtocolVersionHandshakeMessageImpl)
              then) =
      __$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({RemoteFrameBufferProtocolVersion version});

  @override
  $RemoteFrameBufferProtocolVersionCopyWith<$Res> get version;
}

/// @nodoc
class __$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferProtocolVersionHandshakeMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl>
    implements
        _$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWith<$Res> {
  __$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWithImpl(
      _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl _value,
      $Res Function(_$RemoteFrameBufferProtocolVersionHandshakeMessageImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$RemoteFrameBufferProtocolVersionHandshakeMessageImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferProtocolVersion,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl
    extends _RemoteFrameBufferProtocolVersionHandshakeMessage {
  const _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl(
      {required this.version})
      : super._();

  @override
  final RemoteFrameBufferProtocolVersion version;

  @override
  String toString() {
    return 'RemoteFrameBufferProtocolVersionHandshakeMessage(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWith<
          _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl>
      get copyWith =>
          __$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWithImpl<
                  _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl>(
              this, _$identity);
}

abstract class _RemoteFrameBufferProtocolVersionHandshakeMessage
    extends RemoteFrameBufferProtocolVersionHandshakeMessage {
  const factory _RemoteFrameBufferProtocolVersionHandshakeMessage(
          {required final RemoteFrameBufferProtocolVersion version}) =
      _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl;
  const _RemoteFrameBufferProtocolVersionHandshakeMessage._() : super._();

  @override
  RemoteFrameBufferProtocolVersion get version;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferProtocolVersionHandshakeMessageImplCopyWith<
          _$RemoteFrameBufferProtocolVersionHandshakeMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
