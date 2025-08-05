import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repository/repository.dart';

part 'repositories_response.freezed.dart';
part 'repositories_response.g.dart';

@freezed
abstract class RepositoriesResponse with _$RepositoriesResponse {
  const factory RepositoriesResponse({
    @JsonKey(name: "total_count") required int totalCount,
    required List<Repository> items,
  }) = _RepositoriesResponse;

  factory RepositoriesResponse.fromJson(Map<String, dynamic> json) => _$RepositoriesResponseFromJson(json);
}