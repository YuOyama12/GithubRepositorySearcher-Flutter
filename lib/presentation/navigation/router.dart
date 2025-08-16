import 'package:github_repository_searcher/presentation/const/routes.dart';
import 'package:go_router/go_router.dart';

import '../ui/home/home_page.dart';

final goRouter = GoRouter(
  initialLocation: RouteConsts.homePagePath,  // アプリ起動後のパス
  routes: [
    _homePageRoute,
  ],
);

final _homePageRoute = GoRoute(
  path: RouteConsts.homePagePath,
  builder: (_, _) => HomePage(),
);