import 'package:dio/dio.dart';
import 'local_storage.dart';

Dio getDioInstance() {
  Dio dio = Dio(
    BaseOptions(baseUrl: "https://api.dynocrm.com/api/v1/"),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = LocalStorageService().read(
          LocalStorageKeys.accessToken,
        );

        if (token != null) {
          options.headers['Authorization'] = "Bearer $token";
        }

        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        return handler.next(e);
      },
    ),
  );

  return dio;
}
