// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_my_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FetchMyInfo)
const fetchMyInfoProvider = FetchMyInfoFamily._();

final class FetchMyInfoProvider
    extends $AsyncNotifierProvider<FetchMyInfo, UserResponse?> {
  const FetchMyInfoProvider._({
    required FetchMyInfoFamily super.from,
    required dynamic super.argument,
  }) : super(
         retry: null,
         name: r'fetchMyInfoProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchMyInfoHash();

  @override
  String toString() {
    return r'fetchMyInfoProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FetchMyInfo create() => FetchMyInfo();

  @override
  bool operator ==(Object other) {
    return other is FetchMyInfoProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchMyInfoHash() => r'6c5d88e2fae367a1b0fbc189ea1a90d283f2efb8';

final class FetchMyInfoFamily extends $Family
    with
        $ClassFamilyOverride<
          FetchMyInfo,
          AsyncValue<UserResponse?>,
          UserResponse?,
          FutureOr<UserResponse?>,
          dynamic
        > {
  const FetchMyInfoFamily._()
    : super(
        retry: null,
        name: r'fetchMyInfoProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchMyInfoProvider call(dynamic request) =>
      FetchMyInfoProvider._(argument: request, from: this);

  @override
  String toString() => r'fetchMyInfoProvider';
}

abstract class _$FetchMyInfo extends $AsyncNotifier<UserResponse?> {
  late final _$args = ref.$arg as dynamic;
  dynamic get request => _$args;

  FutureOr<UserResponse?> build(dynamic request);
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
