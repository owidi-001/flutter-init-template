import 'package:route_mate/core/data/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiple_results.freezed.dart';

@freezed
class MultipleResult<T> with _$MultipleResult<T> {
  const factory MultipleResult.onError({
    required Failure error,
  }) = Error;

  const factory MultipleResult.onSuccess({
    required T data,
  }) = Success;
}
