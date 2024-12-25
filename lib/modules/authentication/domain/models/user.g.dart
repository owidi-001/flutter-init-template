// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['full_name'] as String? ?? "No Name",
      email: json['email'] as String,
      phone: json['phone_number'] as String,
      profileImage: json['profile_image'] as String? ??
          "https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611704.jpg?t=st=1729946429~exp=1729950029~hmac=b1d70e082c8fd023371573f2492708920cf23f7992995dafaf9ed7eaf8b6e303&w=1380",
      phoneVerified: json['phone_verified'] as bool? ?? false,
      emailVerified: json['email_verified'] as bool? ?? false,
      lastActive: json['last_active'] == null
          ? null
          : DateTime.parse(json['last_active'] as String),
      isAdmin: json['is_admin'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.name,
      'email': instance.email,
      'phone_number': instance.phone,
      'profile_image': instance.profileImage,
      'phone_verified': instance.phoneVerified,
      'email_verified': instance.emailVerified,
      'last_active': instance.lastActive?.toIso8601String(),
      'is_admin': instance.isAdmin,
    };

_$UserUpdateDataImpl _$$UserUpdateDataImplFromJson(Map<String, dynamic> json) =>
    _$UserUpdateDataImpl(
      name: json['full_name'] as String?,
      storeName: json['store_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$UserUpdateDataImplToJson(
        _$UserUpdateDataImpl instance) =>
    <String, dynamic>{
      'full_name': instance.name,
      'store_name': instance.storeName,
      'email': instance.email,
      'phone': instance.phone,
      'country': instance.country,
    };
