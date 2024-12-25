// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snack_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnackMessage _$SnackMessageFromJson(Map<String, dynamic> json) {
  return _SnackMessage.fromJson(json);
}

/// @nodoc
mixin _$SnackMessage {
  SnackTone get tone => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this SnackMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnackMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnackMessageCopyWith<SnackMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackMessageCopyWith<$Res> {
  factory $SnackMessageCopyWith(
          SnackMessage value, $Res Function(SnackMessage) then) =
      _$SnackMessageCopyWithImpl<$Res, SnackMessage>;
  @useResult
  $Res call({SnackTone tone, String message});
}

/// @nodoc
class _$SnackMessageCopyWithImpl<$Res, $Val extends SnackMessage>
    implements $SnackMessageCopyWith<$Res> {
  _$SnackMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnackMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tone = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      tone: null == tone
          ? _value.tone
          : tone // ignore: cast_nullable_to_non_nullable
              as SnackTone,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnackMessageImplCopyWith<$Res>
    implements $SnackMessageCopyWith<$Res> {
  factory _$$SnackMessageImplCopyWith(
          _$SnackMessageImpl value, $Res Function(_$SnackMessageImpl) then) =
      __$$SnackMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnackTone tone, String message});
}

/// @nodoc
class __$$SnackMessageImplCopyWithImpl<$Res>
    extends _$SnackMessageCopyWithImpl<$Res, _$SnackMessageImpl>
    implements _$$SnackMessageImplCopyWith<$Res> {
  __$$SnackMessageImplCopyWithImpl(
      _$SnackMessageImpl _value, $Res Function(_$SnackMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tone = null,
    Object? message = null,
  }) {
    return _then(_$SnackMessageImpl(
      tone: null == tone
          ? _value.tone
          : tone // ignore: cast_nullable_to_non_nullable
              as SnackTone,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnackMessageImpl implements _SnackMessage {
  const _$SnackMessageImpl({required this.tone, required this.message});

  factory _$SnackMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnackMessageImplFromJson(json);

  @override
  final SnackTone tone;
  @override
  final String message;

  @override
  String toString() {
    return 'SnackMessage(tone: $tone, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackMessageImpl &&
            (identical(other.tone, tone) || other.tone == tone) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tone, message);

  /// Create a copy of SnackMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackMessageImplCopyWith<_$SnackMessageImpl> get copyWith =>
      __$$SnackMessageImplCopyWithImpl<_$SnackMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnackMessageImplToJson(
      this,
    );
  }
}

abstract class _SnackMessage implements SnackMessage {
  const factory _SnackMessage(
      {required final SnackTone tone,
      required final String message}) = _$SnackMessageImpl;

  factory _SnackMessage.fromJson(Map<String, dynamic> json) =
      _$SnackMessageImpl.fromJson;

  @override
  SnackTone get tone;
  @override
  String get message;

  /// Create a copy of SnackMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnackMessageImplCopyWith<_$SnackMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
