// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordChangeRequestImpl _$$PasswordChangeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordChangeRequestImpl(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$PasswordChangeRequestImplToJson(
        _$PasswordChangeRequestImpl instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
