import 'package:github_repository_searcher/data/service/api_client/api_client.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repository/repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(apiClient);
});

class UserRepository {
  final ApiClient apiClient;

  UserRepository(this.apiClient);

  Future<UserResponse> fetchUserById({required int userId}) async {
    return apiClient.fetchUserById(id: userId);
  }

  Future<List<Repository>> fetchRepositoriesByUser({
    required String userName,
  }) async {
    return apiClient.fetchUserRepositories(userName: userName);
  }

  Future<UserResponse> fetchMyInfo() async {
    return apiClient.fetchMyInfo();
  }
}
