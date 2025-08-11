// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Repository {

 int get id; String get name;@JsonKey(name: "full_name") String? get fullName;@JsonKey(name: "html_url") String? get htmlUrl; String? get description;@JsonKey(name: "created_at") String get createdAt;@JsonKey(name: "updated_at") String get updatedAt; String? get language;@JsonKey(name: "stargazers_count") int get stargazersCount;@JsonKey(name: "watchers_count") int get watchersCount;
/// Create a copy of Repository
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepositoryCopyWith<Repository> get copyWith => _$RepositoryCopyWithImpl<Repository>(this as Repository, _$identity);

  /// Serializes this Repository to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Repository&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.language, language) || other.language == language)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.watchersCount, watchersCount) || other.watchersCount == watchersCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,htmlUrl,description,createdAt,updatedAt,language,stargazersCount,watchersCount);

@override
String toString() {
  return 'Repository(id: $id, name: $name, fullName: $fullName, htmlUrl: $htmlUrl, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount)';
}


}

/// @nodoc
abstract mixin class $RepositoryCopyWith<$Res>  {
  factory $RepositoryCopyWith(Repository value, $Res Function(Repository) _then) = _$RepositoryCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: "full_name") String? fullName,@JsonKey(name: "html_url") String? htmlUrl, String? description,@JsonKey(name: "created_at") String createdAt,@JsonKey(name: "updated_at") String updatedAt, String? language,@JsonKey(name: "stargazers_count") int stargazersCount,@JsonKey(name: "watchers_count") int watchersCount
});




}
/// @nodoc
class _$RepositoryCopyWithImpl<$Res>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._self, this._then);

  final Repository _self;
  final $Res Function(Repository) _then;

/// Create a copy of Repository
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? fullName = freezed,Object? htmlUrl = freezed,Object? description = freezed,Object? createdAt = null,Object? updatedAt = null,Object? language = freezed,Object? stargazersCount = null,Object? watchersCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,stargazersCount: null == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int,watchersCount: null == watchersCount ? _self.watchersCount : watchersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Repository].
extension RepositoryPatterns on Repository {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Repository value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Repository() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Repository value)  $default,){
final _that = this;
switch (_that) {
case _Repository():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Repository value)?  $default,){
final _that = this;
switch (_that) {
case _Repository() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "html_url")  String? htmlUrl,  String? description, @JsonKey(name: "created_at")  String createdAt, @JsonKey(name: "updated_at")  String updatedAt,  String? language, @JsonKey(name: "stargazers_count")  int stargazersCount, @JsonKey(name: "watchers_count")  int watchersCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Repository() when $default != null:
return $default(_that.id,_that.name,_that.fullName,_that.htmlUrl,_that.description,_that.createdAt,_that.updatedAt,_that.language,_that.stargazersCount,_that.watchersCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "html_url")  String? htmlUrl,  String? description, @JsonKey(name: "created_at")  String createdAt, @JsonKey(name: "updated_at")  String updatedAt,  String? language, @JsonKey(name: "stargazers_count")  int stargazersCount, @JsonKey(name: "watchers_count")  int watchersCount)  $default,) {final _that = this;
switch (_that) {
case _Repository():
return $default(_that.id,_that.name,_that.fullName,_that.htmlUrl,_that.description,_that.createdAt,_that.updatedAt,_that.language,_that.stargazersCount,_that.watchersCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "html_url")  String? htmlUrl,  String? description, @JsonKey(name: "created_at")  String createdAt, @JsonKey(name: "updated_at")  String updatedAt,  String? language, @JsonKey(name: "stargazers_count")  int stargazersCount, @JsonKey(name: "watchers_count")  int watchersCount)?  $default,) {final _that = this;
switch (_that) {
case _Repository() when $default != null:
return $default(_that.id,_that.name,_that.fullName,_that.htmlUrl,_that.description,_that.createdAt,_that.updatedAt,_that.language,_that.stargazersCount,_that.watchersCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Repository implements Repository {
  const _Repository({required this.id, required this.name, @JsonKey(name: "full_name") this.fullName, @JsonKey(name: "html_url") this.htmlUrl, this.description, @JsonKey(name: "created_at") required this.createdAt, @JsonKey(name: "updated_at") required this.updatedAt, this.language, @JsonKey(name: "stargazers_count") required this.stargazersCount, @JsonKey(name: "watchers_count") required this.watchersCount});
  factory _Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: "full_name") final  String? fullName;
@override@JsonKey(name: "html_url") final  String? htmlUrl;
@override final  String? description;
@override@JsonKey(name: "created_at") final  String createdAt;
@override@JsonKey(name: "updated_at") final  String updatedAt;
@override final  String? language;
@override@JsonKey(name: "stargazers_count") final  int stargazersCount;
@override@JsonKey(name: "watchers_count") final  int watchersCount;

/// Create a copy of Repository
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepositoryCopyWith<_Repository> get copyWith => __$RepositoryCopyWithImpl<_Repository>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RepositoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Repository&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.language, language) || other.language == language)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.watchersCount, watchersCount) || other.watchersCount == watchersCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,htmlUrl,description,createdAt,updatedAt,language,stargazersCount,watchersCount);

@override
String toString() {
  return 'Repository(id: $id, name: $name, fullName: $fullName, htmlUrl: $htmlUrl, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount)';
}


}

/// @nodoc
abstract mixin class _$RepositoryCopyWith<$Res> implements $RepositoryCopyWith<$Res> {
  factory _$RepositoryCopyWith(_Repository value, $Res Function(_Repository) _then) = __$RepositoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: "full_name") String? fullName,@JsonKey(name: "html_url") String? htmlUrl, String? description,@JsonKey(name: "created_at") String createdAt,@JsonKey(name: "updated_at") String updatedAt, String? language,@JsonKey(name: "stargazers_count") int stargazersCount,@JsonKey(name: "watchers_count") int watchersCount
});




}
/// @nodoc
class __$RepositoryCopyWithImpl<$Res>
    implements _$RepositoryCopyWith<$Res> {
  __$RepositoryCopyWithImpl(this._self, this._then);

  final _Repository _self;
  final $Res Function(_Repository) _then;

/// Create a copy of Repository
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? fullName = freezed,Object? htmlUrl = freezed,Object? description = freezed,Object? createdAt = null,Object? updatedAt = null,Object? language = freezed,Object? stargazersCount = null,Object? watchersCount = null,}) {
  return _then(_Repository(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,stargazersCount: null == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int,watchersCount: null == watchersCount ? _self.watchersCount : watchersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
