// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_cut_text_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferClientCutTextMessage {
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferClientCutTextMessageCopyWith<
          RemoteFrameBufferClientCutTextMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferClientCutTextMessageCopyWith<$Res> {
  factory $RemoteFrameBufferClientCutTextMessageCopyWith(
          RemoteFrameBufferClientCutTextMessage value,
          $Res Function(RemoteFrameBufferClientCutTextMessage) then) =
      _$RemoteFrameBufferClientCutTextMessageCopyWithImpl<$Res,
          RemoteFrameBufferClientCutTextMessage>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$RemoteFrameBufferClientCutTextMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferClientCutTextMessage>
    implements $RemoteFrameBufferClientCutTextMessageCopyWith<$Res> {
  _$RemoteFrameBufferClientCutTextMessageCopyWithImpl(this._value, this._then);

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
abstract class _$$RemoteFrameBufferClientCutTextMessageImplCopyWith<$Res>
    implements $RemoteFrameBufferClientCutTextMessageCopyWith<$Res> {
  factory _$$RemoteFrameBufferClientCutTextMessageImplCopyWith(
          _$RemoteFrameBufferClientCutTextMessageImpl value,
          $Res Function(_$RemoteFrameBufferClientCutTextMessageImpl) then) =
      __$$RemoteFrameBufferClientCutTextMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$RemoteFrameBufferClientCutTextMessageImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferClientCutTextMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferClientCutTextMessageImpl>
    implements _$$RemoteFrameBufferClientCutTextMessageImplCopyWith<$Res> {
  __$$RemoteFrameBufferClientCutTextMessageImplCopyWithImpl(
      _$RemoteFrameBufferClientCutTextMessageImpl _value,
      $Res Function(_$RemoteFrameBufferClientCutTextMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$RemoteFrameBufferClientCutTextMessageImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferClientCutTextMessageImpl
    extends _RemoteFrameBufferClientCutTextMessage {
  const _$RemoteFrameBufferClientCutTextMessageImpl({required this.text})
      : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'RemoteFrameBufferClientCutTextMessage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferClientCutTextMessageImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferClientCutTextMessageImplCopyWith<
          _$RemoteFrameBufferClientCutTextMessageImpl>
      get copyWith => __$$RemoteFrameBufferClientCutTextMessageImplCopyWithImpl<
          _$RemoteFrameBufferClientCutTextMessageImpl>(this, _$identity);
}

abstract class _RemoteFrameBufferClientCutTextMessage
    extends RemoteFrameBufferClientCutTextMessage {
  const factory _RemoteFrameBufferClientCutTextMessage(
          {required final String text}) =
      _$RemoteFrameBufferClientCutTextMessageImpl;
  const _RemoteFrameBufferClientCutTextMessage._() : super._();

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferClientCutTextMessageImplCopyWith<
          _$RemoteFrameBufferClientCutTextMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
