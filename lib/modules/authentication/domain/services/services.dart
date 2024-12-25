import 'package:dio/dio.dart';
import 'package:route_mate/core/data/local/local.dart';
import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/modules/authentication/domain/dtos/login_dtos/login_data.dart';
import 'package:route_mate/modules/authentication/domain/dtos/login_dtos/login_response.dart';
import 'package:route_mate/modules/authentication/domain/dtos/otp/otp_verify.dart';
import 'package:route_mate/modules/authentication/domain/dtos/passwords_dtos/password_change.dart';
import 'package:route_mate/modules/authentication/domain/dtos/passwords_dtos/reset_response.dart';
import 'package:route_mate/modules/authentication/domain/dtos/passwords_dtos/reset_request.dart';
import 'package:route_mate/modules/authentication/domain/models/user.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  /// LOGIN SERVICE
  HttpResult<LoginResponse> login(LoginData request) => Http.post(
        "/auth/login/merchant/",
        request.toJson(),
        deserializer: (json) => LoginResponse.fromJson(json),
      ).then((value) {
        value.when(
          onError: (error) {
            //   log error
            debugPrint("Login failed");
            debugPrint(error.message);
          },
          onSuccess: (data) {
            debugPrint("Login success");
            debugPrint(data.token);
            LocalDataHandler.saveToken(data.token, data.refreshToken);
            // FirebasePushNotification.instance
            //     .sendDeviceTokenToServer(token.token);
          },
        );
        return value;
      });

  /// END LOGIN SERVICE

  ///''' PROFILE SERVICES '''
  // Get user profile
  HttpResult<User> fetchProfile() =>
      Http.get("/merchant/profile/", deserializer: (json) => User.fromJson(json));

  // Update profile
  HttpResult<User> updateProfile(UserUpdateData request) async {
    FormData data = FormData.fromMap(request.toJson());

    if (request.profileImage != null) {
      var image = await MultipartFile.fromFile(request.profileImage!.path);
      data.files.add(MapEntry('profile_image', image));
    }
    return Http.put("/merchant/profile/", data,
        deserializer: (json) => User.fromJson(json));
  }

  ///''' END PROFILE SERVICES '''
  ///
  /// CHANGE PASSWORD
  HttpResult<Map<String, dynamic>> changePassword(
          PasswordChangeRequest request) =>
      Http.post("/accounts/password-change/", request.toJson(),
          deserializer: (json) => json);

  // Request OTP
  HttpResult<String> requestOTP(OTPRequestPayload request) =>
      Http.post("/otp/request/", request.toJson(),
          deserializer: (json) => json["message"]);

  HttpResult<LoginResponse> verifyOTP(OTPVerifyPayload request) =>
      Http.post("/otp/verify/", request.toJson(),
          deserializer: (json) => LoginResponse.fromJson(json));

  // HttpResult<LoginResponse> verifyEmailOTP(OTPVerifyPayload request) =>
  //     Http.post("/otp/verify/",
  //         request.copyWith(purpose: OTPPurpose.VERIFY_EMAIL).toJson(),
  //         deserializer: (json) => LoginResponse.fromJson(json));

  // TODO implement api for reset
  HttpResult<ResetResponse> resetPassword(ResetRequest data) =>
      Http.post("/auth/password-reset", data.toJson(),
          deserializer: (json) => ResetResponse.fromJson(json));
}
