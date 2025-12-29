import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../const/strings.dart';
import '../core/base_app_bar.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: BaseAppBar(title: StringConsts.login),
      body: Column(children: [Text(StringConsts.login)]),
    );
  }
}
