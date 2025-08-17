import 'package:flutter/cupertino.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/navigation/repository_detail_args.dart';
import 'package:go_router/go_router.dart';

import '../const/routes.dart';

class NavigationUtils {
  static final NavigationUtils _instance = NavigationUtils._internal();

  factory NavigationUtils(){
    return _instance;
  }

  NavigationUtils._internal();

  static void toRepositoryDetail({
    required BuildContext context,
    required RepositoryDetailArgs args
  }) {
    context.push(
        RouteConsts.repositoryDetailPagePath,
        extra: {
          RepositoryDetailArgs.repositoryNameKey: args.repositoryName,
          RepositoryDetailArgs.repositoryUrlKey: args.repositoryUrl
        }
    );
  }

  static RepositoryDetailArgs getRepositoryDetailArgs({
    required GoRouterState state,
  }) {
    final data = state.extra as Map<String, dynamic>;
    return RepositoryDetailArgs(
        repositoryName: data[RepositoryDetailArgs.repositoryNameKey],
        repositoryUrl: data[RepositoryDetailArgs.repositoryUrlKey],
    );
  }
}