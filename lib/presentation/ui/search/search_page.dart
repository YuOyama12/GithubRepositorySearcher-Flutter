import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/domain/entity/request/search_repositories_request/search_repositories_request.dart';
import 'package:github_repository_searcher/extension/list.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/navigation/navigation_utils.dart';
import 'package:github_repository_searcher/presentation/provider/repositories_state_provider/repositories_state_provider.dart';
import 'package:github_repository_searcher/presentation/ui/core/paging_list_view.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/repository_item.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/repository_item_separator.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/navigation/repository_detail_args.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/navigation/user_detail_args.dart';
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
                          onItemTap: (repo) =>
                              NavigationUtils.toRepositoryDetail(
                                context: context,
                                args: RepositoryDetailArgs(
                                  repositoryName: repo.name,
                                  repositoryUrl: repo.htmlUrl ?? '',
                                ),
                              ),
                          onOwnerTap: (userId, userName) {
                            NavigationUtils.toUserDetail(
                              context: context,
                              args: UserDetailArgs(
                                userId: userId,
                                userName: userName,
                              ),
                            );
                          },
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
