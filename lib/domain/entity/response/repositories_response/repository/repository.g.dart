// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Repository _$RepositoryFromJson(Map<String, dynamic> json) => _Repository(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  fullName: json['full_name'] as String? ?? null,
  htmlUrl: json['html_url'] as String? ?? null,
  description: json['description'] as String? ?? null,
);

Map<String, dynamic> _$RepositoryToJson(_Repository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'html_url': instance.htmlUrl,
      'description': instance.description,
    };
