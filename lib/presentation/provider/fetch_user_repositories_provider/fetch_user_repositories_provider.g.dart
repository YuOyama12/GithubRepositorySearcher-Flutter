// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_user_repositories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FetchUserRepositories)
final fetchUserRepositoriesProvider = FetchUserRepositoriesFamily._();

final class FetchUserRepositoriesProvider
    extends $AsyncNotifierProvider<FetchUserRepositories, List<Repository>?> {
  FetchUserRepositoriesProvider._({
    required FetchUserRepositoriesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'fetchUserRepositoriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchUserRepositoriesHash();

  @override
  String toString() {
    return r'fetchUserRepositoriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FetchUserRepositories create() => FetchUserRepositories();

  @override
  bool operator ==(Object other) {
    return other is FetchUserRepositoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchUserRepositoriesHash() =>
    r'6a94ce7d98117d66c04ef9971220699fb7e1749f';

final class FetchUserRepositoriesFamily extends $Family
    with
        $ClassFamilyOverride<
          FetchUserRepositories,
          AsyncValue<List<Repository>?>,
          List<Repository>?,
          FutureOr<List<Repository>?>,
          String
        > {
  FetchUserRepositoriesFamily._()
    : super(
        retry: null,
        name: r'fetchUserRepositoriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchUserRepositoriesProvider call(String userName) =>
      FetchUserRepositoriesProvider._(argument: userName, from: this);

  @override
  String toString() => r'fetchUserRepositoriesProvider';
}

abstract class _$FetchUserRepositories
    extends $AsyncNotifier<List<Repository>?> {
  late final _$args = ref.$arg as String;
  String get userName => _$args;

  FutureOr<List<Repository>?> build(String userName);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Repository>?>, List<Repository>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Repository>?>, List<Repository>?>,
              AsyncValue<List<Repository>?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
