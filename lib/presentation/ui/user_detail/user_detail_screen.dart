import 'package:flutter/material.dart';
import 'package:github_repository_searcher/extension/list.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/navigation/route/repository_detail/repository_detail_route.dart';
import 'package:github_repository_searcher/presentation/provider/fetch_user_provider/fetch_user_provider.dart';
import 'package:github_repository_searcher/presentation/provider/fetch_user_repositories_provider/fetch_user_repositories_provider.dart';
import 'package:github_repository_searcher/presentation/ui/core/base_app_bar.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/user_info_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/widget/repository_item.dart';
import '../core/widget/repository_item_separator.dart';

class UserDetailScreen extends HookConsumerWidget {
  const UserDetailScreen({
    super.key,
    required this.userId,
    required this.userName,
  });

  final int userId;
  final String userName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userResponse = ref.watch(fetchUserProvider(userId));
    final user = userResponse.value;

    final userReposResponse = ref.watch(
      fetchUserRepositoriesProvider(userName),
    );

    return Scaffold(
      appBar: BaseAppBar(title: userResponse.value?.login ?? ''),
      body: (user == null)
          ? SizedBox.shrink()
          : Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(8.0),
                  child: UserInfoTile(userResponse: user),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsetsGeometry.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  child: Text(
                    StringConsts.createdRepositoryList,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: (userReposResponse.value?.isEmpty ?? true)
                      ? Center(child: Text(StringConsts.noRepositoryResult))
                      : ListView.separated(
                          separatorBuilder: (_, int index) {
                            final lastIndex =
                                userReposResponse.value?.lastIndex ?? -1;

                            if (index == lastIndex) {
                              return SizedBox.shrink();
                            }
                            return RepositoryItemSeparator();
                          },
                          itemCount: userReposResponse.value?.length ?? 0,
                          itemBuilder: (_, int index) {
                            final repository = userReposResponse.value
                                ?.getOrNull(index);

                            if (repository == null) {
                              return SizedBox.shrink();
                            }

                            return RepositoryItem(
                              repository: repository,
                              onItemTap: (repo) => RepositoryDetailRoute(
                                repositoryName: repo.name,
                                repositoryUrl: repo.htmlUrl ?? '',
                              ).push<void>(context),
                              onOwnerTap: null,
                            );
                          },
                        ),
                ),
              ],
            ),
    );
  }
}
