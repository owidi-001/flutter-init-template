// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OTPRequestPayloadImpl _$$OTPRequestPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OTPRequestPayloadImpl(
      channel: json['channel'] as String,
      receiver: json['receiver'] as String,
      purpose: $enumDecode(_$OTPPurposeEnumMap, json['purpose']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$OTPRequestPayloadImplToJson(
        _$OTPRequestPayloadImpl instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'receiver': instance.receiver,
      'purpose': _$OTPPurposeEnumMap[instance.purpose]!,
      'value': instance.value,
    };

const _$OTPPurposeEnumMap = {
  OTPPurpose.RESET_PASSWORD: 'RESET_PASSWORD',
  OTPPurpose.VERIFY_EMAIL: 'VERIFY_EMAIL',
  OTPPurpose.NEW_USER_VERIFY_PHONE: 'NEW_USER_VERIFY_PHONE',
  OTPPurpose.ADMIN_LOGIN: 'ADMIN_LOGIN',
};
