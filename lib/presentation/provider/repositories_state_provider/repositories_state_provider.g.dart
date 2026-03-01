// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RepositoriesState)
final repositoriesStateProvider = RepositoriesStateProvider._();

final class RepositoriesStateProvider
    extends $AsyncNotifierProvider<RepositoriesState, RepositoriesResponse?> {
  RepositoriesStateProvider._()
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

String _$repositoriesStateHash() => r'7bf0cb02a19dc39bb1587de749ebc0589b84a7d0';

abstract class _$RepositoriesState
    extends $AsyncNotifier<RepositoriesResponse?> {
  FutureOr<RepositoriesResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
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
    element.handleCreate(ref, build);
  }
}
