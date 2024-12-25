import 'package:freezed_annotation/freezed_annotation.dart';

part 'snack_message.freezed.dart';
part 'snack_message.g.dart';

enum SnackTone { error, success, warning, info }

@freezed
class SnackMessage with _$SnackMessage {
  const factory SnackMessage({
    required SnackTone tone,
    required String message,
  }) = _SnackMessage;

  factory SnackMessage.fromJson(Map<String, dynamic> json) => _$SnackMessageFromJson(json);
}
