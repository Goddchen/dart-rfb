// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_result_handshake_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferSecurityResultHandshakeMessage {
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferSecurityResultHandshakeMessageCopyWith<
          RemoteFrameBufferSecurityResultHandshakeMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferSecurityResultHandshakeMessageCopyWith<$Res> {
  factory $RemoteFrameBufferSecurityResultHandshakeMessageCopyWith(
          RemoteFrameBufferSecurityResultHandshakeMessage value,
          $Res Function(RemoteFrameBufferSecurityResultHandshakeMessage) then) =
      _$RemoteFrameBufferSecurityResultHandshakeMessageCopyWithImpl<$Res,
          RemoteFrameBufferSecurityResultHandshakeMessage>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$RemoteFrameBufferSecurityResultHandshakeMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferSecurityResultHandshakeMessage>
    implements $RemoteFrameBufferSecurityResultHandshakeMessageCopyWith<$Res> {
  _$RemoteFrameBufferSecurityResultHandshakeMessageCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWith<
        $Res>
    implements $RemoteFrameBufferSecurityResultHandshakeMessageCopyWith<$Res> {
  factory _$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWith(
          _$RemoteFrameBufferSecurityResultHandshakeMessageImpl value,
          $Res Function(_$RemoteFrameBufferSecurityResultHandshakeMessageImpl)
              then) =
      __$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferSecurityResultHandshakeMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferSecurityResultHandshakeMessageImpl>
    implements
        _$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWith<$Res> {
  __$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWithImpl(
      _$RemoteFrameBufferSecurityResultHandshakeMessageImpl _value,
      $Res Function(_$RemoteFrameBufferSecurityResultHandshakeMessageImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$RemoteFrameBufferSecurityResultHandshakeMessageImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferSecurityResultHandshakeMessageImpl
    extends _RemoteFrameBufferSecurityResultHandshakeMessage {
  const _$RemoteFrameBufferSecurityResultHandshakeMessageImpl(
      {required this.success})
      : super._();

  @override
  final bool success;

  @override
  String toString() {
    return 'RemoteFrameBufferSecurityResultHandshakeMessage(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferSecurityResultHandshakeMessageImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWith<
          _$RemoteFrameBufferSecurityResultHandshakeMessageImpl>
      get copyWith =>
          __$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWithImpl<
                  _$RemoteFrameBufferSecurityResultHandshakeMessageImpl>(
              this, _$identity);
}

abstract class _RemoteFrameBufferSecurityResultHandshakeMessage
    extends RemoteFrameBufferSecurityResultHandshakeMessage {
  const factory _RemoteFrameBufferSecurityResultHandshakeMessage(
          {required final bool success}) =
      _$RemoteFrameBufferSecurityResultHandshakeMessageImpl;
  const _RemoteFrameBufferSecurityResultHandshakeMessage._() : super._();

  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferSecurityResultHandshakeMessageImplCopyWith<
          _$RemoteFrameBufferSecurityResultHandshakeMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
