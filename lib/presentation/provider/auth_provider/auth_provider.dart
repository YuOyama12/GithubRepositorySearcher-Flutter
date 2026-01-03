import 'package:github_repository_searcher/data/repository/auth_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:github_repository_searcher/presentation/provider/access_token_provider/access_token_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/api_dispatcher.dart';
import '../core/base_api_state_provider.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends BaseApiState<UserResponse, String> {
  @override
  bool shouldCallApiOnBuilding() => false;

  @override
  Future<UserResponse?> build(String request) => super.build(request);

  @override
  Future<void> fetch(String request) async {
    ApiDispatcher<UserResponse>(
      ref: ref,
      request: () async {
        // 不正確なトークンを送らないようにトークン情報を削除しておく。
        await ref.read(accessTokenProvider.notifier).updateToken(null);
        return ref.read(authRepositoryProvider).auth(header: 'Bearer $request');
      },
      onSuccess: (data) async {
        if (ref.mounted) {
          await ref.read(accessTokenProvider.notifier).updateToken(request);
        }

        state = data;
      },
    );
  }
}
