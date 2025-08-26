import 'package:github_repository_searcher/presentation/const/routes.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/repository_detail_page.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/navigation/user_detail_args.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/user_detail_page.dart';
import 'package:go_router/go_router.dart';

import '../ui/home/home_page.dart';
import '../ui/repository_detail/navigation/repository_detail_args.dart';

final goRouter = GoRouter(
  initialLocation: RouteConsts.homePagePath,
  routes: [
    _homePageRoute,
    _repositoryDetailPageRoute,
    _userDetailPageRoute
  ],
);

final _homePageRoute = GoRoute(
  path: RouteConsts.homePagePath,
  builder: (_, _) => HomePage(),
);

final _repositoryDetailPageRoute = GoRoute(
  path: RouteConsts.repositoryDetailPagePath,
  builder: (_, state) {
    final data = state.extra as Map<String, dynamic>;
    return RepositoryDetailPage(
        args: RepositoryDetailArgs(
          repositoryName: data[RepositoryDetailArgs.repositoryNameKey],
          repositoryUrl: data[RepositoryDetailArgs.repositoryUrlKey],
        ),
    );
  }
);

final _userDetailPageRoute = GoRoute(
    path: RouteConsts.userDetailPagePath,
    builder: (_, state) {
      final data = state.extra as Map<String, dynamic>;
      return UserDetailPage(
        args: UserDetailArgs(
          userId: data[UserDetailArgs.userIdKey],
        ),
      );
    }
);