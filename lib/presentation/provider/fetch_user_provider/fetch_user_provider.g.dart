// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FetchUser)
final fetchUserProvider = FetchUserFamily._();

final class FetchUserProvider
    extends $AsyncNotifierProvider<FetchUser, UserResponse?> {
  FetchUserProvider._({
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
  FetchUserFamily._()
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
    final ref = this.ref as $Ref<AsyncValue<UserResponse?>, UserResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserResponse?>, UserResponse?>,
              AsyncValue<UserResponse?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
