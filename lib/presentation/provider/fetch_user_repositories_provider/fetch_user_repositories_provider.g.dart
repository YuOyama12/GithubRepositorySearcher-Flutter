// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_user_repositories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FetchUserRepositories)
const fetchUserRepositoriesProvider = FetchUserRepositoriesFamily._();

final class FetchUserRepositoriesProvider
    extends $AsyncNotifierProvider<FetchUserRepositories, List<Repository>?> {
  const FetchUserRepositoriesProvider._({
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
  const FetchUserRepositoriesFamily._()
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
    final created = build(_$args);
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
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
