import 'package:github_repository_searcher/data/repository/search_repo_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:github_repository_searcher/presentation/provider/loading_progress_controller.dart';
import 'package:hooks_riverpod/legacy.dart';

final repositoriesResponseNotifierProvider =
StateNotifierProvider<RepositoriesResponseNotifier, RepositoriesResponse?>(
      (ref) {
    final searchRepoRepository = ref.watch(searchRepoRepositoryProvider);
    final loadingController = ref.read(loadingProgressController.notifier);

    return RepositoriesResponseNotifier(
      loadingController: loadingController,
      searchRepoRepository: searchRepoRepository,
    );
  },
);

class RepositoriesResponseNotifier extends StateNotifier<RepositoriesResponse?> {
  final LoadingProgressController loadingController;
  final SearchRepoRepository searchRepoRepository;

  RepositoriesResponseNotifier({
    required this.loadingController,
    required this.searchRepoRepository,
  }) : super(null);

  Future<void> searchRepositories({
    required String query
  }) async {
    try {
      loadingController.setLoading(isLoading: true);
      state = await searchRepoRepository.searchRepositories(query: query);
    } finally {
      loadingController.setLoading(isLoading: false);
    }
  }
}