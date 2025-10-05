import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/api_dispatcher.dart';
import '../core/base_api_state_provider.dart';

part 'fetch_user_provider.g.dart';

@riverpod
class FetchUser extends BaseApiState<UserResponse, int> {
  @override
  bool shouldCallApiOnBuilding() => true;

  @override
  Future<UserResponse?> build(int request) => super.build(request);

  @override
  Future<void> fetch(int request) async {
    ApiDispatcher<UserResponse>(
      ref: ref,
      request: () =>
          ref.read(userRepositoryProvider).fetchUserById(userId: request),
      onSuccess: (data) {
        state = data;
      },
    );
  }
}
