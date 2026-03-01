// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_my_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FetchMyInfo)
final fetchMyInfoProvider = FetchMyInfoProvider._();

final class FetchMyInfoProvider
    extends $AsyncNotifierProvider<FetchMyInfo, UserResponse?> {
  FetchMyInfoProvider._()
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
    final ref = this.ref as $Ref<AsyncValue<UserResponse?>, UserResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserResponse?>, UserResponse?>,
              AsyncValue<UserResponse?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
