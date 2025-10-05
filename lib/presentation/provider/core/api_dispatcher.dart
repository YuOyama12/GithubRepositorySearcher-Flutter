import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../loading_state_controller.dart';

/// Provider内でAPIを呼び出すための汎用クラス
class ApiDispatcher<T> {
  final Ref ref;
  final Future<T> Function() request;
  final void Function(AsyncValue<T> data) onSuccess;
  final bool shouldShowLoading;

  ApiDispatcher({
    required this.ref,
    required this.request,
    required this.onSuccess,
    this.shouldShowLoading = true,
  }) {
    _dispatch();
  }

  Future<void> _dispatch() async {
    final loadingController = (shouldShowLoading)
        ? ref.read(loadingStateController.notifier)
        : null;

    try {
      loadingController?.showLoading();
      final result = await AsyncValue.guard(() async {
        return request();
      });
      onSuccess(result);
    } finally {
      loadingController?.hideLoading();
    }
  }
}
