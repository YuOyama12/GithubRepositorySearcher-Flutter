import 'package:github_repository_searcher/domain/entity/request/search_repositories_request/search_repositories_request.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:github_repository_searcher/presentation/provider/core/base_paging_api_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repository/search_repo_repository.dart';

part 'repositories_state_provider.g.dart';

@riverpod
class RepositoriesState
    extends
        BasePagingApiState<RepositoriesResponse, SearchRepositoriesRequest> {
  String? _latestQueryCache;

  @override
  Future<RepositoriesResponse?> build(SearchRepositoriesRequest request) =>
      super.build(request);

  @override
  bool shouldCallApiOnBuilding() => false;

  @override
  bool isTerminal() {
    return state.value?.items.length == state.value?.totalCount;
  }

  Future<void> searchRepositories({required String query}) async {
    if (_latestQueryCache == null || _latestQueryCache != query) {
      state = AsyncData(null);
      _latestQueryCache = query;
    }
    super.fetch(SearchRepositoriesRequest(query: query, page: null));
  }

  @override
  Future<RepositoriesResponse?> callApi(SearchRepositoriesRequest request) {
    return ref
        .read(searchRepoRepositoryProvider)
        .searchRepositories(query: request.query, page: request.page);
  }

  @override
  RepositoriesResponse? mergeList(
    RepositoriesResponse? oldData,
    RepositoriesResponse? newData,
  ) {
    return state.value?.copyWith(
          items: (oldData?.items ?? []) + (newData?.items ?? []),
        ) ??
        newData;
  }
}
