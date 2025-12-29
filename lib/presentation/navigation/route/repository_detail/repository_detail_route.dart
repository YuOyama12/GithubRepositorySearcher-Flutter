import 'package:flutter/cupertino.dart';
import 'package:github_repository_searcher/presentation/navigation/router.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/repository_detail_screen.dart';
import 'package:go_router/go_router.dart';

import '../../../const/routes.dart';

part 'repository_detail_route.g.dart';

@TypedGoRoute<RepositoryDetailRoute>(
  path: RouteConsts.repositoryDetailScreenPath,
)
class RepositoryDetailRoute extends GoRouteData with $RepositoryDetailRoute {
  const RepositoryDetailRoute({
    required this.repositoryName,
    required this.repositoryUrl,
  });

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  final String repositoryName;
  final String repositoryUrl;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RepositoryDetailScreen(
      repositoryName: repositoryName,
      repositoryUrl: repositoryUrl,
    );
  }
}
