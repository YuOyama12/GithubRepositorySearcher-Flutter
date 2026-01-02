import 'package:dio/dio.dart';
import 'package:github_repository_searcher/data/service/api_client/interceptor/auth_interceptor.dart';

class AppDio extends DioMixin {
  factory AppDio() {
    final instance = _instance;
    if (instance != null) {
      return instance;
    }
    final dio = AppDio._();
    final options = BaseOptions(
      baseUrl: 'https://api.github.com/',
      contentType: 'application/json',
    );

    dio
      ..options = options
      ..httpClientAdapter = HttpClientAdapter()
      ..interceptors.addAll([AuthInterceptor(), LogInterceptor()]);
    _instance = dio;
    return dio;
  }

  AppDio._();

  static AppDio? _instance;
}
