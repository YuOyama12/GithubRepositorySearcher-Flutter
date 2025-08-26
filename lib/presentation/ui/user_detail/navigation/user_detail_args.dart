import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_args.freezed.dart';

@freezed
abstract class UserDetailArgs with _$UserDetailArgs {
  const factory UserDetailArgs({
    required int userId,
  }) = _UserDetailArgs;

  static const userIdKey = 'user_id';
}