import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_detail_args.freezed.dart';

@freezed
abstract class RepositoryDetailArgs with _$RepositoryDetailArgs {
  const factory RepositoryDetailArgs({
    required String repositoryName,
    required String repositoryUrl,
  }) = _RepositoryDetailArgs;

  static const repositoryNameKey = 'repository_name';
  static const repositoryUrlKey = 'repository_url';
}