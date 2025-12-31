import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:github_repository_searcher/domain/entity/type/storage_key_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_controller.g.dart';

@Riverpod(keepAlive: true)
class SecureStorageController extends _$SecureStorageController {
  late final FlutterSecureStorage storage;

  @override
  void build() {
    storage = const FlutterSecureStorage();
  }

  Future<void> setValue({
    required StorageKeyType keyType,
    required String value,
  }) async {
    await storage.write(key: keyType.name, value: value);
  }

  Future<String?> getValue({required StorageKeyType keyType}) async {
    return await storage.read(key: keyType.name);
  }

  Future<void> deleteValue({required StorageKeyType keyType}) async {
    await storage.delete(key: keyType.name);
  }
}
