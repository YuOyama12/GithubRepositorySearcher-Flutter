import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/navigation/repository_detail_args.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositoryDetailPage extends HookConsumerWidget {
  const RepositoryDetailPage({
    super.key,
    required this.args,
  });

  final RepositoryDetailArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(args.repositoryName),
      ),
      body: Text(
        args.repositoryUrl,
      ),
    );
  }
}