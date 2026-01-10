import '../../../../presentation/const/strings.dart';

enum SortType {
  bestMatch(label: StringConsts.bestMatchOrder, query: null),
  starCount(label: StringConsts.starsCountOrder, query: "stars"),
  updatedTime(label: StringConsts.updatedTimeOrder, query: "updated");

  const SortType({required this.label, required this.query});

  final String label;
  final String? query;
}
