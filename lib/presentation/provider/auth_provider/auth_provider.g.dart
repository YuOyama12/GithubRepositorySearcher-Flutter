// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Auth)
const authProvider = AuthFamily._();

final class AuthProvider extends $AsyncNotifierProvider<Auth, UserResponse?> {
  const AuthProvider._({
    required AuthFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'authProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$authHash();

  @override
  String toString() {
    return r'authProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Auth create() => Auth();

  @override
  bool operator ==(Object other) {
    return other is AuthProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$authHash() => r'572ca2d1934b4abb120f84f42ae6c39567f9449d';

final class AuthFamily extends $Family
    with
        $ClassFamilyOverride<
          Auth,
          AsyncValue<UserResponse?>,
          UserResponse?,
          FutureOr<UserResponse?>,
          String
        > {
  const AuthFamily._()
    : super(
        retry: null,
        name: r'authProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AuthProvider call(String request) =>
      AuthProvider._(argument: request, from: this);

  @override
  String toString() => r'authProvider';
}

abstract class _$Auth extends $AsyncNotifier<UserResponse?> {
  late final _$args = ref.$arg as String;
  String get request => _$args;

  FutureOr<UserResponse?> build(String request);
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
