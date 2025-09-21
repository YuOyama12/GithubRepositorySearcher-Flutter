// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(RepositoriesState)
const repositoriesStateProvider = RepositoriesStateProvider._();

final class RepositoriesStateProvider
    extends $AsyncNotifierProvider<RepositoriesState, RepositoriesResponse?> {
  const RepositoriesStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'repositoriesStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$repositoriesStateHash();

  @$internal
  @override
  RepositoriesState create() => RepositoriesState();
}

String _$repositoriesStateHash() => r'98778bec8e0d84ac9d9e4452ced0830c82753032';

abstract class _$RepositoriesState
    extends $AsyncNotifier<RepositoriesResponse?> {
  FutureOr<RepositoriesResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<RepositoriesResponse?>, RepositoriesResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RepositoriesResponse?>,
                RepositoriesResponse?
              >,
              AsyncValue<RepositoriesResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
