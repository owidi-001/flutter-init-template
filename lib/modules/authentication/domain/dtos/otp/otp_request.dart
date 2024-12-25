import 'package:route_mate/core/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_request.freezed.dart';
part 'otp_request.g.dart';

@freezed
class OTPRequestPayload with _$OTPRequestPayload {
  const factory OTPRequestPayload({
    required String channel,
    required String receiver,
    required OTPPurpose purpose,
    required String value,
  }) = _OTPRequestPayload;

  factory OTPRequestPayload.fromJson(Map<String, dynamic> json) =>
      _$OTPRequestPayloadFromJson(json);
}
