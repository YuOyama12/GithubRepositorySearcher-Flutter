// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_storage_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SecureStorageController)
const secureStorageControllerProvider = SecureStorageControllerProvider._();

final class SecureStorageControllerProvider
    extends $NotifierProvider<SecureStorageController, void> {
  const SecureStorageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secureStorageControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secureStorageControllerHash();

  @$internal
  @override
  SecureStorageController create() => SecureStorageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$secureStorageControllerHash() =>
    r'a3b383ef9f9773da7332bcac40c3a08d0a7c3e10';

abstract class _$SecureStorageController extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
