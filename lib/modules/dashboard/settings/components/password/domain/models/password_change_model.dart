import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_change_model.freezed.dart';
part 'password_change_model.g.dart';

@freezed
class PasswordChangeModel with _$PasswordChangeModel {
  const factory PasswordChangeModel({
    @JsonKey(name: "old_password") required String oldPassword,
    @JsonKey(name: "new_password") required String newPassword,
  }) = _PasswordChangeModel;

  factory PasswordChangeModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordChangeModelFromJson(json);
}
