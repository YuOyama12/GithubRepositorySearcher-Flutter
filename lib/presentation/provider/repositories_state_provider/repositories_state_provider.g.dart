// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(RepositoriesState)
const repositoriesStateProvider = RepositoriesStateFamily._();

final class RepositoriesStateProvider
    extends $AsyncNotifierProvider<RepositoriesState, RepositoriesResponse?> {
  const RepositoriesStateProvider._({
    required RepositoriesStateFamily super.from,
    required SearchRepositoriesRequest super.argument,
  }) : super(
         retry: null,
         name: r'repositoriesStateProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$repositoriesStateHash();

  @override
  String toString() {
    return r'repositoriesStateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RepositoriesState create() => RepositoriesState();

  @override
  bool operator ==(Object other) {
    return other is RepositoriesStateProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$repositoriesStateHash() => r'b41e6ac36c15eaeac4c08b37099383e6a9a38aef';

final class RepositoriesStateFamily extends $Family
    with
        $ClassFamilyOverride<
          RepositoriesState,
          AsyncValue<RepositoriesResponse?>,
          RepositoriesResponse?,
          FutureOr<RepositoriesResponse?>,
          SearchRepositoriesRequest
        > {
  const RepositoriesStateFamily._()
    : super(
        retry: null,
        name: r'repositoriesStateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RepositoriesStateProvider call(SearchRepositoriesRequest request) =>
      RepositoriesStateProvider._(argument: request, from: this);

  @override
  String toString() => r'repositoriesStateProvider';
}

abstract class _$RepositoriesState
    extends $AsyncNotifier<RepositoriesResponse?> {
  late final _$args = ref.$arg as SearchRepositoriesRequest;
  SearchRepositoriesRequest get request => _$args;

  FutureOr<RepositoriesResponse?> build(SearchRepositoriesRequest request);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
