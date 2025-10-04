import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../loading_state_controller.dart';

abstract class BaseApiState<Res, Req> extends FamilyAsyncNotifier<Res?, Req> {
  Future<Res?> callApi(Req request);

  /// build()のタイミングでAPI呼び出し処理を行うかどうか
  bool shouldCallApiOnBuilding();

  /// API呼び出し時にローディングインジケータを表示させるかどうか
  bool shouldShowLoading() => true;

  @override
  Future<Res?> build(Req request) async {
    if (shouldCallApiOnBuilding()) {
      Future.microtask(() => _execute(request));
    }
    return Future.value(null);
  }

  Future<void> _execute(Req request) async {
    final loadingController = (shouldShowLoading())
        ? ref.read(loadingStateController.notifier)
        : null;

    try {
      loadingController?.showLoading();
      state = await AsyncValue.guard(() => callApi(request));
    } finally {
      loadingController?.hideLoading();
    }
  }
}
