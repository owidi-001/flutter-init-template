import 'package:route_mate/core/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verify.freezed.dart';
part 'otp_verify.g.dart';

@freezed
class OTPVerifyPayload with _$OTPVerifyPayload {
  const factory OTPVerifyPayload({
    required String code,
    required String receiver,
    required OTPPurpose purpose,
    String? password,
  }) = _OTPVerifyPayload;

  factory OTPVerifyPayload.fromJson(Map<String, dynamic> json) =>
      _$OTPVerifyPayloadFromJson(json);
}

@freezed
class OTPRequestPayload with _$OTPRequestPayload {
  const factory OTPRequestPayload({
    required OTPChannels channel,
    required String receiver,
    String? value,
    required OTPPurpose purpose,
  }) = _OTPRequestPayload;

  factory OTPRequestPayload.fromJson(Map<String, dynamic> json) =>
      _$OTPRequestPayloadFromJson(json);
}
