import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/domain/entity/request/search_repositories_request/search_repositories_request.dart';
import 'package:github_repository_searcher/domain/entity/type/search/sort_type.dart';
import 'package:github_repository_searcher/extension/list.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/navigation/route/repository_detail/repository_detail_route.dart';
import 'package:github_repository_searcher/presentation/navigation/route/user_detail/user_detail_route.dart';
import 'package:github_repository_searcher/presentation/provider/repositories_state_provider/repositories_state_provider.dart';
import 'package:github_repository_searcher/presentation/ui/core/base_app_bar.dart';
import 'package:github_repository_searcher/presentation/ui/core/paging_list_view.dart';
import 'package:github_repository_searcher/presentation/ui/core/screen_size.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/repository_item.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/repository_item_separator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchScreen extends HookConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQueryController = TextEditingController();
    final selectedSortType = useState(SortType.values.first);
    final isDescOrder = useState(true);

    final scrollController = useScrollController();
    final repoProvider = repositoriesStateProvider(
      SearchRepositoriesRequest(query: searchQueryController.text),
    );
    final repositoriesResponse = ref.watch(repoProvider);

    return Scaffold(
      appBar: BaseAppBar(title: StringConsts.searchPageTitle),
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
                                      sort: selectedSortType.value,
                                      isDesc: isDescOrder.value,
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
              vertical: 6.0,
              horizontal: 12.0,
            ),
            child: _SortBar(
              selectedSortType: selectedSortType.value,
              isDescOrder: isDescOrder.value,
              onSortStateChange: (sortType, isDesc) {
                selectedSortType.value = sortType;
                isDescOrder.value = isDesc;

                ref
                    .read(repoProvider.notifier)
                    .refreshWithSortType(sortType, isDesc);
              },
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

class _SortBar extends StatelessWidget {
  const _SortBar({
    required this.selectedSortType,
    required this.isDescOrder,
    required this.onSortStateChange,
  });

  final SortType selectedSortType;
  final bool isDescOrder;
  final Function(SortType, bool isDesc) onSortStateChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 12.0,
      children: [
        Text(StringConsts.sortBarHeader),
        SizedBox(
          width: ScreenSize.getWidth(context, percent: 32.5),
          child: InputDecorator(
            decoration: InputDecoration(
              // 0.0を指定しないと初期値のpaddingが設けられてしまうため
              // 明示的に指定している。
              contentPadding: EdgeInsets.all(0.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.zero),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: selectedSortType,
                items: SortType.values
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          item.label,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (newValue) {
                  if (newValue != null) {
                    onSortStateChange(newValue, isDescOrder);
                  }
                },
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: (selectedSortType.shouldIgnoreOrder)
              ? null
              : () {
                  onSortStateChange(selectedSortType, !isDescOrder);
                },
          child: Text(
            (selectedSortType.shouldIgnoreOrder)
                ? StringConsts.none
                : (isDescOrder)
                ? StringConsts.descOrder
                : StringConsts.ascOrder,
          ),
        ),
      ],
    );
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
