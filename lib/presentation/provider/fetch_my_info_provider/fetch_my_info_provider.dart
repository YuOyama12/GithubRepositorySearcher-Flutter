import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/api_handler.dart';

part 'fetch_my_info_provider.g.dart';

@riverpod
class FetchMyInfo extends _$FetchMyInfo {
  @override
  Future<UserResponse?> build() async {
    final result = await Future.microtask(
      () => ApiHandler().execute(
        ref: ref,
        request: () => ref.read(userRepositoryProvider).fetchMyInfo(),
      ),
    );
    return (result.hasValue) ? Future.value(result.value) : null;
  }
}
