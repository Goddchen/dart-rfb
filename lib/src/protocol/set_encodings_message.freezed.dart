// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_encodings_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferSetEncodingsMessage {
  Iterable<RemoteFrameBufferEncodingType> get encodingTypes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferSetEncodingsMessageCopyWith<
          RemoteFrameBufferSetEncodingsMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferSetEncodingsMessageCopyWith<$Res> {
  factory $RemoteFrameBufferSetEncodingsMessageCopyWith(
          RemoteFrameBufferSetEncodingsMessage value,
          $Res Function(RemoteFrameBufferSetEncodingsMessage) then) =
      _$RemoteFrameBufferSetEncodingsMessageCopyWithImpl<$Res,
          RemoteFrameBufferSetEncodingsMessage>;
  @useResult
  $Res call({Iterable<RemoteFrameBufferEncodingType> encodingTypes});
}

/// @nodoc
class _$RemoteFrameBufferSetEncodingsMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferSetEncodingsMessage>
    implements $RemoteFrameBufferSetEncodingsMessageCopyWith<$Res> {
  _$RemoteFrameBufferSetEncodingsMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodingTypes = null,
  }) {
    return _then(_value.copyWith(
      encodingTypes: null == encodingTypes
          ? _value.encodingTypes
          : encodingTypes // ignore: cast_nullable_to_non_nullable
              as Iterable<RemoteFrameBufferEncodingType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteFrameBufferSetEncodingsMessageImplCopyWith<$Res>
    implements $RemoteFrameBufferSetEncodingsMessageCopyWith<$Res> {
  factory _$$RemoteFrameBufferSetEncodingsMessageImplCopyWith(
          _$RemoteFrameBufferSetEncodingsMessageImpl value,
          $Res Function(_$RemoteFrameBufferSetEncodingsMessageImpl) then) =
      __$$RemoteFrameBufferSetEncodingsMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<RemoteFrameBufferEncodingType> encodingTypes});
}

/// @nodoc
class __$$RemoteFrameBufferSetEncodingsMessageImplCopyWithImpl<$Res>
    extends _$RemoteFrameBufferSetEncodingsMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferSetEncodingsMessageImpl>
    implements _$$RemoteFrameBufferSetEncodingsMessageImplCopyWith<$Res> {
  __$$RemoteFrameBufferSetEncodingsMessageImplCopyWithImpl(
      _$RemoteFrameBufferSetEncodingsMessageImpl _value,
      $Res Function(_$RemoteFrameBufferSetEncodingsMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodingTypes = null,
  }) {
    return _then(_$RemoteFrameBufferSetEncodingsMessageImpl(
      encodingTypes: null == encodingTypes
          ? _value.encodingTypes
          : encodingTypes // ignore: cast_nullable_to_non_nullable
              as Iterable<RemoteFrameBufferEncodingType>,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferSetEncodingsMessageImpl
    extends _RemoteFrameBufferSetEncodingsMessage {
  const _$RemoteFrameBufferSetEncodingsMessageImpl(
      {required this.encodingTypes})
      : super._();

  @override
  final Iterable<RemoteFrameBufferEncodingType> encodingTypes;

  @override
  String toString() {
    return 'RemoteFrameBufferSetEncodingsMessage(encodingTypes: $encodingTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferSetEncodingsMessageImpl &&
            const DeepCollectionEquality()
                .equals(other.encodingTypes, encodingTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(encodingTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferSetEncodingsMessageImplCopyWith<
          _$RemoteFrameBufferSetEncodingsMessageImpl>
      get copyWith => __$$RemoteFrameBufferSetEncodingsMessageImplCopyWithImpl<
          _$RemoteFrameBufferSetEncodingsMessageImpl>(this, _$identity);
}

abstract class _RemoteFrameBufferSetEncodingsMessage
    extends RemoteFrameBufferSetEncodingsMessage {
  const factory _RemoteFrameBufferSetEncodingsMessage(
      {required final Iterable<RemoteFrameBufferEncodingType>
          encodingTypes}) = _$RemoteFrameBufferSetEncodingsMessageImpl;
  const _RemoteFrameBufferSetEncodingsMessage._() : super._();

  @override
  Iterable<RemoteFrameBufferEncodingType> get encodingTypes;
  @override
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferSetEncodingsMessageImplCopyWith<
          _$RemoteFrameBufferSetEncodingsMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
