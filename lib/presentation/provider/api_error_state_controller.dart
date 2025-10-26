import 'package:github_repository_searcher/domain/entity/core/api_error_entity/api_error_entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiErrorStateController =
    NotifierProvider<ApiErrorState, ApiErrorEntity?>(ApiErrorState.new);

class ApiErrorState extends Notifier<ApiErrorEntity?> {
  @override
  ApiErrorEntity? build() => null;

  void notify(ApiErrorEntity error) {
    state = error;
  }

  void clear() {
    state = null;
  }
}
