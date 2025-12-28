import 'package:flutter/cupertino.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/user_detail_page.dart';
import 'package:go_router/go_router.dart';

import '../router.dart';

class UserDetailRoute extends GoRouteData with $UserDetailRoute {
  const UserDetailRoute({required this.userId, required this.userName});

  final int userId;
  final String userName;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserDetailPage(userId: userId, userName: userName);
  }
}
