import 'dart:io';

import 'package:dio/dio.dart';
import 'package:route_mate/core/data/failure/failure.dart';

class ErrorHandler {
  final DioException error;

  ErrorHandler(this.error);

  Failure handle() {
    // Check for null safety
    if (error.response == null) {
      return const Failure(message: 'Network error');
    }

    // Extract error message
    final errorMessage = _extractErrorMessage(error.response);

    // Handle specific error types
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const Failure(message: 'Request timeout!');
      case DioExceptionType.cancel:
        return const Failure(message: 'Request canceled');
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        switch (statusCode) {
          case HttpStatus.badRequest:
            return Failure(
                message: errorMessage ?? 'Bad request', code: statusCode);
          case HttpStatus.unauthorized:
            return Failure(
                message: errorMessage ?? 'Unauthorized', code: statusCode);
          case HttpStatus.forbidden:
            return Failure(
                message: errorMessage ?? 'Forbidden', code: statusCode);
          case HttpStatus.notFound:
            return Failure(
                message: errorMessage ?? 'Resource not found',
                code: statusCode);
          case HttpStatus.internalServerError:
            return Failure(
                message: errorMessage ?? 'Internal server error',
                code: statusCode);
          default:
            return Failure(message: 'Error $statusCode', code: statusCode);
        }
      default:
        return const Failure(message: 'Network error');
    }
  }

  String? _extractErrorMessage(Response? response) {
    if (response == null) return null;
    final data = response.data;
    if (data is Map<String, dynamic>) {
      return data['message'];
    }
    return null;
  }
}
