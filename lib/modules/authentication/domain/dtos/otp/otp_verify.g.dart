// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OTPVerifyPayloadImpl _$$OTPVerifyPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OTPVerifyPayloadImpl(
      code: json['code'] as String,
      receiver: json['receiver'] as String,
      purpose: $enumDecode(_$OTPPurposeEnumMap, json['purpose']),
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$OTPVerifyPayloadImplToJson(
        _$OTPVerifyPayloadImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'receiver': instance.receiver,
      'purpose': _$OTPPurposeEnumMap[instance.purpose]!,
      'password': instance.password,
    };

const _$OTPPurposeEnumMap = {
  OTPPurpose.RESET_PASSWORD: 'RESET_PASSWORD',
  OTPPurpose.VERIFY_EMAIL: 'VERIFY_EMAIL',
  OTPPurpose.NEW_USER_VERIFY_PHONE: 'NEW_USER_VERIFY_PHONE',
  OTPPurpose.ADMIN_LOGIN: 'ADMIN_LOGIN',
};

_$OTPRequestPayloadImpl _$$OTPRequestPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OTPRequestPayloadImpl(
      channel: $enumDecode(_$OTPChannelsEnumMap, json['channel']),
      receiver: json['receiver'] as String,
      value: json['value'] as String?,
      purpose: $enumDecode(_$OTPPurposeEnumMap, json['purpose']),
    );

Map<String, dynamic> _$$OTPRequestPayloadImplToJson(
        _$OTPRequestPayloadImpl instance) =>
    <String, dynamic>{
      'channel': _$OTPChannelsEnumMap[instance.channel]!,
      'receiver': instance.receiver,
      'value': instance.value,
      'purpose': _$OTPPurposeEnumMap[instance.purpose]!,
    };

const _$OTPChannelsEnumMap = {
  OTPChannels.EMAIL: 'EMAIL',
  OTPChannels.SMS: 'SMS',
};
