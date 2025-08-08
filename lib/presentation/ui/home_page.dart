import 'package:flutter/material.dart';
import 'package:github_repository_searcher/data/service/api_client/api_client.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/provider/repository_query_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/repositories_response_notifier.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.read(repositoryQueryProvider);
    final repositoryResponse = ref.watch(repositoriesResponseNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(StringConsts.homePageTitle),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
                vertical: 6.0,
                horizontal: 12.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: TextField(
                      controller: TextEditingController(text: query),
                      decoration: InputDecoration(
                        hintText: StringConsts.searchPlaceholder,
                      ),
                      onChanged: (newValue) {
                        ref.read(repositoryQueryProvider.notifier).state = newValue;
                      },
                    )
                ),
                FilledButton(
                  onPressed: () {
                    ref.read(repositoriesResponseNotifierProvider.notifier)
                        .searchRepositories(query: query);
                  },
                  child: Text(StringConsts.search),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
