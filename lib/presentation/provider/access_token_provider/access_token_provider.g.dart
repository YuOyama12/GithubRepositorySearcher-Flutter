// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AccessToken)
const accessTokenProvider = AccessTokenProvider._();

final class AccessTokenProvider
    extends $AsyncNotifierProvider<AccessToken, String?> {
  const AccessTokenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accessTokenProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accessTokenHash();

  @$internal
  @override
  AccessToken create() => AccessToken();
}

String _$accessTokenHash() => r'8447f23d7a788e0c8f36014fc0a52a60b345d1d3';

abstract class _$AccessToken extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
