import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_entity.freezed.dart';

@freezed
abstract class ApiErrorEntity with _$ApiErrorEntity {
  const factory ApiErrorEntity({
    int? statusCode,
    String? errorTitle,
    required String errorMessage,
    String? positiveButtonText,
    String? negativeButtonText,
  }) = _ApiErrorEntity;
}
