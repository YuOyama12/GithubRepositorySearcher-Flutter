// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_my_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FetchMyInfo)
const fetchMyInfoProvider = FetchMyInfoProvider._();

final class FetchMyInfoProvider
    extends $AsyncNotifierProvider<FetchMyInfo, UserResponse?> {
  const FetchMyInfoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchMyInfoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchMyInfoHash();

  @$internal
  @override
  FetchMyInfo create() => FetchMyInfo();
}

String _$fetchMyInfoHash() => r'54288fe898690d2293d2c17a27ed747515ad0ab0';

abstract class _$FetchMyInfo extends $AsyncNotifier<UserResponse?> {
  FutureOr<UserResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
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
