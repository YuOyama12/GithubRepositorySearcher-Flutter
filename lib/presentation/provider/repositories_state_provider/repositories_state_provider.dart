import 'package:github_repository_searcher/domain/entity/request/search_repositories_request/search_repositories_request.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:github_repository_searcher/domain/entity/type/search/sort_type.dart';
import 'package:github_repository_searcher/presentation/provider/core/base_paging_api_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repository/search_repo_repository.dart';
import '../core/api_dispatcher.dart';

part 'repositories_state_provider.g.dart';

@riverpod
class RepositoriesState
    extends
        BasePagingApiState<RepositoriesResponse, SearchRepositoriesRequest> {
  String? _latestQueryCache;
  String get latestQuery => _latestQueryCache ?? '';

  @override
  Future<RepositoriesResponse?> build(SearchRepositoriesRequest request) =>
      super.build(request);

  @override
  bool shouldCallApiOnBuilding() => false;

  @override
  bool isTerminal() {
    return state.value?.items.length == state.value?.totalCount;
  }

  @override
  Future<void> fetch(SearchRepositoriesRequest request) async {
    if (_latestQueryCache == null || _latestQueryCache != request.query) {
      state = AsyncData(null);
      _latestQueryCache = request.query;
    }
    latestPagingDataRequestCache = request;

    ApiDispatcher<RepositoriesResponse>(
      ref: ref,
      request: () => ref
          .read(searchRepoRepositoryProvider)
          .searchRepositories(
            query: request.query,
            page: request.page,
            sort: request.sort,
            isDesc: request.isDesc,
          ),
      onSuccess: (newData) {
        final oldData = state.value;
        final mergedData =
            state.value?.copyWith(
              items: (oldData?.items ?? []) + (newData.value?.items ?? []),
            ) ??
            newData.value;
        state = AsyncData(mergedData);
      },
    );
  }

  Future<void> refreshWithSortType(SortType sort, bool isDesc) async {
    if (state.isLoading || state.isRefreshing) {
      return;
    }

    final requestWithNewSortType = latestPagingDataRequestCache?.copyWith(
      page: null,
      sort: sort,
      isDesc: (sort.shouldIgnoreOrder) ? null : isDesc,
    );

    if (requestWithNewSortType != null) {
      state = AsyncData(null);
      fetch(requestWithNewSortType);
    }
  }
}
