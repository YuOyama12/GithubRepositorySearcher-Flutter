import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositoryDetailPage extends HookConsumerWidget {
  const RepositoryDetailPage({
    super.key,
    required this.repositoryName,
    required this.repositoryUrl,
  });

  final String repositoryName;
  final String repositoryUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(repositoryName),
      ),
      body: Text(
        repositoryUrl,
      ),
    );
  }
}