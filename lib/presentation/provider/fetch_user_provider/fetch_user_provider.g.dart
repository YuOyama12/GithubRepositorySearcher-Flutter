// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FetchUser)
const fetchUserProvider = FetchUserFamily._();

final class FetchUserProvider
    extends $AsyncNotifierProvider<FetchUser, UserResponse?> {
  const FetchUserProvider._({
    required FetchUserFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'fetchUserProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchUserHash();

  @override
  String toString() {
    return r'fetchUserProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FetchUser create() => FetchUser();

  @override
  bool operator ==(Object other) {
    return other is FetchUserProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchUserHash() => r'3237c7eb2d2111157c06a4f89a020a266236c1c9';

final class FetchUserFamily extends $Family
    with
        $ClassFamilyOverride<
          FetchUser,
          AsyncValue<UserResponse?>,
          UserResponse?,
          FutureOr<UserResponse?>,
          int
        > {
  const FetchUserFamily._()
    : super(
        retry: null,
        name: r'fetchUserProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchUserProvider call(int userId) =>
      FetchUserProvider._(argument: userId, from: this);

  @override
  String toString() => r'fetchUserProvider';
}

abstract class _$FetchUser extends $AsyncNotifier<UserResponse?> {
  late final _$args = ref.$arg as int;
  int get userId => _$args;

  FutureOr<UserResponse?> build(int userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<UserResponse?>, UserResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserResponse?>, UserResponse?>,
              AsyncValue<UserResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
