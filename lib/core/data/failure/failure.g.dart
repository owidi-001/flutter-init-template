// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailureImpl _$$FailureImplFromJson(Map<String, dynamic> json) =>
    _$FailureImpl(
      message: json['message'] as String,
      code: (json['code'] as num?)?.toInt(),
      value: json['value'] as String?,
      description: json['description'] as String?,
      precondition: json['precondition'] as String?,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$FailureImplToJson(_$FailureImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'value': instance.value,
      'description': instance.description,
      'precondition': instance.precondition,
      'detail': instance.detail,
    };
