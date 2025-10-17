import 'package:github_repository_searcher/presentation/const/routes.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/repository_detail_page.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/navigation/user_detail_args.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/user_detail_page.dart';
import 'package:go_router/go_router.dart';

import '../ui/repository_detail/navigation/repository_detail_args.dart';
import '../ui/search//search_page.dart';

final goRouter = GoRouter(
  initialLocation: RouteConsts.searchPagePath,
  routes: [_searchPageRoute, _repositoryDetailPageRoute, _userDetailPageRoute],
);

final _searchPageRoute = GoRoute(
  path: RouteConsts.searchPagePath,
  builder: (_, _) => SearchPage(),
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
  },
);

final _userDetailPageRoute = GoRoute(
  path: RouteConsts.userDetailPagePath,
  builder: (_, state) {
    final data = state.extra as Map<String, dynamic>;
    return UserDetailPage(
      args: UserDetailArgs(
        userId: data[UserDetailArgs.userIdKey],
        userName: data[UserDetailArgs.userNameKey],
      ),
    );
  },
);
