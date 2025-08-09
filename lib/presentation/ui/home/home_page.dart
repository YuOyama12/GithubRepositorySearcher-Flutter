import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/ui/home/widget/repository_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/repositories_response_notifier.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQueryController = TextEditingController(text: '');
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
                      controller: searchQueryController,
                      decoration: InputDecoration(
                        hintText: StringConsts.searchPlaceholder,
                      ),
                    )
                ),
                FilledButton(
                  onPressed: () {
                    ref.read(repositoriesResponseNotifierProvider.notifier)
                        .searchRepositories(query: searchQueryController.text);
                  },
                  child: Text(StringConsts.search),
                ),
              ],
            ),
          ),
          (repositoryResponse == null || repositoryResponse.items.isEmpty)
              ? Expanded(child: _NoRepositoryWidget())
              : Expanded(
              child: ListView.builder(
                  itemCount: repositoryResponse.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    final repository = repositoryResponse.items[index];
                    return RepositoryItem(
                        repository: repository
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}

class _NoRepositoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(StringConsts.noRepositoryResult),
      );
  }

}