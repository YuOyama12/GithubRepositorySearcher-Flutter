import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
abstract class Repository with _$Repository {
  const factory Repository({
    required int id,
    required String name,
    @JsonKey(name: "full_name")
    String? fullName,
    @JsonKey(name: "html_url")
    String? htmlUrl,
    String? description,
    @JsonKey(name: "created_at")
    required String createdAt,
    @JsonKey(name: "updated_at")
    required String updatedAt,
    String? language,
    @JsonKey(name: "stargazers_count")
    required int stargazersCount,
    @JsonKey(name: "watchers_count")
    required int watchersCount,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}