import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/navigation/navigation_utils.dart';
import 'package:github_repository_searcher/presentation/provider/repositories_state_provider/repositories_state_provider.dart';
import 'package:github_repository_searcher/presentation/ui/home/widget/repository_item.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/navigation/repository_detail_args.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/navigation/user_detail_args.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQueryController = TextEditingController();
    final scrollController = useScrollController();
    final repositoriesResponse = ref.watch(repositoriesStateProvider);

    Timer? debounce;
    useEffect(() {
      void scrollListener() {
        const threshold = 0.8;

        final scrollValue =
            scrollController.offset / scrollController.position.maxScrollExtent;

        if (debounce?.isActive ?? false) {
          debounce?.cancel();
        }

        debounce = Timer(const Duration(milliseconds: 100), () {
          if (scrollValue > threshold) {
            // TODO: ページング処理を入れる
          }
        });
      }

      scrollController.addListener(scrollListener);

      return () => scrollController.removeListener(scrollListener);
    }, [scrollController]);

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
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: searchQueryController,
                  builder: (context, value, child) {
                    return FilledButton(
                      onPressed: (value.text.isNotEmpty)
                      ? () {
                        ref.read(repositoriesStateProvider.notifier)
                            .searchRepositories(query: searchQueryController.text);
                      }
                      : null,
                      child: Text(StringConsts.search),
                    );
                  },
                ),
              ],
            ),
          ),
          (repositoriesResponse.value?.items.isEmpty ?? true)
              ? Expanded(child: _NoRepositoryWidget())
              : Expanded(
              child: ListView.builder(
                  controller: scrollController,
                  itemCount: repositoriesResponse.value?.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    final repository = repositoriesResponse.value?.items[index];

                    if (repository == null) {
                      return SizedBox.shrink();
                    }

                    return InkWell(
                      onTap: () {
                        NavigationUtils.toRepositoryDetail(
                            context: context,
                            args: RepositoryDetailArgs(
                                repositoryName: repository.name,
                                repositoryUrl: repository.htmlUrl ?? '',
                            ),
                        );
                      },
                      child: RepositoryItem(
                        repository: repository,
                        onOwnerTap: (id) {
                          NavigationUtils.toUserDetail(
                            context: context,
                            args: UserDetailArgs(
                              userId: id,
                            ),
                          );
                        },
                      ),
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