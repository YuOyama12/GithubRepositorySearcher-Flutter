import 'package:flutter/cupertino.dart';
import 'package:github_repository_searcher/presentation/const/routes.dart';
import 'package:github_repository_searcher/presentation/navigation/route/my_page_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/repository_detail_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/search_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/user_detail_route.dart';
import 'package:github_repository_searcher/presentation/ui/top/top_page.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  initialLocation: RouteConsts.searchPagePath,
  routes: $appRoutes,
  navigatorKey: rootNavigatorKey,
);

@TypedStatefulShellRoute<TopRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<SearchBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SearchRoute>(
          path: RouteConsts.searchPagePath,
          routes: <TypedGoRoute<GoRouteData>>[
            TypedGoRoute<RepositoryDetailRoute>(
              path: RouteConsts.repositoryDetailPagePath,
            ),
            TypedGoRoute<UserDetailRoute>(path: RouteConsts.userDetailPagePath),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<MyPageBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<MyPageRoute>(path: RouteConsts.myPagePath),
      ],
    ),
  ],
)
class TopRoute extends StatefulShellRouteData {
  const TopRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigationShell,
  ) {
    return TopPage(child: navigationShell);
  }
}
