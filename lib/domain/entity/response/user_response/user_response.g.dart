// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      id: (json['id'] as num).toInt(),
      login: json['login'] as String,
      followers: (json['followers'] as num?)?.toInt(),
      following: (json['following'] as num?)?.toInt(),
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'followers': instance.followers,
      'following': instance.following,
      'avatar_url': instance.avatarUrl,
    };
