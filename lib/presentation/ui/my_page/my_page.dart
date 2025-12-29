import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/ui/core/base_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../const/strings.dart';

class MyPage extends HookConsumerWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: BaseAppBar(title: StringConsts.myPage),
      body: Column(children: [Text(StringConsts.myPage)]),
    );
  }
}
