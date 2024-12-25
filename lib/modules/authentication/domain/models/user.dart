import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User  {
  const factory User({
    required int id,
    @JsonKey(name: "full_name") @Default("No Name") String name,
    required String email,
    @JsonKey(name: "phone_number") required String phone,
    @JsonKey(name: "profile_image")
    @Default("https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611704.jpg?t=st=1729946429~exp=1729950029~hmac=b1d70e082c8fd023371573f2492708920cf23f7992995dafaf9ed7eaf8b6e303&w=1380")
    String profileImage,
    @JsonKey(name: "phone_verified") @Default(false) bool phoneVerified,
    @JsonKey(name: "email_verified") @Default(false) bool emailVerified,
    @JsonKey(name: "last_active") DateTime? lastActive,
    @JsonKey(name: "is_admin") @Default(false) bool isAdmin,
  }) = _User ;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserUpdateData with _$UserUpdateData {
  const factory UserUpdateData({
    @JsonKey(name: "full_name") String? name,
    @JsonKey(name: "store_name") String? storeName,
    String? email,
    String? phone,
    @JsonKey(includeFromJson: false, includeToJson: false) File? profileImage,
    String? country,
  }) = _UserUpdateData;

  factory UserUpdateData.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateDataFromJson(json);
}