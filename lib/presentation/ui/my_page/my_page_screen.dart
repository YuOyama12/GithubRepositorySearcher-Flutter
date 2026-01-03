import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/provider/fetch_my_info_provider/fetch_my_info_provider.dart';
import 'package:github_repository_searcher/presentation/ui/core/base_app_bar.dart';
import 'package:github_repository_searcher/presentation/ui/core/widget/user_info_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../const/strings.dart';

class MyPageScreen extends HookConsumerWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userResponse = ref.watch(fetchMyInfoProvider(null)).value;

    return Scaffold(
      appBar: BaseAppBar(title: StringConsts.myPage),
      body: (userResponse == null)
          ? SizedBox.shrink()
          : Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.all(8),
                    child: UserInfoTile(userResponse: userResponse),
                  ),
                ],
              ),
            ),
    );
  }
}
