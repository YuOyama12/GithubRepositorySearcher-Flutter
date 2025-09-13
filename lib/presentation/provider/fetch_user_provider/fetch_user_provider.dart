import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_user_provider.g.dart';

@riverpod
Future<UserResponse> fetchUser(Ref ref, {required int userId}) async {
    final userRepository = ref.watch(userRepositoryProvider);
    return await userRepository.fetchUserById(userId: userId);
}