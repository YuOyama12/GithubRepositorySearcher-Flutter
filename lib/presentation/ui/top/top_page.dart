import 'package:flutter/material.dart';
import 'package:github_repository_searcher/domain/entity/type/bottom_navigation_type.dart';
import 'package:github_repository_searcher/presentation/navigation/route/my_page_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/search_route.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({super.key, required this.child});

  final Widget child;

  int _getCurrentIndex(BuildContext context) {
    final String currentPath = GoRouterState.of(context).uri.path;
    final currentBottomNavigationType = BottomNavigationType.values.firstWhere(
      (type) => type.path == currentPath,
      orElse: () => BottomNavigationType.values.first,
    );

    return currentBottomNavigationType.index;
  }

  bool _isTopRoute(BuildContext context) {
    final String currentPath = GoRouterState.of(context).uri.path;
    return BottomNavigationType.values
        .map((type) => type.path)
        .contains(currentPath);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int selectedIndex = _getCurrentIndex(context);

    return Scaffold(
      bottomNavigationBar: (!_isTopRoute(context))
          ? null
          : BottomNavigationBar(
              items: BottomNavigationType.values.map((type) {
                return BottomNavigationBarItem(
                  icon: Icon(type.icon),
                  label: type.label,
                );
              }).toList(),
              onTap: (index) {
                switch (BottomNavigationType.values[index]) {
                  case BottomNavigationType.search:
                    const SearchRoute().go(context);
                  case BottomNavigationType.myPage:
                    const MyPageRoute().go(context);
                }
              },
              currentIndex: selectedIndex,
            ),
      body: child,
    );
  }
}
