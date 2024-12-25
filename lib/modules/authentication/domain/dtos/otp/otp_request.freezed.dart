// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OTPRequestPayload _$OTPRequestPayloadFromJson(Map<String, dynamic> json) {
  return _OTPRequestPayload.fromJson(json);
}

/// @nodoc
mixin _$OTPRequestPayload {
  String get channel => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  OTPPurpose get purpose => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this OTPRequestPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OTPRequestPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OTPRequestPayloadCopyWith<OTPRequestPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPRequestPayloadCopyWith<$Res> {
  factory $OTPRequestPayloadCopyWith(
          OTPRequestPayload value, $Res Function(OTPRequestPayload) then) =
      _$OTPRequestPayloadCopyWithImpl<$Res, OTPRequestPayload>;
  @useResult
  $Res call(
      {String channel, String receiver, OTPPurpose purpose, String value});
}

/// @nodoc
class _$OTPRequestPayloadCopyWithImpl<$Res, $Val extends OTPRequestPayload>
    implements $OTPRequestPayloadCopyWith<$Res> {
  _$OTPRequestPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OTPRequestPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? receiver = null,
    Object? purpose = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as OTPPurpose,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OTPRequestPayloadImplCopyWith<$Res>
    implements $OTPRequestPayloadCopyWith<$Res> {
  factory _$$OTPRequestPayloadImplCopyWith(_$OTPRequestPayloadImpl value,
          $Res Function(_$OTPRequestPayloadImpl) then) =
      __$$OTPRequestPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channel, String receiver, OTPPurpose purpose, String value});
}

/// @nodoc
class __$$OTPRequestPayloadImplCopyWithImpl<$Res>
    extends _$OTPRequestPayloadCopyWithImpl<$Res, _$OTPRequestPayloadImpl>
    implements _$$OTPRequestPayloadImplCopyWith<$Res> {
  __$$OTPRequestPayloadImplCopyWithImpl(_$OTPRequestPayloadImpl _value,
      $Res Function(_$OTPRequestPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of OTPRequestPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? receiver = null,
    Object? purpose = null,
    Object? value = null,
  }) {
    return _then(_$OTPRequestPayloadImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as OTPPurpose,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPRequestPayloadImpl implements _OTPRequestPayload {
  const _$OTPRequestPayloadImpl(
      {required this.channel,
      required this.receiver,
      required this.purpose,
      required this.value});

  factory _$OTPRequestPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPRequestPayloadImplFromJson(json);

  @override
  final String channel;
  @override
  final String receiver;
  @override
  final OTPPurpose purpose;
  @override
  final String value;

  @override
  String toString() {
    return 'OTPRequestPayload(channel: $channel, receiver: $receiver, purpose: $purpose, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPRequestPayloadImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, channel, receiver, purpose, value);

  /// Create a copy of OTPRequestPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPRequestPayloadImplCopyWith<_$OTPRequestPayloadImpl> get copyWith =>
      __$$OTPRequestPayloadImplCopyWithImpl<_$OTPRequestPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPRequestPayloadImplToJson(
      this,
    );
  }
}

abstract class _OTPRequestPayload implements OTPRequestPayload {
  const factory _OTPRequestPayload(
      {required final String channel,
      required final String receiver,
      required final OTPPurpose purpose,
      required final String value}) = _$OTPRequestPayloadImpl;

  factory _OTPRequestPayload.fromJson(Map<String, dynamic> json) =
      _$OTPRequestPayloadImpl.fromJson;

  @override
  String get channel;
  @override
  String get receiver;
  @override
  OTPPurpose get purpose;
  @override
  String get value;

  /// Create a copy of OTPRequestPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OTPRequestPayloadImplCopyWith<_$OTPRequestPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
