import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_args.freezed.dart';

@freezed
abstract class UserDetailArgs with _$UserDetailArgs {
  const factory UserDetailArgs({
    required int userId,
    required String userName,
  }) = _UserDetailArgs;

  static const userIdKey = 'user_id';
  static const userNameKey = 'user_name';
}
