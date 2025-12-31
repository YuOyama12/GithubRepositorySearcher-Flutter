import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entity/response/user_response/user_response.dart';
import '../service/api_client/api_client.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(apiClient);
});

class AuthRepository {
  AuthRepository(this.apiClient);

  final ApiClient apiClient;

  Future<UserResponse> auth({required String header}) async {
    return apiClient.auth(header: header);
  }
}
