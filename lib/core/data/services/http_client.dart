part of 'service.dart';

class RequestInterceptor extends Interceptor {
  @override
  FutureOr<dynamic> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final authToken = AuthenticationRepository.instance.authToken;
    if (authToken != null && authToken.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $authToken";
    }
    options.headers['Accept'] = 'application/json';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      /// LOGOUT the user and clear the auth toke
      AuthenticationRepository.instance.logout();
    }
    super.onError(err, handler);
  }
}

///[Deserializer] takes in data and transform it to desired type[X]
typedef Deserializer<X> = X Function(dynamic data);
typedef HttpResult<X> = Future<MultipleResult<X>>;

class Http {
  static final dio = Dio(BaseOptions(
    baseUrl: BASE_URL,
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(milliseconds: TIMEOUT),
    sendTimeout: const Duration(milliseconds: TIMEOUT),
    receiveTimeout: const Duration(milliseconds: TIMEOUT),
  ))
    ..interceptors.addAll([
      HttpFormatter(
        loggingFilter: (request, response, error) {
      return true;
    },
      ),
      RequestInterceptor(),
    ]);
  static HttpResult<T> get<T>(
    String url, {
    Options? options,
    Deserializer<T>? deserializer,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final res =
          await dio.get(url, options: options, queryParameters: queryParams);
      return MultipleResult.onSuccess(
        data: deserializer != null ? deserializer(res.data) : res.data,
      );
    } on DioException catch (error) {
      return MultipleResult.onError(
        error: ErrorHandler(error).handle(),
      );
    } on Exception catch (error) {
      debugPrint(error.toString());
      return const MultipleResult.onError(
        error: Failure(message: "Unexpected error occurred"),
      );
    }
  }

  static HttpResult<T> post<T>(
    String url,
    dynamic data, {
    Options? options,
    Deserializer<T>? deserializer,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      debugPrint(data.toString());
      final res = await dio.post(url,
          data: data, options: options, queryParameters: queryParams);
      return MultipleResult.onSuccess(
        data: deserializer != null ? deserializer(res.data) : res.data,
      );
    } on DioException catch (error) {
      return MultipleResult.onError(
        error: ErrorHandler(error).handle(),
      );
    } on Exception catch (error) {
      debugPrint(error.toString());
      return const MultipleResult.onError(
        error: Failure(message: "Unexpected error occurred"),
      );
    }
  }

  static HttpResult<T> put<T>(
    String url,
    dynamic data, {
    Options? options,
    Deserializer<T>? deserializer,
  }) async {
    try {
      final res = await dio.put(url, data: data, options: options);
      return MultipleResult.onSuccess(
        data: deserializer != null ? deserializer(res.data) : res.data,
      );
    } on DioException catch (error) {
      return MultipleResult.onError(
        error: ErrorHandler(error).handle(),
      );
    } on Exception catch (error) {
      debugPrint(error.toString());
      return const MultipleResult.onError(
        error: Failure(message: "Unexpected error occurred"),
      );
    }
  }

  static HttpResult<T> patch<T>(
    String url,
    dynamic data, {
    Options? options,
    Deserializer<T>? deserializer,
  }) async {
    try {
      final res = await dio.patch(url, data: data, options: options);
      return MultipleResult.onSuccess(
        data: deserializer != null ? deserializer(res.data) : res.data,
      );
    } on DioException catch (error) {
      return MultipleResult.onError(
        error: ErrorHandler(error).handle(),
      );
    } on Exception catch (error) {
      debugPrint(error.toString());
      return const MultipleResult.onError(
        error: Failure(message: "Unexpected error occurred"),
      );
    }
  }

  static HttpResult<T> delete<T>(
    String url, {
    Options? options,
    Deserializer<T>? deserializer,
  }) async {
    try {
      final res = await dio.delete(url, options: options);
      return MultipleResult.onSuccess(
        data: deserializer != null ? deserializer(res.data) : res.data,
      );
    } on DioException catch (error) {
      return MultipleResult.onError(
        error: ErrorHandler(error).handle(),
      );
    } on Exception catch (error) {
      debugPrint(error.toString());
      return const MultipleResult.onError(
        error: Failure(message: "Unexpected error occurred"),
      );
    }
  }
}
