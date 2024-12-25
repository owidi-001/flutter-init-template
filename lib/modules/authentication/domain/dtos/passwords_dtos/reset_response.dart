// OtpRequestResponse
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_response.freezed.dart';
part 'reset_response.g.dart';

@freezed
class ResetResponse with _$ResetResponse {
  const factory ResetResponse({required String email, required String message}) =
  _ResetResponse;

  factory ResetResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetResponseFromJson(json);
}
