import 'package:github_repository_searcher/domain/entity/core/paging_data/paging_data.dart';
import 'package:github_repository_searcher/presentation/provider/core/base_api_state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BasePagingApiState<
  Res extends PagingDataResponse,
  Req extends PagingDataRequest
>
    extends BaseApiState<Res?, Req> {
  Req? latestPagingDataRequestCache;

  @override
  bool shouldCallApiOnBuilding();

  bool isTerminal();

  @override
  Future<Res?> build(Req request) async {
    if (shouldCallApiOnBuilding()) {
      Future.microtask(() => fetch(request));
    }
    return Future.value(null);
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
