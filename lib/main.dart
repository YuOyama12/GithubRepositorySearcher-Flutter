import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/navigation/router.dart';
import 'package:github_repository_searcher/presentation/provider/api_error_state_controller.dart';
import 'package:github_repository_searcher/presentation/provider/loading_state_controller.dart';
import 'package:github_repository_searcher/presentation/ui/core/base_dialog.dart';
import 'package:github_repository_searcher/presentation/ui/core/loading_indicator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = MaterialApp.router(routerConfig: goRouter);

    final loading = ref.watch(loadingStateController);
    final apiErrorState = ref.watch(apiErrorStateController);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HookBuilder(
        builder: (builderContext) {
          useEffect(() {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (apiErrorState case final apiError when apiError != null) {
                showDialog(
                  context: builderContext,
                  builder: (_) {
                    return BaseDialog(
                      title: apiError.errorTitle ?? StringConsts.error,
                      message: apiError.errorMessage,
                      positiveButtonText: apiError.positiveButtonText,
                      negativeButtonText: apiError.negativeButtonText,
                    );
                  },
                );

                ref.read(apiErrorStateController.notifier).clear();
              }
            });

            return null;
          }, [apiErrorState]);

          return Stack(
            children: [
              appRouter,
              LoadingIndicator(isLoading: loading),
            ],
          );
        },
      ),
    );
  }
}
