/// PagingDataのitemの抽象クラス
///
/// 各itemに持っておいてほしいプロパティを定義する
abstract class PagingDataItem {}

/// Pagingさせるレスポンスに使用する基底クラス
abstract class PagingDataResponse<E extends PagingDataItem> {
  List<E> get items;
}

/// Pagingさせるリクエストに使用するMixin
mixin PagingDataRequest<Base> {
  int? get page;

  Base incPage();

  Base resetPage();
}
