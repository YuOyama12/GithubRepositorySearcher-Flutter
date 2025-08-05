import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
abstract class Repository with _$Repository {
  const factory Repository({
    required int id,
    required String name,
    @JsonKey(name: "full_name") required String fullName,
    @JsonKey(name: "html_url") required String htmlUrl,
    required String description,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}