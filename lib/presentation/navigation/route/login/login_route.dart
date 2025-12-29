import 'package:flutter/cupertino.dart';
import 'package:github_repository_searcher/presentation/ui/login/login_screen.dart';
import 'package:go_router/go_router.dart';

import '../../../const/routes.dart';

part 'login_route.g.dart';

@TypedGoRoute<LoginRoute>(path: RouteConsts.loginScreenPath)
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}
