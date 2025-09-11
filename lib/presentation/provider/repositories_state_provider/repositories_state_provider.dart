import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repository/search_repo_repository.dart';
import '../loading_progress_controller.dart';

part 'repositories_state_provider.g.dart';

@riverpod
class RepositoriesState extends _$RepositoriesState {
  @override
  RepositoriesResponse? build() => null;

  Future<void> searchRepositories({
    required String query
  }) async {
    final searchRepoRepository = ref.watch(searchRepoRepositoryProvider);
    final loadingController = ref.read(loadingProgressController.notifier);

    try {
      loadingController.setLoading(isLoading: true);
      state = await searchRepoRepository.searchRepositories(query: query);
    } finally {
      loadingController.setLoading(isLoading: false);
    }
  }
}