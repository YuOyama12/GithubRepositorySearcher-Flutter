import 'package:flutter/material.dart';
import 'package:github_repository_searcher/domain/entity/type/bottom_navigation_type.dart';
import 'package:github_repository_searcher/presentation/navigation/route/my_page_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/search_route.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../const/strings.dart';
import '../../navigation/route/login/login_route.dart';
import '../core/base_dialog.dart';

class TopScreen extends HookConsumerWidget {
  const TopScreen({super.key, required this.child});

  final Widget child;

  int _getCurrentIndex(BuildContext context) {
    final String currentPath = GoRouterState.of(context).uri.path;
    final currentBottomNavigationType = BottomNavigationType.values.firstWhere(
      (type) => type.path == currentPath,
      orElse: () => BottomNavigationType.values.first,
    );

    return currentBottomNavigationType.index;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int selectedIndex = _getCurrentIndex(context);

    final bool isAuth = false;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
              if (isAuth) {
                const MyPageRoute().go(context);
              } else {
                showDialog(
                  context: context,
                  builder: (dialogContext) => BaseDialog(
                    title: StringConsts.loginDialogTitle,
                    message: StringConsts.loginDialogMessage,
                    positiveButtonText: StringConsts.login,
                    onPositiveButtonTap: () {
                      Navigator.pop(dialogContext);
                      LoginRoute().push(context);
                    },
                    negativeButtonText: StringConsts.later,
                  ),
                );
              }
          }
        },
        currentIndex: selectedIndex,
      ),
      body: child,
    );
  }
}
