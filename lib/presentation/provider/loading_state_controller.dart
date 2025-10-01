import 'package:hooks_riverpod/hooks_riverpod.dart';

final loadingStateController = NotifierProvider<LoadingState, bool>(
  LoadingState.new,
);

class LoadingState extends Notifier<bool> {
  @override
  bool build() => false;

  int _activeLoadingCount = 0;

  bool _hasActiveLoading() => _activeLoadingCount > 0;

  void showLoading() {
    _activeLoadingCount = ++_activeLoadingCount;
    state = _hasActiveLoading();
  }

  void hideLoading() {
    _activeLoadingCount = (_activeLoadingCount > 0) ? --_activeLoadingCount : 0;
    state = _hasActiveLoading();
  }
}
