import 'package:hooks_riverpod/hooks_riverpod.dart';

final loadingProgressController = NotifierProvider<LoadingProgressController, bool>(
  LoadingProgressController.new,
);

class LoadingProgressController extends Notifier<bool> {
  @override
  bool build() => false;

  void setLoading({required bool isLoading}) {
    state = isLoading;
  }
}