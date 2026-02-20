import 'package:github_repository_searcher/data/repository/auth_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:github_repository_searcher/presentation/provider/access_token_provider/access_token_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/api_handler.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<UserResponse?> build() => null;

  Future<void> postToken(String token) async {
    // 不正確なトークンを送らないようにトークン情報を削除しておく。
    await ref.read(accessTokenProvider.notifier).updateToken(null);
    state = await ApiHandler().execute(
      ref: ref,
      request: () =>
          ref.read(authRepositoryProvider).auth(header: 'Bearer $token'),
    );

    if (!state.hasError && ref.mounted) {
      await ref.read(accessTokenProvider.notifier).updateToken(token);
    }
  }
}
