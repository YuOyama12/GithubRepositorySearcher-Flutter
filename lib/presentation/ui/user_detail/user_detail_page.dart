import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/avatar_icon.dart';
import 'package:github_repository_searcher/presentation/ui/user_detail/navigation/user_detail_args.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/entity/response/user_response/user_response.dart';
import '../../provider/user_response_notifier.dart';

class UserDetailPage extends HookConsumerWidget {
  const UserDetailPage({
    super.key,
    required this.args,
  });

  final UserDetailArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userResponse = ref.watch(userResponseNotifierProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(userResponseNotifierProvider.notifier)
            .fetchUserById(userId: args.userId);
      });

      return ref.read(userResponseNotifierProvider.notifier)
          .initialize;
    }, []);

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