import 'package:github_repository_searcher/domain/entity/type/storage_key_type.dart';
import 'package:github_repository_searcher/presentation/provider/core/secure_storage_controller/secure_storage_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'access_token_provider.g.dart';

@Riverpod(keepAlive: true)
class AccessToken extends _$AccessToken {
  @override
  Future<String?> build() async {
    return ref
        .read(secureStorageControllerProvider.notifier)
        .getValue(keyType: StorageKeyType.accessToken);
  }

  Future<void> updateToken(String? token) async {
    if (token == null) {
      await ref
          .read(secureStorageControllerProvider.notifier)
          .deleteValue(keyType: StorageKeyType.accessToken);
    } else {
      await ref
          .read(secureStorageControllerProvider.notifier)
          .setValue(keyType: StorageKeyType.accessToken, value: token);
    }

    state = AsyncValue.data(token);
  }
}
