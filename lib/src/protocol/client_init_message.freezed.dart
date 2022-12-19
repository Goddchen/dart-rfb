// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_init_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferClientInitMessage {
  bool get sharedFlag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferClientInitMessageCopyWith<
          RemoteFrameBufferClientInitMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferClientInitMessageCopyWith<$Res> {
  factory $RemoteFrameBufferClientInitMessageCopyWith(
          RemoteFrameBufferClientInitMessage value,
          $Res Function(RemoteFrameBufferClientInitMessage) then) =
      _$RemoteFrameBufferClientInitMessageCopyWithImpl<$Res,
          RemoteFrameBufferClientInitMessage>;
  @useResult
  $Res call({bool sharedFlag});
}

/// @nodoc
class _$RemoteFrameBufferClientInitMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferClientInitMessage>
    implements $RemoteFrameBufferClientInitMessageCopyWith<$Res> {
  _$RemoteFrameBufferClientInitMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedFlag = null,
  }) {
    return _then(_value.copyWith(
      sharedFlag: null == sharedFlag
          ? _value.sharedFlag
          : sharedFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferClientInitMessageCopyWith<$Res>
    implements $RemoteFrameBufferClientInitMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferClientInitMessageCopyWith(
          _$_RemoteFrameBufferClientInitMessage value,
          $Res Function(_$_RemoteFrameBufferClientInitMessage) then) =
      __$$_RemoteFrameBufferClientInitMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool sharedFlag});
}

/// @nodoc
class __$$_RemoteFrameBufferClientInitMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferClientInitMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferClientInitMessage>
    implements _$$_RemoteFrameBufferClientInitMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferClientInitMessageCopyWithImpl(
      _$_RemoteFrameBufferClientInitMessage _value,
      $Res Function(_$_RemoteFrameBufferClientInitMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedFlag = null,
  }) {
    return _then(_$_RemoteFrameBufferClientInitMessage(
      sharedFlag: null == sharedFlag
          ? _value.sharedFlag
          : sharedFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferClientInitMessage
    extends _RemoteFrameBufferClientInitMessage {
  const _$_RemoteFrameBufferClientInitMessage({required this.sharedFlag})
      : super._();

  @override
  final bool sharedFlag;

  @override
  String toString() {
    return 'RemoteFrameBufferClientInitMessage(sharedFlag: $sharedFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferClientInitMessage &&
            (identical(other.sharedFlag, sharedFlag) ||
                other.sharedFlag == sharedFlag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sharedFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferClientInitMessageCopyWith<
          _$_RemoteFrameBufferClientInitMessage>
      get copyWith => __$$_RemoteFrameBufferClientInitMessageCopyWithImpl<
          _$_RemoteFrameBufferClientInitMessage>(this, _$identity);
}

abstract class _RemoteFrameBufferClientInitMessage
    extends RemoteFrameBufferClientInitMessage {
  const factory _RemoteFrameBufferClientInitMessage(
      {required final bool sharedFlag}) = _$_RemoteFrameBufferClientInitMessage;
  const _RemoteFrameBufferClientInitMessage._() : super._();

  @override
  bool get sharedFlag;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferClientInitMessageCopyWith<
          _$_RemoteFrameBufferClientInitMessage>
      get copyWith => throw _privateConstructorUsedError;
}
