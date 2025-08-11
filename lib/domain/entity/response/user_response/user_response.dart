import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int id,
    required String login,
    @JsonKey(name: "avatar_url")
    String? avatarUrl,
    @JsonKey(name: "html_url")
    String? htmlUrl,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}