// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordChangeModelImpl _$$PasswordChangeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordChangeModelImpl(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$PasswordChangeModelImplToJson(
        _$PasswordChangeModelImpl instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
