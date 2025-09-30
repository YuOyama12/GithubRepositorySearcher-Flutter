import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../loading_state_controller.dart';

part 'fetch_user_provider.g.dart';

@riverpod
class FetchUser extends _$FetchUser {
  @override
  Future<UserResponse?> build(int userId) {
    Future.microtask(() => _fetchUser(userId: userId));
    return Future.value(null);
  }

  Future<void> _fetchUser({required int userId}) async {
    final userRepository = ref.watch(userRepositoryProvider);
    final loadingController = ref.read(loadingStateController.notifier);

    try {
      loadingController.showLoading();
      state = await AsyncValue.guard(() async {
        return userRepository.fetchUserById(userId: userId);
      });
    } finally {
      loadingController.hideLoading();
    }
  }
}
