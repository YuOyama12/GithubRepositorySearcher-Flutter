import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../loading_state_controller.dart';

abstract class BaseApiState<Res, Req> extends FamilyAsyncNotifier<Res?, Req> {
  Future<Res?> fetch(Req request);

  @override
  Future<Res?> build(Req request) async {
    Future.microtask(() => _callApi(request));
    return Future.value(null);
  }

  Future<void> _callApi(Req request) async {
    final loadingController = ref.read(loadingStateController.notifier);

    try {
      loadingController.showLoading();
      state = await AsyncValue.guard(() => fetch(request));
    } finally {
      loadingController.hideLoading();
    }
  }
}
