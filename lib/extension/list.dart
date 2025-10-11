extension ListExtension<E> on List<E> {
  /// List内の最後のデータのindexを返し、Listが空の場合は-1を返す
  int get lastIndex => length - 1;
}
