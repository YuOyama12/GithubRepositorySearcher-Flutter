import 'package:dio/dio.dart';
import 'package:github_repository_searcher/domain/entity/core/api_error_entity/api_error_entity.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/provider/api_error_state_controller.dart';
import 'package:github_repository_searcher/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../access_token_provider/access_token_provider.dart';
import '../loading_state_controller.dart';

/// Provider内でAPIを呼び出すための汎用クラス
class ApiHandler {
  ApiHandler();

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
          'ApiHandler::UnExpectedError::$error::stackTrace::$stackTrace',
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
      'ApiHandler::responseError::statusCode::${exception.response?.statusCode}::${exception.response?.data}',
      error: exception,
    );

    if (exception.response?.statusCode == 401) {
      ref.read(accessTokenProvider.notifier).updateToken(null);
    }

    ref
        .read(apiErrorStateController.notifier)
        .notify(
          ApiErrorEntity(
            statusCode: exception.response?.statusCode,
            errorMessage: createErrorMessage(exception),
          ),
        );
  }

  static String createErrorMessage(DioException exception) {
    try {
      if (exception.response?.statusCode == 401) {
        return StringConsts.authResponseErrorMessage;
      }

      final json = exception.response?.data as Map<String, dynamic>;
      final message = json['message'];
      return StringConsts.defaultResponseError(
        message,
        exception.response?.statusCode,
      );
    } catch (e) {
      logger.e('ApiHandler::jsonDecodingError::$e', error: e);
      return StringConsts.defaultError;
    }
  }

  static void handleServerError(
    Ref ref,
    DioException exception,
    StackTrace? stackTrace,
  ) {
    logger.e(
      'ApiHandler::serverError::type::${exception.type}::${exception.error}',
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

  Future<AsyncValue<T>> execute<T>({
    required Ref ref,
    required Future<T> Function() request,
    bool shouldShowLoading = true,
  }) async {
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
        defaultErrorHandling(ref, result.error, result.stackTrace);
      }

      return result;
    } catch (e, stackTrace) {
      logger.e('ApiHandler::dispatchError::$e', error: e);
      return AsyncValue.error(e, stackTrace);
    } finally {
      loadingController?.hideLoading();
    }
  }
}
