// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(fetchUser)
const fetchUserProvider = FetchUserFamily._();

final class FetchUserProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserResponse>,
          UserResponse,
          FutureOr<UserResponse>
        >
    with $FutureModifier<UserResponse>, $FutureProvider<UserResponse> {
  const FetchUserProvider._({
    required FetchUserFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'fetchUserProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchUserHash();

  @override
  String toString() {
    return r'fetchUserProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<UserResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserResponse> create(Ref ref) {
    final argument = this.argument as int;
    return fetchUser(ref, userId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchUserProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchUserHash() => r'351a3dc6422ecb541f495ec31c0fd6969268205e';

final class FetchUserFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<UserResponse>, int> {
  const FetchUserFamily._()
    : super(
        retry: null,
        name: r'fetchUserProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchUserProvider call({required int userId}) =>
      FetchUserProvider._(argument: userId, from: this);

  @override
  String toString() => r'fetchUserProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
