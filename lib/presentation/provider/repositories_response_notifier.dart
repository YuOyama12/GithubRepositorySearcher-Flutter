import 'package:github_repository_searcher/data/repository/search_repo_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:hooks_riverpod/legacy.dart';

final repositoriesResponseNotifierProvider =
StateNotifierProvider<RepositoriesResponseNotifier, RepositoriesResponse?>(
      (ref) {
    final searchRepoRepository = ref.watch(searchRepoRepositoryProvider);

    return RepositoriesResponseNotifier(
      searchRepoRepository: searchRepoRepository,
    );
  },
);

class RepositoriesResponseNotifier extends StateNotifier<RepositoriesResponse?> {
  final SearchRepoRepository searchRepoRepository;

  RepositoriesResponseNotifier({
    required this.searchRepoRepository,
  }) : super(null);

  Future<void> searchRepositories({
    required String query
  }) async {
    state = await searchRepoRepository.searchRepositories(query: query);
  }
}