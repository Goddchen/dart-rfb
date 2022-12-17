// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_handshake_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferSecurityHandshakeMessage {
  Iterable<RemoteFrameBufferSecurityHandshakeMessageSecurityType>
      get securityTypes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferSecurityHandshakeMessageCopyWith<
          RemoteFrameBufferSecurityHandshakeMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferSecurityHandshakeMessageCopyWith<$Res> {
  factory $RemoteFrameBufferSecurityHandshakeMessageCopyWith(
          RemoteFrameBufferSecurityHandshakeMessage value,
          $Res Function(RemoteFrameBufferSecurityHandshakeMessage) then) =
      _$RemoteFrameBufferSecurityHandshakeMessageCopyWithImpl<$Res,
          RemoteFrameBufferSecurityHandshakeMessage>;
  @useResult
  $Res call(
      {Iterable<RemoteFrameBufferSecurityHandshakeMessageSecurityType>
          securityTypes});
}

/// @nodoc
class _$RemoteFrameBufferSecurityHandshakeMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferSecurityHandshakeMessage>
    implements $RemoteFrameBufferSecurityHandshakeMessageCopyWith<$Res> {
  _$RemoteFrameBufferSecurityHandshakeMessageCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? securityTypes = null,
  }) {
    return _then(_value.copyWith(
      securityTypes: null == securityTypes
          ? _value.securityTypes
          : securityTypes // ignore: cast_nullable_to_non_nullable
              as Iterable<
                  RemoteFrameBufferSecurityHandshakeMessageSecurityType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferSecurityHandshakeMessageCopyWith<$Res>
    implements $RemoteFrameBufferSecurityHandshakeMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferSecurityHandshakeMessageCopyWith(
          _$_RemoteFrameBufferSecurityHandshakeMessage value,
          $Res Function(_$_RemoteFrameBufferSecurityHandshakeMessage) then) =
      __$$_RemoteFrameBufferSecurityHandshakeMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Iterable<RemoteFrameBufferSecurityHandshakeMessageSecurityType>
          securityTypes});
}

/// @nodoc
class __$$_RemoteFrameBufferSecurityHandshakeMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferSecurityHandshakeMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferSecurityHandshakeMessage>
    implements _$$_RemoteFrameBufferSecurityHandshakeMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferSecurityHandshakeMessageCopyWithImpl(
      _$_RemoteFrameBufferSecurityHandshakeMessage _value,
      $Res Function(_$_RemoteFrameBufferSecurityHandshakeMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? securityTypes = null,
  }) {
    return _then(_$_RemoteFrameBufferSecurityHandshakeMessage(
      securityTypes: null == securityTypes
          ? _value.securityTypes
          : securityTypes // ignore: cast_nullable_to_non_nullable
              as Iterable<
                  RemoteFrameBufferSecurityHandshakeMessageSecurityType>,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferSecurityHandshakeMessage
    extends _RemoteFrameBufferSecurityHandshakeMessage {
  const _$_RemoteFrameBufferSecurityHandshakeMessage(
      {required this.securityTypes})
      : super._();

  @override
  final Iterable<RemoteFrameBufferSecurityHandshakeMessageSecurityType>
      securityTypes;

  @override
  String toString() {
    return 'RemoteFrameBufferSecurityHandshakeMessage(securityTypes: $securityTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferSecurityHandshakeMessage &&
            const DeepCollectionEquality()
                .equals(other.securityTypes, securityTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(securityTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferSecurityHandshakeMessageCopyWith<
          _$_RemoteFrameBufferSecurityHandshakeMessage>
      get copyWith =>
          __$$_RemoteFrameBufferSecurityHandshakeMessageCopyWithImpl<
              _$_RemoteFrameBufferSecurityHandshakeMessage>(this, _$identity);
}

abstract class _RemoteFrameBufferSecurityHandshakeMessage
    extends RemoteFrameBufferSecurityHandshakeMessage {
  const factory _RemoteFrameBufferSecurityHandshakeMessage(
      {required final Iterable<
              RemoteFrameBufferSecurityHandshakeMessageSecurityType>
          securityTypes}) = _$_RemoteFrameBufferSecurityHandshakeMessage;
  const _RemoteFrameBufferSecurityHandshakeMessage._() : super._();

  @override
  Iterable<RemoteFrameBufferSecurityHandshakeMessageSecurityType>
      get securityTypes;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferSecurityHandshakeMessageCopyWith<
          _$_RemoteFrameBufferSecurityHandshakeMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferSecurityHandshakeMessageSecurityType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() none,
    required TResult Function() vncAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalid,
    TResult? Function()? none,
    TResult? Function()? vncAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? none,
    TResult Function()? vncAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        invalid,
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        none,
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        vncAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        invalid,
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        none,
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        vncAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        invalid,
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        none,
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        vncAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWith<
    $Res> {
  factory $RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWith(
          RemoteFrameBufferSecurityHandshakeMessageSecurityType value,
          $Res Function(RemoteFrameBufferSecurityHandshakeMessageSecurityType)
              then) =
      _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWithImpl<$Res,
          RemoteFrameBufferSecurityHandshakeMessageSecurityType>;
}

/// @nodoc
class _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferSecurityHandshakeMessageSecurityType>
    implements
        $RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWith<$Res> {
  _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith<
    $Res> {
  factory _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith(
          _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value,
          $Res Function(
                  _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid)
              then) =
      __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl<
          $Res>;
}

/// @nodoc
class __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl<
        $Res>
    extends _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWithImpl<
        $Res, _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid>
    implements
        _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith<
            $Res> {
  __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl(
      _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid _value,
      $Res Function(
              _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid)
          _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid
    implements RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid {
  const _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid();

  @override
  String toString() {
    return 'RemoteFrameBufferSecurityHandshakeMessageSecurityType.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() none,
    required TResult Function() vncAuthentication,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalid,
    TResult? Function()? none,
    TResult? Function()? vncAuthentication,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? none,
    TResult Function()? vncAuthentication,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        invalid,
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        none,
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        vncAuthentication,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        invalid,
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        none,
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        vncAuthentication,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        invalid,
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        none,
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        vncAuthentication,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid
    implements RemoteFrameBufferSecurityHandshakeMessageSecurityType {
  const factory RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid() =
      _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid;
}

/// @nodoc
abstract class _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith<
    $Res> {
  factory _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith(
          _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value,
          $Res Function(
                  _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid)
              then) =
      __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl<
          $Res>;
}

/// @nodoc
class __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl<
        $Res>
    extends _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWithImpl<
        $Res, _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid>
    implements
        _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith<
            $Res> {
  __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl(
      _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid _value,
      $Res Function(
              _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid)
          _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid
    implements RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid {
  const _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid();

  @override
  String toString() {
    return 'RemoteFrameBufferSecurityHandshakeMessageSecurityType.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() none,
    required TResult Function() vncAuthentication,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalid,
    TResult? Function()? none,
    TResult? Function()? vncAuthentication,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? none,
    TResult Function()? vncAuthentication,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        invalid,
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        none,
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        vncAuthentication,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        invalid,
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        none,
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        vncAuthentication,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        invalid,
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        none,
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        vncAuthentication,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid
    implements RemoteFrameBufferSecurityHandshakeMessageSecurityType {
  const factory RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid() =
      _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid;
}

/// @nodoc
abstract class _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith<
    $Res> {
  factory _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith(
          _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value,
          $Res Function(
                  _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid)
              then) =
      __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl<
          $Res>;
}

/// @nodoc
class __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl<
        $Res>
    extends _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeCopyWithImpl<
        $Res, _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid>
    implements
        _$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWith<
            $Res> {
  __$$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalidCopyWithImpl(
      _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid _value,
      $Res Function(
              _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid)
          _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid
    implements RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid {
  const _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid();

  @override
  String toString() {
    return 'RemoteFrameBufferSecurityHandshakeMessageSecurityType.vncAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() none,
    required TResult Function() vncAuthentication,
  }) {
    return vncAuthentication();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalid,
    TResult? Function()? none,
    TResult? Function()? vncAuthentication,
  }) {
    return vncAuthentication?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? none,
    TResult Function()? vncAuthentication,
    required TResult orElse(),
  }) {
    if (vncAuthentication != null) {
      return vncAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        invalid,
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        none,
    required TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)
        vncAuthentication,
  }) {
    return vncAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        invalid,
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        none,
    TResult? Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        vncAuthentication,
  }) {
    return vncAuthentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        invalid,
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        none,
    TResult Function(
            RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid value)?
        vncAuthentication,
    required TResult orElse(),
  }) {
    if (vncAuthentication != null) {
      return vncAuthentication(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid
    implements RemoteFrameBufferSecurityHandshakeMessageSecurityType {
  const factory RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid() =
      _$RemoteFrameBufferSecurityHandshakeMessageSecurityTypeInvalid;
}
