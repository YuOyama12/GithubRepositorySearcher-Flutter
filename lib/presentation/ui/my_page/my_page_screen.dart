import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/provider/fetch_my_info_provider/fetch_my_info_provider.dart';
import 'package:github_repository_searcher/presentation/ui/core/base_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../const/strings.dart';

class MyPageScreen extends HookConsumerWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userResponse = ref.watch(fetchMyInfoProvider(null)).value;

    return Scaffold(
      appBar: BaseAppBar(title: StringConsts.myPage),
      body: Column(children: [Text(userResponse.toString() ?? '')]),
    );
  }
}
