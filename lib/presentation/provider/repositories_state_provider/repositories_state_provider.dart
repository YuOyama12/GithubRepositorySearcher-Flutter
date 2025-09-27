import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repository/search_repo_repository.dart';
import '../loading_progress_controller.dart';

part 'repositories_state_provider.g.dart';

@riverpod
class RepositoriesState extends _$RepositoriesState {
  @override
  Future<RepositoriesResponse?> build() => Future.value(null);

  String? _latestQueryCache;
  int? _latestPageRequestCache;

  bool _isTerminal() {
    return state.value?.items.length == state.value?.totalCount;
  }

  Future<void> searchRepositories({required String query, int? page}) async {
    if (_latestQueryCache == null || _latestQueryCache != query) {
      state = AsyncData(null);
      _latestQueryCache = query;
    }
    _latestPageRequestCache = page;

    final loadingController = ref.read(loadingProgressController.notifier);

    try {
      loadingController.setLoading(isLoading: true);
      state = await AsyncValue.guard(() async {
        final current = state.value?.items;
        final newResult = await ref
            .read(searchRepoRepositoryProvider)
            .searchRepositories(query: query, page: page);
        return state.value?.copyWith(
              items: (current ?? []) + newResult.items,
            ) ??
            newResult;
      });
    } finally {
      loadingController.setLoading(isLoading: false);
    }
  }

  Future<void> fetchNextPage() async {
    if (state.isLoading || state.isRefreshing || _isTerminal()) {
      return;
    }
    state = AsyncLoading();

    searchRepositories(
      query: _latestQueryCache ?? '',
      page: (_latestPageRequestCache ?? 1) + 1,
    );
  }
}