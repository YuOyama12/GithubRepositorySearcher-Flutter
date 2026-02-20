import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/api_handler.dart';

part 'fetch_user_provider.g.dart';

@riverpod
class FetchUser extends _$FetchUser {
  @override
  Future<UserResponse?> build(int userId) async {
    final result = await Future.microtask(
      () => ApiHandler().execute(
        ref: ref,
        request: () =>
            ref.read(userRepositoryProvider).fetchUserById(userId: userId),
      ),
    );
    return (result.hasValue) ? Future.value(result.value) : null;
  }
}
