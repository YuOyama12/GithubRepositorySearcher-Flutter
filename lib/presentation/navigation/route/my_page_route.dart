import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/ui/my_page/my_page.dart';
import 'package:go_router/go_router.dart';

import '../router.dart';

class MyPageBranchData extends StatefulShellBranchData {
  const MyPageBranchData();
}

class MyPageRoute extends GoRouteData with $MyPageRoute {
  const MyPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MyPage();
  }
}
