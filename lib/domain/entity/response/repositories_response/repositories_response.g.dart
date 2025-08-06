// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RepositoriesResponse _$RepositoriesResponseFromJson(
  Map<String, dynamic> json,
) => _RepositoriesResponse(
  totalCount: (json['total_count'] as num).toInt(),
  items: (json['items'] as List<dynamic>)
      .map((e) => Repository.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RepositoriesResponseToJson(
  _RepositoriesResponse instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'items': instance.items,
};
