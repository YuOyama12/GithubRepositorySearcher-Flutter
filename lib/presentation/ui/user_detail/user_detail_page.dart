import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/provider/fetch_user_provider/fetch_user_provider.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/avatar_icon.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/navigation/user_detail_args.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/entity/response/user_response/user_response.dart';

class UserDetailPage extends HookConsumerWidget {
  const UserDetailPage({
    super.key,
    required this.args,
  });

  final UserDetailArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userResponseData = ref.watch(fetchUserProvider(userId: args.userId));
    final userResponse = userResponseData.value;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(userResponse?.login ?? ''),
      ),
      body: (userResponse == null)
        ? SizedBox.shrink()
        : Padding(
          padding: EdgeInsetsGeometry.all(8.0),
          child: _Body(userResponse: userResponse),
        )
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.userResponse,
  });

  final UserResponse userResponse;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AvatarIcon(
                avatarUrl: userResponse.avatarUrl
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: Text(
                userResponse.login,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              )
            )
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(StringConsts.followingCount(userResponse.following)),
            SizedBox(width: 8.0),
            Text(StringConsts.followersCount(userResponse.followers)),
          ],
        ),
      ]
    );
  }
}