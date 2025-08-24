import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/navigation/user_detail_args.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserDetailPage extends HookConsumerWidget {
  const UserDetailPage({
    super.key,
    required this.args,
  });

  final UserDetailArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(args.userId.toString()),
      ),
      body: Column(
        children: [
        ]
      )
    );
  }
}