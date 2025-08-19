import 'package:flutter/material.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/navigation/repository_detail_args.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../provider/loading_progress_controller.dart';

class RepositoryDetailPage extends HookConsumerWidget {
  const RepositoryDetailPage({
    super.key,
    required this.args,
  });

  final RepositoryDetailArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            ref.read(loadingProgressController.notifier)
              .setLoading(isLoading: (progress < 100));
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith(args.repositoryUrl)) {
              return NavigationDecision.navigate;
            }
            return NavigationDecision.prevent;
          }
        ),
      )
      ..loadRequest(Uri.parse(args.repositoryUrl));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(args.repositoryName),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}