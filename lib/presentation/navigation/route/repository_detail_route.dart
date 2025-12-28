import 'package:flutter/cupertino.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/repository_detail_page.dart';
import 'package:go_router/go_router.dart';

import '../router.dart';

class RepositoryDetailRoute extends GoRouteData with $RepositoryDetailRoute {
  const RepositoryDetailRoute({
    required this.repositoryName,
    required this.repositoryUrl,
  });

  final String repositoryName;
  final String repositoryUrl;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RepositoryDetailPage(
      repositoryName: repositoryName,
      repositoryUrl: repositoryUrl,
    );
  }
}
