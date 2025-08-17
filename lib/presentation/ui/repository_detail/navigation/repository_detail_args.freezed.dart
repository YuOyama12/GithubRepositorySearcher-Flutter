// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_detail_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RepositoryDetailArgs {

 String get repositoryName; String get repositoryUrl;
/// Create a copy of RepositoryDetailArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepositoryDetailArgsCopyWith<RepositoryDetailArgs> get copyWith => _$RepositoryDetailArgsCopyWithImpl<RepositoryDetailArgs>(this as RepositoryDetailArgs, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepositoryDetailArgs&&(identical(other.repositoryName, repositoryName) || other.repositoryName == repositoryName)&&(identical(other.repositoryUrl, repositoryUrl) || other.repositoryUrl == repositoryUrl));
}


@override
int get hashCode => Object.hash(runtimeType,repositoryName,repositoryUrl);

@override
String toString() {
  return 'RepositoryDetailArgs(repositoryName: $repositoryName, repositoryUrl: $repositoryUrl)';
}


}

/// @nodoc
abstract mixin class $RepositoryDetailArgsCopyWith<$Res>  {
  factory $RepositoryDetailArgsCopyWith(RepositoryDetailArgs value, $Res Function(RepositoryDetailArgs) _then) = _$RepositoryDetailArgsCopyWithImpl;
@useResult
$Res call({
 String repositoryName, String repositoryUrl
});




}
/// @nodoc
class _$RepositoryDetailArgsCopyWithImpl<$Res>
    implements $RepositoryDetailArgsCopyWith<$Res> {
  _$RepositoryDetailArgsCopyWithImpl(this._self, this._then);

  final RepositoryDetailArgs _self;
  final $Res Function(RepositoryDetailArgs) _then;

/// Create a copy of RepositoryDetailArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? repositoryName = null,Object? repositoryUrl = null,}) {
  return _then(_self.copyWith(
repositoryName: null == repositoryName ? _self.repositoryName : repositoryName // ignore: cast_nullable_to_non_nullable
as String,repositoryUrl: null == repositoryUrl ? _self.repositoryUrl : repositoryUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RepositoryDetailArgs].
extension RepositoryDetailArgsPatterns on RepositoryDetailArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RepositoryDetailArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RepositoryDetailArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RepositoryDetailArgs value)  $default,){
final _that = this;
switch (_that) {
case _RepositoryDetailArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RepositoryDetailArgs value)?  $default,){
final _that = this;
switch (_that) {
case _RepositoryDetailArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String repositoryName,  String repositoryUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RepositoryDetailArgs() when $default != null:
return $default(_that.repositoryName,_that.repositoryUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String repositoryName,  String repositoryUrl)  $default,) {final _that = this;
switch (_that) {
case _RepositoryDetailArgs():
return $default(_that.repositoryName,_that.repositoryUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String repositoryName,  String repositoryUrl)?  $default,) {final _that = this;
switch (_that) {
case _RepositoryDetailArgs() when $default != null:
return $default(_that.repositoryName,_that.repositoryUrl);case _:
  return null;

}
}

}

/// @nodoc


class _RepositoryDetailArgs implements RepositoryDetailArgs {
  const _RepositoryDetailArgs({required this.repositoryName, required this.repositoryUrl});
  

@override final  String repositoryName;
@override final  String repositoryUrl;

/// Create a copy of RepositoryDetailArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepositoryDetailArgsCopyWith<_RepositoryDetailArgs> get copyWith => __$RepositoryDetailArgsCopyWithImpl<_RepositoryDetailArgs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepositoryDetailArgs&&(identical(other.repositoryName, repositoryName) || other.repositoryName == repositoryName)&&(identical(other.repositoryUrl, repositoryUrl) || other.repositoryUrl == repositoryUrl));
}


@override
int get hashCode => Object.hash(runtimeType,repositoryName,repositoryUrl);

@override
String toString() {
  return 'RepositoryDetailArgs(repositoryName: $repositoryName, repositoryUrl: $repositoryUrl)';
}


}

/// @nodoc
abstract mixin class _$RepositoryDetailArgsCopyWith<$Res> implements $RepositoryDetailArgsCopyWith<$Res> {
  factory _$RepositoryDetailArgsCopyWith(_RepositoryDetailArgs value, $Res Function(_RepositoryDetailArgs) _then) = __$RepositoryDetailArgsCopyWithImpl;
@override @useResult
$Res call({
 String repositoryName, String repositoryUrl
});




}
/// @nodoc
class __$RepositoryDetailArgsCopyWithImpl<$Res>
    implements _$RepositoryDetailArgsCopyWith<$Res> {
  __$RepositoryDetailArgsCopyWithImpl(this._self, this._then);

  final _RepositoryDetailArgs _self;
  final $Res Function(_RepositoryDetailArgs) _then;

/// Create a copy of RepositoryDetailArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? repositoryName = null,Object? repositoryUrl = null,}) {
  return _then(_RepositoryDetailArgs(
repositoryName: null == repositoryName ? _self.repositoryName : repositoryName // ignore: cast_nullable_to_non_nullable
as String,repositoryUrl: null == repositoryUrl ? _self.repositoryUrl : repositoryUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
