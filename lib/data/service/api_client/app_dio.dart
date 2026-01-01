import 'package:dio/dio.dart';
import 'package:github_repository_searcher/data/service/api_client/auth_interceptor.dart';
import 'package:logger/logger.dart';

final _logger = Logger(
  printer: PrettyPrinter(colors: false, printEmojis: false),
);

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
      ..interceptors.addAll([
        AuthInterceptor(),
        InterceptorsWrapper(
          onRequest:
              (RequestOptions options, RequestInterceptorHandler handler) {
                _logger.i(_createRequestLog(options));
                return handler.next(options);
              },
          onResponse: (Response response, ResponseInterceptorHandler handler) {
            _logger.i(_createResponseLog(response));
            return handler.next(response);
          },
          onError: (DioException e, ErrorInterceptorHandler handler) {
            _logger.e(
              '######## Error Log ########',
              error: e,
              stackTrace: e.stackTrace,
            );
            return handler.next(e);
          },
        ),
      ]);
    _instance = dio;
    return dio;
  }

  AppDio._();

  static AppDio? _instance;

  static String _createRequestLog(RequestOptions options) {
    final buffer = StringBuffer();
    buffer.writeln('######## Request Log ########');
    buffer.writeln('${options.method} ${options.path}');
    buffer.writeln('URL: ${options.uri}');
    buffer.writeln('Headers: ${options.headers}');
    buffer.write('Request Data: ${options.data}');

    return buffer.toString();
  }

  static String _createResponseLog(Response response) {
    final buffer = StringBuffer();
    buffer.writeln('######## Response Log ########');
    buffer.writeln('${response.statusCode} ${response.requestOptions.path}');
    buffer.writeln('Headers: ${response.headers}');
    buffer.write('Response Data: ${response.data}');

    return buffer.toString();
  }
}
