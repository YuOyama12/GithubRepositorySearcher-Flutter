// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(RepositoriesState)
const repositoriesStateProvider = RepositoriesStateProvider._();

final class RepositoriesStateProvider
    extends $NotifierProvider<RepositoriesState, RepositoriesResponse?> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RepositoriesResponse? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RepositoriesResponse?>(value),
    );
  }
}

String _$repositoriesStateHash() => r'78d54d1850d5cb0c25342f161af47b2a0b1339b8';

abstract class _$RepositoriesState extends $Notifier<RepositoriesResponse?> {
  RepositoriesResponse? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RepositoriesResponse?, RepositoriesResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RepositoriesResponse?, RepositoriesResponse?>,
              RepositoriesResponse?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
