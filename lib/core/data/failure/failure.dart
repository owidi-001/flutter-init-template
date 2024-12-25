import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class Failure with _$Failure implements Exception {
  const factory Failure({
    required String message,
    int? code,
    String? value,
    String? description,
    String? precondition,
    String? detail,
  }) = _Failure;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json); // Use the generated fromJson factory
}
