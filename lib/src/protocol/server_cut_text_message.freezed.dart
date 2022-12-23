// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_cut_text_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferServerCutTextMessage {
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferServerCutTextMessageCopyWith<
          RemoteFrameBufferServerCutTextMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferServerCutTextMessageCopyWith<$Res> {
  factory $RemoteFrameBufferServerCutTextMessageCopyWith(
          RemoteFrameBufferServerCutTextMessage value,
          $Res Function(RemoteFrameBufferServerCutTextMessage) then) =
      _$RemoteFrameBufferServerCutTextMessageCopyWithImpl<$Res,
          RemoteFrameBufferServerCutTextMessage>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$RemoteFrameBufferServerCutTextMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferServerCutTextMessage>
    implements $RemoteFrameBufferServerCutTextMessageCopyWith<$Res> {
  _$RemoteFrameBufferServerCutTextMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferServerCutTextMessageCopyWith<$Res>
    implements $RemoteFrameBufferServerCutTextMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferServerCutTextMessageCopyWith(
          _$_RemoteFrameBufferServerCutTextMessage value,
          $Res Function(_$_RemoteFrameBufferServerCutTextMessage) then) =
      __$$_RemoteFrameBufferServerCutTextMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_RemoteFrameBufferServerCutTextMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferServerCutTextMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferServerCutTextMessage>
    implements _$$_RemoteFrameBufferServerCutTextMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferServerCutTextMessageCopyWithImpl(
      _$_RemoteFrameBufferServerCutTextMessage _value,
      $Res Function(_$_RemoteFrameBufferServerCutTextMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_RemoteFrameBufferServerCutTextMessage(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferServerCutTextMessage
    extends _RemoteFrameBufferServerCutTextMessage {
  const _$_RemoteFrameBufferServerCutTextMessage({required this.text})
      : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'RemoteFrameBufferServerCutTextMessage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferServerCutTextMessage &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferServerCutTextMessageCopyWith<
          _$_RemoteFrameBufferServerCutTextMessage>
      get copyWith => __$$_RemoteFrameBufferServerCutTextMessageCopyWithImpl<
          _$_RemoteFrameBufferServerCutTextMessage>(this, _$identity);
}

abstract class _RemoteFrameBufferServerCutTextMessage
    extends RemoteFrameBufferServerCutTextMessage {
  const factory _RemoteFrameBufferServerCutTextMessage(
      {required final String text}) = _$_RemoteFrameBufferServerCutTextMessage;
  const _RemoteFrameBufferServerCutTextMessage._() : super._();

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferServerCutTextMessageCopyWith<
          _$_RemoteFrameBufferServerCutTextMessage>
      get copyWith => throw _privateConstructorUsedError;
}
