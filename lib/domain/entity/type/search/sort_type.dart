import '../../../../presentation/const/strings.dart';

enum SortType {
  bestMatch(
    label: StringConsts.sortedByBestMatch,
    query: null,
    shouldIgnoreOrder: true,
  ),
  starCount(
    label: StringConsts.sortedByStarsCount,
    query: "stars",
    shouldIgnoreOrder: false,
  ),
  updatedTime(
    label: StringConsts.sortedByUpdatedTime,
    query: "updated",
    shouldIgnoreOrder: false,
  );

  const SortType({
    required this.label,
    required this.query,
    required this.shouldIgnoreOrder,
  });

  final String label;
  final String? query;
  final bool shouldIgnoreOrder;
}
