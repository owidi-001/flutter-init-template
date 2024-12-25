import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_change.freezed.dart';
part 'password_change.g.dart';

@freezed
class PasswordChangeRequest with _$PasswordChangeRequest {
  const factory PasswordChangeRequest(
      {@JsonKey(name: "old_password") required String oldPassword,
        @JsonKey(name: "new_password") required String newPassword}) =
  _PasswordChangeRequest;

  factory PasswordChangeRequest.fromJson(Map<String, dynamic> json) =>
      _$PasswordChangeRequestFromJson(json);
}
