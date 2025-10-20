import 'package:dio/dio.dart';
import 'package:github_repository_searcher/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../loading_state_controller.dart';

/// Provider内でAPIを呼び出すための汎用クラス
class ApiDispatcher<T> {
  final Ref ref;
  final Future<T> Function() request;
  final void Function(AsyncValue<T> data) onSuccess;
  final void Function(Object? error, StackTrace?) onFailure;
  final bool shouldShowLoading;

  ApiDispatcher({
    required this.ref,
    required this.request,
    required this.onSuccess,
    this.onFailure = defaultErrorHandling,
    this.shouldShowLoading = true,
  }) {
    _dispatch();
  }

  static void defaultErrorHandling(Object? error, StackTrace? stackTrace) {
    switch (error) {
      case DioException _:
        switch (error.type) {
          case DioExceptionType.badResponse:
            handleResponseError(error, stackTrace);
          default:
            handleServerError(error, stackTrace);
        }
      default:
        logger.e(
          'ApiDispatcher::UnExpectedError::${error}',
          error: error,
          stackTrace: stackTrace,
        );
    }
  }

  static void handleResponseError(
    DioException exception,
    StackTrace? stackTrace,
  ) {
    logger.e(
      'ApiDispatcher::responseError::statusCode::${exception.response?.statusCode}::${exception.response?.data}',
      error: exception,
    );
  }

  static void handleServerError(
    DioException exception,
    StackTrace? stackTrace,
  ) {
    logger.e(
      'ApiDispatcher::serverError::type::${exception.type}::${exception.error}',
      error: exception,
    );
  }

  Future<void> _dispatch() async {
    LoadingState? loadingController;

    try {
      loadingController = (shouldShowLoading)
          ? ref.read(loadingStateController.notifier)
          : null;

      loadingController?.showLoading();
      final result = await AsyncValue.guard(() async {
        return request();
      });

      if (result.hasError) {
        onFailure(result.error, result.stackTrace);
      } else {
        onSuccess(result);
      }
    } catch (e) {
      logger.e('ApiDispatcher::dispatchError::$e', error: e);
    } finally {
      loadingController?.hideLoading();
    }
  }
}
