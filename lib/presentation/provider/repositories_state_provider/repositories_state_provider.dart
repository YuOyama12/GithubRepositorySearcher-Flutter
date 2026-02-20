import 'package:github_repository_searcher/domain/entity/request/search_repositories_request/search_repositories_request.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:github_repository_searcher/domain/entity/type/search/sort_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repository/search_repo_repository.dart';
import '../core/api_handler.dart';

part 'repositories_state_provider.g.dart';

@riverpod
class RepositoriesState extends _$RepositoriesState {
  SearchRepositoriesRequest? latestPagingDataRequestCache;

  String? _latestQueryCache;
  String get latestQuery => _latestQueryCache ?? '';

  @override
  FutureOr<RepositoriesResponse?> build() => null;

  bool isTerminal() {
    return state.value?.items.length == state.value?.totalCount;
  }

  Future<void> fetch(SearchRepositoriesRequest request) async {
    if (_latestQueryCache == null || _latestQueryCache != request.query) {
      state = AsyncData(null);
      _latestQueryCache = request.query;
    }
    latestPagingDataRequestCache = request;

    final result = await ApiHandler().execute(
      ref: ref,
      request: () => ref
          .read(searchRepoRepositoryProvider)
          .searchRepositories(
            query: request.query,
            page: request.page,
            sort: request.sort,
            isDesc: request.isDesc,
          ),
    );

    if (!result.hasError) {
      final oldData = state.value;
      final newData = result.value;

      final mergedData =
          state.value?.copyWith(
            items: (oldData?.items ?? []) + (newData?.items ?? []),
          ) ??
          newData;
      state = AsyncData(mergedData);
    }
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

  Future<void> fetchNextPage() async {
    if (state.isLoading || state.isRefreshing || isTerminal()) {
      return;
    }

    final request = latestPagingDataRequestCache;
    if (request != null) {
      state = AsyncLoading();
      fetch(request.incPage());
    }
  }

  Future<void> manualRefresh() async {
    state = AsyncData(null);
    final request = latestPagingDataRequestCache;
    if (request != null) {
      fetch(request.resetPage());
    }
  }
}
