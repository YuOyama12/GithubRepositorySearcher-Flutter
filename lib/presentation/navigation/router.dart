import 'package:flutter/cupertino.dart';
import 'package:github_repository_searcher/presentation/const/routes.dart';
import 'package:github_repository_searcher/presentation/navigation/route/login/login_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/my_page_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/repository_detail/repository_detail_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/search_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/user_detail/user_detail_route.dart';
import 'package:github_repository_searcher/presentation/ui/top/top_screen.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  initialLocation: RouteConsts.searchScreenPath,
  routes: <RouteBase>[
    ...$appRoutes,
    $repositoryDetailRoute,
    $userDetailRoute,
    $loginRoute,
  ],
  navigatorKey: rootNavigatorKey,
);

// NOTE: トップ画面とつながるBottomNavigationを表示させたいページはここに配置する。
@TypedStatefulShellRoute<TopRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<SearchBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SearchRoute>(path: RouteConsts.searchScreenPath),
      ],
    ),
    TypedStatefulShellBranch<MyPageBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<MyPageRoute>(path: RouteConsts.myPageScreenPath),
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
    return TopScreen(child: navigationShell);
  }
}
