import 'package:hooks_riverpod/hooks_riverpod.dart';

final loadingStateController = NotifierProvider<LoadingState, bool>(
  LoadingState.new,
);

class LoadingState extends Notifier<bool> {
  @override
  bool build() => false;

  void showLoading() => state = true;

  void hideLoading() => state = false;
}
