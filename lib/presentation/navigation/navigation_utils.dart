import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/navigation/repository_detail_args.dart';
import 'package:go_router/go_router.dart';
import 'package:universal_html/js.dart' as js;

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
    if (kIsWeb) {
      js.context.callMethod("open", [args.repositoryUrl]);
    } else {
      context.push(
          RouteConsts.repositoryDetailPagePath,
          extra: {
            RepositoryDetailArgs.repositoryNameKey: args.repositoryName,
            RepositoryDetailArgs.repositoryUrlKey: args.repositoryUrl
          }
      );
    }
  }
}