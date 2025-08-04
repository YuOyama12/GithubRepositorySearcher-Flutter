// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repositories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RepositoriesResponse {
  @JsonKey(name: "total_count")
  int get totalCount;
  List<Repository> get items;

  /// Create a copy of RepositoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RepositoriesResponseCopyWith<RepositoriesResponse> get copyWith =>
      _$RepositoriesResponseCopyWithImpl<RepositoriesResponse>(
          this as RepositoriesResponse, _$identity);

  /// Serializes this RepositoriesResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepositoriesResponse &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'RepositoriesResponse(totalCount: $totalCount, items: $items)';
  }
}

/// @nodoc
abstract mixin class $RepositoriesResponseCopyWith<$Res> {
  factory $RepositoriesResponseCopyWith(RepositoriesResponse value,
          $Res Function(RepositoriesResponse) _then) =
      _$RepositoriesResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "total_count") int totalCount, List<Repository> items});
}

/// @nodoc
class _$RepositoriesResponseCopyWithImpl<$Res>
    implements $RepositoriesResponseCopyWith<$Res> {
  _$RepositoriesResponseCopyWithImpl(this._self, this._then);

  final RepositoriesResponse _self;
  final $Res Function(RepositoriesResponse) _then;

  /// Create a copy of RepositoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ));
  }
}

/// Adds pattern-matching-related methods to [RepositoriesResponse].
extension RepositoriesResponsePatterns on RepositoriesResponse {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RepositoriesResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RepositoriesResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RepositoriesResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RepositoriesResponse():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RepositoriesResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RepositoriesResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: "total_count") int totalCount,
            List<Repository> items)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RepositoriesResponse() when $default != null:
        return $default(_that.totalCount, _that.items);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: "total_count") int totalCount,
            List<Repository> items)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RepositoriesResponse():
        return $default(_that.totalCount, _that.items);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: "total_count") int totalCount,
            List<Repository> items)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RepositoriesResponse() when $default != null:
        return $default(_that.totalCount, _that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RepositoriesResponse implements RepositoriesResponse {
  const _RepositoriesResponse(
      {@JsonKey(name: "total_count") required this.totalCount,
      required final List<Repository> items})
      : _items = items;
  factory _RepositoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$RepositoriesResponseFromJson(json);

  @override
  @JsonKey(name: "total_count")
  final int totalCount;
  final List<Repository> _items;
  @override
  List<Repository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of RepositoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RepositoriesResponseCopyWith<_RepositoriesResponse> get copyWith =>
      __$RepositoriesResponseCopyWithImpl<_RepositoriesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RepositoriesResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositoriesResponse &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'RepositoriesResponse(totalCount: $totalCount, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$RepositoriesResponseCopyWith<$Res>
    implements $RepositoriesResponseCopyWith<$Res> {
  factory _$RepositoriesResponseCopyWith(_RepositoriesResponse value,
          $Res Function(_RepositoriesResponse) _then) =
      __$RepositoriesResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_count") int totalCount, List<Repository> items});
}

/// @nodoc
class __$RepositoriesResponseCopyWithImpl<$Res>
    implements _$RepositoriesResponseCopyWith<$Res> {
  __$RepositoriesResponseCopyWithImpl(this._self, this._then);

  final _RepositoriesResponse _self;
  final $Res Function(_RepositoriesResponse) _then;

  /// Create a copy of RepositoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_RepositoriesResponse(
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ));
  }
}

// dart format on
