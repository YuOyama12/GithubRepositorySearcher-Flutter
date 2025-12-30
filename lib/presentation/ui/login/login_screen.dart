import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/presentation/provider/auth_provider/auth_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../const/strings.dart';
import '../core/base_app_bar.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accessTokenController = useTextEditingController();
    final tokenTextHidden = useState(true);

    final isTokenFilled = useListenableSelector(
      accessTokenController,
      () => accessTokenController.text.isNotEmpty,
    );

    final provider = ref.watch(
      authProvider(accessTokenController.text).notifier,
    );

    return Scaffold(
      appBar: BaseAppBar(title: StringConsts.login),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(StringConsts.loginDescription),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 12.0),
                child: Column(
                  spacing: 18.0,
                  children: [
                    TextField(
                      controller: accessTokenController,
                      obscureText: tokenTextHidden.value,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hint: Text(
                          StringConsts.personalAccessToken,
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            tokenTextHidden.value = !tokenTextHidden.value;
                          },
                          child: Icon(
                            (tokenTextHidden.value)
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      onChanged: (value) => accessTokenController.text = value,
                    ),
                    FilledButton(
                      onPressed: isTokenFilled
                          ? () {
                              provider.fetch(accessTokenController.text);
                            }
                          : null,
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          StringConsts.login,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
