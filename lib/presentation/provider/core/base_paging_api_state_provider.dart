import 'package:github_repository_searcher/domain/entity/core/paging_data/paging_data.dart';
import 'package:github_repository_searcher/presentation/provider/core/base_api_state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../loading_state_controller.dart';

abstract class BasePagingApiState<
  Res extends PagingDataResponse,
  Req extends PagingDataRequest
>
    extends BaseApiState<Res?, Req> {
  Req? _latestPagingDataRequestCache;

  @override
  Future<Res?> callApi(Req request);

  @override
  bool shouldCallApiOnBuilding();

  Res? mergeList(Res? oldData, Res? newData);

  bool isTerminal();

  @override
  Future<Res?> build(Req request) async {
    if (shouldCallApiOnBuilding()) {
      Future.microtask(() => _execute(request));
    }
    return Future.value(null);
  }

  Future<void> fetch(Req request) async {
    _execute(request);
  }

  Future<void> _execute(Req request) async {
    _latestPagingDataRequestCache = request;

    if (_latestPagingDataRequestCache == null) {
      state = AsyncData(null);
    }

    final loadingController = ref.read(loadingStateController.notifier);

    try {
      loadingController.showLoading();
      state = await AsyncValue.guard(() async {
        final oldData = state.value;
        final newData = await callApi(request);
        return mergeList(oldData, newData);
      });
    } finally {
      loadingController.hideLoading();
    }
  }

  Future<void> fetchNextPage() async {
    if (state.isLoading || state.isRefreshing || isTerminal()) {
      return;
    }

    final request = _latestPagingDataRequestCache;
    if (request != null) {
      state = AsyncLoading();
      _execute(request.incPage());
    }
  }

  Future<void> manualRefresh() async {
    state = AsyncData(null);
    final request = _latestPagingDataRequestCache;
    if (request != null) {
      _execute(request.resetPage());
    }
  }
}
