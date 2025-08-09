import 'package:dio/dio.dart';

class AppDio extends DioMixin {
  factory AppDio()  {
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
      ..interceptors.add(
        //FIXME: printではなくログパッケージを採用する。
          InterceptorsWrapper(
            onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
              print('######## Request Log ########');
              print('--> ${options.method} ${options.path}');
              print('URL: ${options.uri}');
              print('Headers: ${options.headers}');
              print('Request Data: ${options.data}');
              return handler.next(options);
            },
            onResponse: (Response response, ResponseInterceptorHandler handler) {
              print('######## Response Log ########');
              print('<-- ${response.statusCode} ${response.requestOptions.path}');
              print('Headers: ${response.headers}');
              print('Response Data: ${response.data}');
              return handler.next(response);
            },
            onError: (DioException e, ErrorInterceptorHandler handler) {
              print('######## Error Log ########');
              print('<-- Error --> ${e.message}');
              return handler.next(e);
            },
          ),
      );
    _instance = dio;
    return dio;
  }

  AppDio._();

  static AppDio? _instance;
}