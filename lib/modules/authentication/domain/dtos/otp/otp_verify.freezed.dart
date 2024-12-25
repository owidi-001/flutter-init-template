// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OTPVerifyPayload _$OTPVerifyPayloadFromJson(Map<String, dynamic> json) {
  return _OTPVerifyPayload.fromJson(json);
}

/// @nodoc
mixin _$OTPVerifyPayload {
  String get code => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  OTPPurpose get purpose => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this OTPVerifyPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OTPVerifyPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OTPVerifyPayloadCopyWith<OTPVerifyPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPVerifyPayloadCopyWith<$Res> {
  factory $OTPVerifyPayloadCopyWith(
          OTPVerifyPayload value, $Res Function(OTPVerifyPayload) then) =
      _$OTPVerifyPayloadCopyWithImpl<$Res, OTPVerifyPayload>;
  @useResult
  $Res call(
      {String code, String receiver, OTPPurpose purpose, String? password});
}

/// @nodoc
class _$OTPVerifyPayloadCopyWithImpl<$Res, $Val extends OTPVerifyPayload>
    implements $OTPVerifyPayloadCopyWith<$Res> {
  _$OTPVerifyPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OTPVerifyPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? receiver = null,
    Object? purpose = null,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as OTPPurpose,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OTPVerifyPayloadImplCopyWith<$Res>
    implements $OTPVerifyPayloadCopyWith<$Res> {
  factory _$$OTPVerifyPayloadImplCopyWith(_$OTPVerifyPayloadImpl value,
          $Res Function(_$OTPVerifyPayloadImpl) then) =
      __$$OTPVerifyPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code, String receiver, OTPPurpose purpose, String? password});
}

/// @nodoc
class __$$OTPVerifyPayloadImplCopyWithImpl<$Res>
    extends _$OTPVerifyPayloadCopyWithImpl<$Res, _$OTPVerifyPayloadImpl>
    implements _$$OTPVerifyPayloadImplCopyWith<$Res> {
  __$$OTPVerifyPayloadImplCopyWithImpl(_$OTPVerifyPayloadImpl _value,
      $Res Function(_$OTPVerifyPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of OTPVerifyPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? receiver = null,
    Object? purpose = null,
    Object? password = freezed,
  }) {
    return _then(_$OTPVerifyPayloadImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as OTPPurpose,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPVerifyPayloadImpl implements _OTPVerifyPayload {
  const _$OTPVerifyPayloadImpl(
      {required this.code,
      required this.receiver,
      required this.purpose,
      this.password});

  factory _$OTPVerifyPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPVerifyPayloadImplFromJson(json);

  @override
  final String code;
  @override
  final String receiver;
  @override
  final OTPPurpose purpose;
  @override
  final String? password;

  @override
  String toString() {
    return 'OTPVerifyPayload(code: $code, receiver: $receiver, purpose: $purpose, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPVerifyPayloadImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, receiver, purpose, password);

  /// Create a copy of OTPVerifyPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPVerifyPayloadImplCopyWith<_$OTPVerifyPayloadImpl> get copyWith =>
      __$$OTPVerifyPayloadImplCopyWithImpl<_$OTPVerifyPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPVerifyPayloadImplToJson(
      this,
    );
  }
}

abstract class _OTPVerifyPayload implements OTPVerifyPayload {
  const factory _OTPVerifyPayload(
      {required final String code,
      required final String receiver,
      required final OTPPurpose purpose,
      final String? password}) = _$OTPVerifyPayloadImpl;

  factory _OTPVerifyPayload.fromJson(Map<String, dynamic> json) =
      _$OTPVerifyPayloadImpl.fromJson;

  @override
  String get code;
  @override
  String get receiver;
  @override
  OTPPurpose get purpose;
  @override
  String? get password;

  /// Create a copy of OTPVerifyPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OTPVerifyPayloadImplCopyWith<_$OTPVerifyPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OTPRequestPayload _$OTPRequestPayloadFromJson(Map<String, dynamic> json) {
  return _OTPRequestPayload.fromJson(json);
}

/// @nodoc
mixin _$OTPRequestPayload {
  OTPChannels get channel => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  OTPPurpose get purpose => throw _privateConstructorUsedError;

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
      {OTPChannels channel,
      String receiver,
      String? value,
      OTPPurpose purpose});
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
    Object? value = freezed,
    Object? purpose = null,
  }) {
    return _then(_value.copyWith(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as OTPChannels,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as OTPPurpose,
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
      {OTPChannels channel,
      String receiver,
      String? value,
      OTPPurpose purpose});
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
    Object? value = freezed,
    Object? purpose = null,
  }) {
    return _then(_$OTPRequestPayloadImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as OTPChannels,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as OTPPurpose,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPRequestPayloadImpl implements _OTPRequestPayload {
  const _$OTPRequestPayloadImpl(
      {required this.channel,
      required this.receiver,
      this.value,
      required this.purpose});

  factory _$OTPRequestPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPRequestPayloadImplFromJson(json);

  @override
  final OTPChannels channel;
  @override
  final String receiver;
  @override
  final String? value;
  @override
  final OTPPurpose purpose;

  @override
  String toString() {
    return 'OTPRequestPayload(channel: $channel, receiver: $receiver, value: $value, purpose: $purpose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPRequestPayloadImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, channel, receiver, value, purpose);

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
      {required final OTPChannels channel,
      required final String receiver,
      final String? value,
      required final OTPPurpose purpose}) = _$OTPRequestPayloadImpl;

  factory _OTPRequestPayload.fromJson(Map<String, dynamic> json) =
      _$OTPRequestPayloadImpl.fromJson;

  @override
  OTPChannels get channel;
  @override
  String get receiver;
  @override
  String? get value;
  @override
  OTPPurpose get purpose;

  /// Create a copy of OTPRequestPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OTPRequestPayloadImplCopyWith<_$OTPRequestPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
