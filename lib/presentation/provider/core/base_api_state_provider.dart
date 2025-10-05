import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseApiState<Res, Req> extends FamilyAsyncNotifier<Res?, Req> {
  /// build()のタイミングでAPI呼び出し処理を行うかどうか
  bool shouldCallApiOnBuilding();

  /// API呼び出し時にローディングインジケータを表示させるかどうか
  bool shouldShowLoading() => true;

  @override
  Future<Res?> build(Req request) async {
    if (shouldCallApiOnBuilding()) {
      Future.microtask(() => fetch(request));
    }
    return Future.value(null);
  }

  Future<void> fetch(Req request);
}
