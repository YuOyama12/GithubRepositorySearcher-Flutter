import 'package:flutter/material.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repository/repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:github_repository_searcher/presentation/const/colors.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/avatar_icon.dart';

class RepositoryItem extends StatelessWidget {
  const RepositoryItem({
    super.key,
    required this.repository,
  });
  
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    final description = repository.description;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.zero,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: _ProfileWidget(owner: repository.owner),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsetsGeometry.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repository.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(vertical: 6.0),
                      child: Text(
                        description ?? '',
                        style: TextStyle(fontSize: 11.5),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(StringConsts.usedLanguage(repository.language)),
                    Padding(
                      padding: EdgeInsetsGeometry.all(4.0),
                      child: _StarsAndWatchers(
                          stargazersCount: repository.stargazersCount,
                          watchersCount: repository.watchersCount
                      ),
                    )
                  ],
                )
            )
          )
        ],
      ),
    );
  }
}

class _ProfileWidget extends StatelessWidget {
  final UserResponse owner;

  const _ProfileWidget({
    required this.owner,
  });

  @override
  Widget build(BuildContext context) {
    final widgetWidth = 72.0;
    return Column(
        children: [
          AvatarIcon(
            avatarUrl: owner.avatarUrl,
            size: widgetWidth,
          ),
          SizedBox(height: 6.0),
          Container(
            width: widgetWidth,
            alignment: Alignment.center,
            child: Text(
              owner.login,
              style: TextStyle(
                fontSize: 12.5,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ]
    );
  }
}

class _StarsAndWatchers extends StatelessWidget {
  final int stargazersCount;
  final int watchersCount;

  const _StarsAndWatchers({
    required this.stargazersCount,
    required this.watchersCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6.0,
      children: [
        Icon(
          Icons.star,
          color: ColorConsts.starYellow,
        ),
        Expanded(
          child: Text(
            stargazersCount.toString()
          ),
        ),
        Icon(
          Icons.remove_red_eye_rounded,
          color: ColorConsts.watcherGray,
        ),
        Expanded(
          child: Text(
              watchersCount.toString()
          ),
        ),
      ],
    );
  }
}