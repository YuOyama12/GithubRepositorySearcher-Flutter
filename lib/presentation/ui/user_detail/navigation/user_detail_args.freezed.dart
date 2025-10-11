// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserDetailArgs {

 int get userId; String get userName;
/// Create a copy of UserDetailArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailArgsCopyWith<UserDetailArgs> get copyWith => _$UserDetailArgsCopyWithImpl<UserDetailArgs>(this as UserDetailArgs, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetailArgs&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName));
}


@override
int get hashCode => Object.hash(runtimeType,userId,userName);

@override
String toString() {
  return 'UserDetailArgs(userId: $userId, userName: $userName)';
}


}

/// @nodoc
abstract mixin class $UserDetailArgsCopyWith<$Res>  {
  factory $UserDetailArgsCopyWith(UserDetailArgs value, $Res Function(UserDetailArgs) _then) = _$UserDetailArgsCopyWithImpl;
@useResult
$Res call({
 int userId, String userName
});




}
/// @nodoc
class _$UserDetailArgsCopyWithImpl<$Res>
    implements $UserDetailArgsCopyWith<$Res> {
  _$UserDetailArgsCopyWithImpl(this._self, this._then);

  final UserDetailArgs _self;
  final $Res Function(UserDetailArgs) _then;

/// Create a copy of UserDetailArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? userName = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDetailArgs].
extension UserDetailArgsPatterns on UserDetailArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetailArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetailArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetailArgs value)  $default,){
final _that = this;
switch (_that) {
case _UserDetailArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetailArgs value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetailArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String userName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetailArgs() when $default != null:
return $default(_that.userId,_that.userName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String userName)  $default,) {final _that = this;
switch (_that) {
case _UserDetailArgs():
return $default(_that.userId,_that.userName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String userName)?  $default,) {final _that = this;
switch (_that) {
case _UserDetailArgs() when $default != null:
return $default(_that.userId,_that.userName);case _:
  return null;

}
}

}

/// @nodoc


class _UserDetailArgs implements UserDetailArgs {
  const _UserDetailArgs({required this.userId, required this.userName});
  

@override final  int userId;
@override final  String userName;

/// Create a copy of UserDetailArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailArgsCopyWith<_UserDetailArgs> get copyWith => __$UserDetailArgsCopyWithImpl<_UserDetailArgs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetailArgs&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName));
}


@override
int get hashCode => Object.hash(runtimeType,userId,userName);

@override
String toString() {
  return 'UserDetailArgs(userId: $userId, userName: $userName)';
}


}

/// @nodoc
abstract mixin class _$UserDetailArgsCopyWith<$Res> implements $UserDetailArgsCopyWith<$Res> {
  factory _$UserDetailArgsCopyWith(_UserDetailArgs value, $Res Function(_UserDetailArgs) _then) = __$UserDetailArgsCopyWithImpl;
@override @useResult
$Res call({
 int userId, String userName
});




}
/// @nodoc
class __$UserDetailArgsCopyWithImpl<$Res>
    implements _$UserDetailArgsCopyWith<$Res> {
  __$UserDetailArgsCopyWithImpl(this._self, this._then);

  final _UserDetailArgs _self;
  final $Res Function(_UserDetailArgs) _then;

/// Create a copy of UserDetailArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? userName = null,}) {
  return _then(_UserDetailArgs(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
