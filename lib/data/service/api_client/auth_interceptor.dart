import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:github_repository_searcher/domain/entity/type/storage_key_type.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // TODO: ベストプラクティスかどうかが不明だがrefを使ってSecureStorageにアクセスさせたい。
    final token = await FlutterSecureStorage().read(
      key: StorageKeyType.accessToken.name,
    );

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }
}
