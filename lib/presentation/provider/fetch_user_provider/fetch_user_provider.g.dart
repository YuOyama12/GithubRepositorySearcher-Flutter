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

String _$fetchUserHash() => r'2824e65a12fe363ff000a022e2d9185922608f29';

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

  FetchUserProvider call(int request) =>
      FetchUserProvider._(argument: request, from: this);

  @override
  String toString() => r'fetchUserProvider';
}

abstract class _$FetchUser extends $AsyncNotifier<UserResponse?> {
  late final _$args = ref.$arg as int;
  int get request => _$args;

  FutureOr<UserResponse?> build(int request);
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
