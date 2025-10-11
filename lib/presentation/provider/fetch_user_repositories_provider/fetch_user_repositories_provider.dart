import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repository/repository.dart';
import 'package:github_repository_searcher/presentation/provider/core/api_dispatcher.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/base_api_state_provider.dart';

part 'fetch_user_repositories_provider.g.dart';

@riverpod
class FetchUserRepositories extends BaseApiState<List<Repository>, String> {
  @override
  bool shouldCallApiOnBuilding() => true;

  @override
  Future<List<Repository>?> build(String request) => super.build(request);

  @override
  Future<void> fetch(String request) async {
    ApiDispatcher<List<Repository>>(
      ref: ref,
      request: () => ref
          .read(userRepositoryProvider)
          .fetchRepositoriesByUser(userName: request),
      onSuccess: (data) {
        state = data;
      },
    );
  }
}
