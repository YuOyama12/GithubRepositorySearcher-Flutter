import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/provider/loading_progress_controller.dart';
import 'package:github_repository_searcher/presentation/ui/core/loading_indicator.dart';
import 'package:github_repository_searcher/presentation/ui/home/home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(loadingProgressController);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Stack(
        children: [
          const HomePage(),
          LoadingIndicator(isLoading: loading),
        ],
      )
    );
  }
}