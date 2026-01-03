import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/api_dispatcher.dart';
import '../core/base_api_state_provider.dart';

part 'fetch_my_info_provider.g.dart';

@riverpod
class FetchMyInfo extends BaseApiState<UserResponse, dynamic> {
  @override
  bool shouldCallApiOnBuilding() => true;

  @override
  Future<UserResponse?> build(dynamic request) => super.build(request);

  @override
  Future<void> fetch(dynamic request) async {
    ApiDispatcher<UserResponse>(
      ref: ref,
      request: () => ref.read(userRepositoryProvider).fetchMyInfo(),
      onSuccess: (data) {
        state = data;
      },
    );
  }
}
