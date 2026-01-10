import 'package:github_repository_searcher/data/service/api_client/api_client.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:github_repository_searcher/domain/entity/type/search/sort_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchRepoRepositoryProvider = Provider<SearchRepoRepository>((ref) {
  return SearchRepoRepository(apiClient);
});

class SearchRepoRepository {
  final ApiClient apiClient;

  SearchRepoRepository(this.apiClient);

  Future<RepositoriesResponse> searchRepositories({
    required String query,
    int? page,
    SortType? sort,
    bool? isDesc,
  }) async {
    return apiClient.fetchRepositoriesByQuery(
      query: query,
      page: page,
      sort: sort?.query,
      order: (isDesc == false) ? 'asc' : null,
    );
  }
}
