import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/base_api_state_provider.dart';

part 'fetch_user_provider.g.dart';

@riverpod
class FetchUser extends BaseApiState<UserResponse, int> {
  @override
  Future<UserResponse?> build(int request) => super.build(request);

  @override
  Future<UserResponse?> fetch(int userId) async {
    return ref.read(userRepositoryProvider).fetchUserById(userId: userId);
  }
}
