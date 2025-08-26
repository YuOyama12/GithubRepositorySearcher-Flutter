import 'package:github_repository_searcher/data/repository/user_repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:github_repository_searcher/presentation/provider/loading_progress_controller.dart';
import 'package:hooks_riverpod/legacy.dart';

final userResponseNotifierProvider =
StateNotifierProvider<UserResponseNotifier, UserResponse?>(
      (ref) {
    final userRepository = ref.watch(userRepositoryProvider);
    final loadingController = ref.read(loadingProgressController.notifier);

    return UserResponseNotifier(
      loadingController: loadingController,
      userRepository: userRepository,
    );
  },
);

class UserResponseNotifier extends StateNotifier<UserResponse?> {
  final LoadingProgressController loadingController;
  final UserRepository userRepository;

  UserResponseNotifier({
    required this.loadingController,
    required this.userRepository,
  }) : super(null);

  Future<void> fetchUserById({
    required int userId
  }) async {
    try {
      loadingController.setLoading(isLoading: true);
      state = await userRepository.fetchUserById(userId: userId);
    } finally {
      loadingController.setLoading(isLoading: false);
    }
  }

  void initialize() {
    state = null;
  }
}