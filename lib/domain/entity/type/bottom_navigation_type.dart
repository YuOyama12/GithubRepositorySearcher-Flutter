import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/const/routes.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';

enum BottomNavigationType {
  search(
    path: RouteConsts.searchScreenPath,
    label: StringConsts.search,
    icon: Icons.search,
  ),
  myPage(
    path: RouteConsts.myPageScreenPath,
    label: StringConsts.myPage,
    icon: Icons.person,
  );

  const BottomNavigationType({
    required this.path,
    required this.label,
    required this.icon,
  });

  final String path;
  final String label;
  final IconData icon;
}
