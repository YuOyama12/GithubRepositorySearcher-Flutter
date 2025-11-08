import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/domain/entity/request/search_repositories_request/search_repositories_request.dart';
import 'package:github_repository_searcher/extension/list.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/navigation/route/repository_detail_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/user_detail_route.dart';
import 'package:github_repository_searcher/presentation/provider/repositories_state_provider/repositories_state_provider.dart';
import 'package:github_repository_searcher/presentation/ui/core/paging_list_view.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/repository_item.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/repository_item_separator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQueryController = TextEditingController();
    final scrollController = useScrollController();
    final repoProvider = repositoriesStateProvider(
      SearchRepositoriesRequest(query: searchQueryController.text),
    );
    final repositoriesResponse = ref.watch(repoProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(StringConsts.searchPageTitle),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 6.0,
              horizontal: 12.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    controller: searchQueryController,
                    decoration: InputDecoration(
                      hintText: StringConsts.searchPlaceholder,
                      suffixIcon: ValueListenableBuilder<TextEditingValue>(
                        valueListenable: searchQueryController,
                        builder: (context, value, child) {
                          return (searchQueryController.text.isNotEmpty)
                              ? IconButton(
                                  onPressed: () =>
                                      searchQueryController.text = '',
                                  icon: Icon(Icons.clear_rounded),
                                )
                              : SizedBox.shrink();
                        },
                      ),
                    ),
                  ),
                ),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: searchQueryController,
                  builder: (context, value, child) {
                    return FilledButton(
                      onPressed: (value.text.isNotEmpty)
                          ? () {
                              ref
                                  .read(repoProvider.notifier)
                                  .fetch(
                                    SearchRepositoriesRequest(
                                      query: searchQueryController.text,
                                    ),
                                  );
                            }
                          : null,
                      child: Text(StringConsts.search),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 2.0,
              horizontal: 16.0,
            ),
            child: _SearchResultInfo(
              queryText: ref.read(repoProvider.notifier).latestQuery,
              resultCount: repositoriesResponse.value?.totalCount,
            ),
          ),
          (repositoriesResponse.value?.items.isEmpty ?? true)
              ? Expanded(child: _NoRepositoryWidget())
              : Expanded(
                  child: RefreshIndicator(
                    onRefresh: ref.read(repoProvider.notifier).manualRefresh,
                    child: PagingListView(
                      controller: scrollController,
                      fetchNextPage: ref
                          .read(repoProvider.notifier)
                          .fetchNextPage,
                      itemCount: repositoriesResponse.value?.items.length ?? 0,
                      itemSeparator: (_, int index) {
                        final lastIndex =
                            repositoriesResponse.value?.items.lastIndex;

                        if (index == lastIndex) {
                          return SizedBox.shrink();
                        }
                        return RepositoryItemSeparator();
                      },
                      item: (_, int index) {
                        final repository = repositoriesResponse.value?.items
                            .getOrNull(index);

                        if (repository == null) {
                          return SizedBox.shrink();
                        }

                        return RepositoryItem(
                          repository: repository,
                          onItemTap: (repo) => RepositoryDetailRoute(
                            repositoryName: repo.name,
                            repositoryUrl: repo.htmlUrl ?? '',
                          ).push<void>(context),
                          onOwnerTap: (userId, userName) => UserDetailRoute(
                            userId: userId,
                            userName: userName,
                          ).push<void>(context),
                        );
                      },
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class _NoRepositoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(StringConsts.noRepositoryResult));
  }
}

class _SearchResultInfo extends StatelessWidget {
  const _SearchResultInfo({required this.queryText, required this.resultCount});

  final String? queryText;
  final int? resultCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            StringConsts.queryTextResult(queryText),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(StringConsts.queryResultCount(resultCount), maxLines: 1),
      ],
    );
  }
}
