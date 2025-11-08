import 'package:flutter/cupertino.dart';
import 'package:github_repository_searcher/presentation/const/routes.dart';
import 'package:github_repository_searcher/presentation/navigation/route/repository_detail_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/user_detail_route.dart';
import 'package:github_repository_searcher/presentation/ui/search/search_page.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final goRouter = GoRouter(routes: $appRoutes);

// top-levelのRoute
@TypedGoRoute<SearchRoute>(
  path: RouteConsts.searchPagePath,
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<RepositoryDetailRoute>(
      path: RouteConsts.repositoryDetailPagePath,
    ),
    TypedGoRoute<UserDetailRoute>(path: RouteConsts.userDetailPagePath),
  ],
)
class SearchRoute extends GoRouteData with $SearchRoute {
  const SearchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchPage();
  }
}
