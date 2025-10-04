import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/paging_data/paging_data.dart';

part 'search_repositories_request.freezed.dart';

@freezed
abstract class SearchRepositoriesRequest
    with
        _$SearchRepositoriesRequest,
        PagingDataRequest<SearchRepositoriesRequest> {
  const SearchRepositoriesRequest._();
  const factory SearchRepositoriesRequest({required String query, int? page}) =
      _SearchRepositoriesRequest;

  @override
  SearchRepositoriesRequest incPage() {
    return copyWith(page: (page ?? 1) + 1);
  }

  @override
  SearchRepositoriesRequest resetPage() {
    return copyWith(page: null);
  }
}
