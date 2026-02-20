import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repository/repository.dart';
import 'package:github_repository_searcher/presentation/provider/core/api_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_user_repositories_provider.g.dart';

@riverpod
class FetchUserRepositories extends _$FetchUserRepositories {
  @override
  FutureOr<List<Repository>?> build(String userName) async {
    final result = await Future.microtask(
      () => ApiHandler().execute(
        ref: ref,
        request: () => ref
            .read(userRepositoryProvider)
            .fetchRepositoriesByUser(userName: userName),
      ),
    );
    return (result.hasValue) ? Future.value(result.value) : null;
  }
}
