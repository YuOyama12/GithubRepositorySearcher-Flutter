// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_storage_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SecureStorageController)
final secureStorageControllerProvider = SecureStorageControllerProvider._();

final class SecureStorageControllerProvider
    extends $NotifierProvider<SecureStorageController, void> {
  SecureStorageControllerProvider._()
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
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
