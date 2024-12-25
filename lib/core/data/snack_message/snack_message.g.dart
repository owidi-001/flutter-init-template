// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snack_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnackMessageImpl _$$SnackMessageImplFromJson(Map<String, dynamic> json) =>
    _$SnackMessageImpl(
      tone: $enumDecode(_$SnackToneEnumMap, json['tone']),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$SnackMessageImplToJson(_$SnackMessageImpl instance) =>
    <String, dynamic>{
      'tone': _$SnackToneEnumMap[instance.tone]!,
      'message': instance.message,
    };

const _$SnackToneEnumMap = {
  SnackTone.error: 'error',
  SnackTone.success: 'success',
  SnackTone.warning: 'warning',
  SnackTone.info: 'info',
};
