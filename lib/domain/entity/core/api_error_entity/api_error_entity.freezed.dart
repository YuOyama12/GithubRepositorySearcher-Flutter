// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiErrorEntity {

 String? get errorTitle; String get errorMessage; String? get positiveButtonText; String? get negativeButtonText;
/// Create a copy of ApiErrorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiErrorEntityCopyWith<ApiErrorEntity> get copyWith => _$ApiErrorEntityCopyWithImpl<ApiErrorEntity>(this as ApiErrorEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiErrorEntity&&(identical(other.errorTitle, errorTitle) || other.errorTitle == errorTitle)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.positiveButtonText, positiveButtonText) || other.positiveButtonText == positiveButtonText)&&(identical(other.negativeButtonText, negativeButtonText) || other.negativeButtonText == negativeButtonText));
}


@override
int get hashCode => Object.hash(runtimeType,errorTitle,errorMessage,positiveButtonText,negativeButtonText);

@override
String toString() {
  return 'ApiErrorEntity(errorTitle: $errorTitle, errorMessage: $errorMessage, positiveButtonText: $positiveButtonText, negativeButtonText: $negativeButtonText)';
}


}

/// @nodoc
abstract mixin class $ApiErrorEntityCopyWith<$Res>  {
  factory $ApiErrorEntityCopyWith(ApiErrorEntity value, $Res Function(ApiErrorEntity) _then) = _$ApiErrorEntityCopyWithImpl;
@useResult
$Res call({
 String? errorTitle, String errorMessage, String? positiveButtonText, String? negativeButtonText
});




}
/// @nodoc
class _$ApiErrorEntityCopyWithImpl<$Res>
    implements $ApiErrorEntityCopyWith<$Res> {
  _$ApiErrorEntityCopyWithImpl(this._self, this._then);

  final ApiErrorEntity _self;
  final $Res Function(ApiErrorEntity) _then;

/// Create a copy of ApiErrorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorTitle = freezed,Object? errorMessage = null,Object? positiveButtonText = freezed,Object? negativeButtonText = freezed,}) {
  return _then(_self.copyWith(
errorTitle: freezed == errorTitle ? _self.errorTitle : errorTitle // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,positiveButtonText: freezed == positiveButtonText ? _self.positiveButtonText : positiveButtonText // ignore: cast_nullable_to_non_nullable
as String?,negativeButtonText: freezed == negativeButtonText ? _self.negativeButtonText : negativeButtonText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiErrorEntity].
extension ApiErrorEntityPatterns on ApiErrorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiErrorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiErrorEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiErrorEntity value)  $default,){
final _that = this;
switch (_that) {
case _ApiErrorEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiErrorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ApiErrorEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? errorTitle,  String errorMessage,  String? positiveButtonText,  String? negativeButtonText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiErrorEntity() when $default != null:
return $default(_that.errorTitle,_that.errorMessage,_that.positiveButtonText,_that.negativeButtonText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? errorTitle,  String errorMessage,  String? positiveButtonText,  String? negativeButtonText)  $default,) {final _that = this;
switch (_that) {
case _ApiErrorEntity():
return $default(_that.errorTitle,_that.errorMessage,_that.positiveButtonText,_that.negativeButtonText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? errorTitle,  String errorMessage,  String? positiveButtonText,  String? negativeButtonText)?  $default,) {final _that = this;
switch (_that) {
case _ApiErrorEntity() when $default != null:
return $default(_that.errorTitle,_that.errorMessage,_that.positiveButtonText,_that.negativeButtonText);case _:
  return null;

}
}

}

/// @nodoc


class _ApiErrorEntity implements ApiErrorEntity {
  const _ApiErrorEntity({this.errorTitle, required this.errorMessage, this.positiveButtonText, this.negativeButtonText});
  

@override final  String? errorTitle;
@override final  String errorMessage;
@override final  String? positiveButtonText;
@override final  String? negativeButtonText;

/// Create a copy of ApiErrorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiErrorEntityCopyWith<_ApiErrorEntity> get copyWith => __$ApiErrorEntityCopyWithImpl<_ApiErrorEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiErrorEntity&&(identical(other.errorTitle, errorTitle) || other.errorTitle == errorTitle)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.positiveButtonText, positiveButtonText) || other.positiveButtonText == positiveButtonText)&&(identical(other.negativeButtonText, negativeButtonText) || other.negativeButtonText == negativeButtonText));
}


@override
int get hashCode => Object.hash(runtimeType,errorTitle,errorMessage,positiveButtonText,negativeButtonText);

@override
String toString() {
  return 'ApiErrorEntity(errorTitle: $errorTitle, errorMessage: $errorMessage, positiveButtonText: $positiveButtonText, negativeButtonText: $negativeButtonText)';
}


}

/// @nodoc
abstract mixin class _$ApiErrorEntityCopyWith<$Res> implements $ApiErrorEntityCopyWith<$Res> {
  factory _$ApiErrorEntityCopyWith(_ApiErrorEntity value, $Res Function(_ApiErrorEntity) _then) = __$ApiErrorEntityCopyWithImpl;
@override @useResult
$Res call({
 String? errorTitle, String errorMessage, String? positiveButtonText, String? negativeButtonText
});




}
/// @nodoc
class __$ApiErrorEntityCopyWithImpl<$Res>
    implements _$ApiErrorEntityCopyWith<$Res> {
  __$ApiErrorEntityCopyWithImpl(this._self, this._then);

  final _ApiErrorEntity _self;
  final $Res Function(_ApiErrorEntity) _then;

/// Create a copy of ApiErrorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorTitle = freezed,Object? errorMessage = null,Object? positiveButtonText = freezed,Object? negativeButtonText = freezed,}) {
  return _then(_ApiErrorEntity(
errorTitle: freezed == errorTitle ? _self.errorTitle : errorTitle // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,positiveButtonText: freezed == positiveButtonText ? _self.positiveButtonText : positiveButtonText // ignore: cast_nullable_to_non_nullable
as String?,negativeButtonText: freezed == negativeButtonText ? _self.negativeButtonText : negativeButtonText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
