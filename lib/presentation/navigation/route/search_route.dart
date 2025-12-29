import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../ui/search/search_page.dart';
import '../router.dart';

class SearchBranchData extends StatefulShellBranchData {
  const SearchBranchData();
}

class SearchRoute extends GoRouteData with $SearchRoute {
  const SearchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchPage();
  }
}
