import 'package:dio/dio.dart';
import 'package:github_repository_searcher/domain/entity/core/api_error_entity/api_error_entity.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/provider/api_error_state_controller.dart';
import 'package:github_repository_searcher/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../loading_state_controller.dart';

/// Provider内でAPIを呼び出すための汎用クラス
class ApiDispatcher<T> {
  final Ref ref;
  final Future<T> Function() request;
  final void Function(AsyncValue<T> data) onSuccess;
  final void Function(Ref, Object? error, StackTrace?) onFailure;
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

  static void defaultErrorHandling(
    Ref ref,
    Object? error,
    StackTrace? stackTrace,
  ) {
    switch (error) {
      case DioException _:
        switch (error.type) {
          case DioExceptionType.badResponse:
            handleResponseError(ref, error, stackTrace);
          default:
            handleServerError(ref, error, stackTrace);
        }
      default:
        logger.e(
          'ApiDispatcher::UnExpectedError::$error::stackTrace::${stackTrace}',
          error: error,
          stackTrace: stackTrace,
        );
        ref
            .read(apiErrorStateController.notifier)
            .notify(ApiErrorEntity(errorMessage: StringConsts.defaultError));
    }
  }

  static void handleResponseError(
    Ref ref,
    DioException exception,
    StackTrace? stackTrace,
  ) {
    logger.e(
      'ApiDispatcher::responseError::statusCode::${exception.response?.statusCode}::${exception.response?.data}',
      error: exception,
    );
    ref
        .read(apiErrorStateController.notifier)
        .notify(ApiErrorEntity(errorMessage: createErrorMessage(exception)));
  }

  static String createErrorMessage(DioException exception) {
    try {
      final json = exception.response?.data as Map<String, dynamic>;
      final message = json['message'];
      return StringConsts.defaultResponseError(
        message,
        exception.response?.statusCode,
      );
    } catch (e) {
      logger.e('ApiDispatcher::jsonDecodingError::$e', error: e);
      return StringConsts.defaultError;
    }
  }

  static void handleServerError(
    Ref ref,
    DioException exception,
    StackTrace? stackTrace,
  ) {
    logger.e(
      'ApiDispatcher::serverError::type::${exception.type}::${exception.error}',
      error: exception,
    );

    switch (exception.type) {
      case DioExceptionType.connectionTimeout ||
          DioExceptionType.sendTimeout ||
          DioExceptionType.receiveTimeout ||
          DioExceptionType.connectionError:
        ref
            .read(apiErrorStateController.notifier)
            .notify(
              ApiErrorEntity(errorMessage: StringConsts.connectionTimeoutError),
            );
      default:
        ref
            .read(apiErrorStateController.notifier)
            .notify(ApiErrorEntity(errorMessage: StringConsts.defaultError));
    }
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
        onFailure(ref, result.error, result.stackTrace);
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
