extension ListExtension<E> on List<E> {
  /// List内の最後のデータのindexを返し、Listが空の場合は-1を返す
  int get lastIndex => length - 1;

  /// indexにあるデータを取得し、取得に失敗した場合にはnullを返す
  E? getOrNull(int index) {
    if (0 <= index && index < length) {
      return this[index];
    } else {
      return null;
    }
  }
}
