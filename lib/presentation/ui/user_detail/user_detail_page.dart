import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/navigation/user_detail_args.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/user_response_notifier.dart';

class UserDetailPage extends HookConsumerWidget {
  const UserDetailPage({
    super.key,
    required this.args,
  });

  final UserDetailArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userResponse = ref.watch(userResponseNotifierProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(userResponseNotifierProvider.notifier)
            .fetchUserById(userId: args.userId);
      });

      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(userResponse?.login ?? ''),
      ),
      body: Column(
        children: [
        ]
      )
    );
  }
}