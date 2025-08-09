import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
abstract class Repository with _$Repository {
  const factory Repository({
    required int id,
    required String name,
    @JsonKey(name: "full_name")
    @Default(null)
    String? fullName,
    @JsonKey(name: "html_url")
    @Default(null)
    String? htmlUrl,
    @Default(null)
    String? description,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}