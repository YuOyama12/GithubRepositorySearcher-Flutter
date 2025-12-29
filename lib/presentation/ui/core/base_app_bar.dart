import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    required this.title,
    this.automaticallyImplyLeading = true,
    this.leading,
    this.automaticallyImplyActions = true,
    this.actions,
  });

  final String title;
  final bool automaticallyImplyLeading;
  final Widget? leading;
  final bool automaticallyImplyActions;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: leading,
      automaticallyImplyActions: automaticallyImplyActions,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
