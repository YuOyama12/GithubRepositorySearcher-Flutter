import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_searcher/presentation/const/colors.dart';
import 'package:github_repository_searcher/presentation/const/strings.dart';
import 'package:github_repository_searcher/presentation/ui/repository_detail/navigation/repository_detail_args.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../provider/loading_state_controller.dart';

class RepositoryDetailPage extends HookConsumerWidget {
  const RepositoryDetailPage({super.key, required this.args});

  final RepositoryDetailArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double currentYPositon = 0;
    final showWebPageController = useState(true);

    final controller = useMemoized(() {
      return WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setOnScrollPositionChange((position) {
          // 上へスクロールしたときのみ、WebPageControllerを表示させる。
          if (position.y < currentYPositon) {
            showWebPageController.value = true;
          } else {
            showWebPageController.value = false;
          }

          currentYPositon = position.y;
        })
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              final loadingController = ref.read(
                loadingStateController.notifier,
              );
              final isLoading = ref.read(loadingStateController);

              if (progress < 100) {
                if (isLoading) {
                  return;
                }

                loadingController.showLoading();
              } else {
                loadingController.hideLoading();
              }
            },
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith(args.repositoryUrl)) {
                return NavigationDecision.navigate;
              }

              _showLoadPreventionSnackBar(context);
              return NavigationDecision.prevent;
            },
          ),
        )
        ..loadRequest(Uri.parse(args.repositoryUrl));
    }, [args.repositoryUrl]);

    // ページ読み込み中にこの画面を離れるとインジケータが表示され続けるので
    // 画面を離れる際にインジケータを非表示にする
    useEffect(() {
      return ref.read(loadingStateController.notifier).hideLoading;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(args.repositoryName),
        leading: CloseButton(onPressed: () => context.pop()),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          AnimatedOpacity(
            opacity: showWebPageController.value ? 1.0 : 0.0,
            duration: Duration(milliseconds: 200),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 36.0,
                  vertical: 48.0,
                ),
                child: _WebPageController(
                  onBackPressed: () async {
                    if (await controller.canGoBack()) {
                      controller.goBack();
                    }
                  },
                  onForwardPressed: () async {
                    if (await controller.canGoForward()) {
                      controller.goForward();
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showLoadPreventionSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(StringConsts.loadPreventionErrorMessage),
      backgroundColor: ColorConsts.errorRed,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class _WebPageController extends StatelessWidget {
  const _WebPageController({
    required this.onBackPressed,
    required this.onForwardPressed,
  });

  final Function onBackPressed;
  final Function onForwardPressed;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = ColorConsts.watcherGray.withAlpha(50);
    final iconButtonColor = ColorConsts.watcherGray.withAlpha(200);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: backgroundColor,
          child: IconButton(
            onPressed: () => onBackPressed(),
            icon: Icon(Icons.arrow_back),
            color: iconButtonColor,
          ),
        ),
        Container(
          color: backgroundColor,
          child: IconButton(
            onPressed: () => onForwardPressed(),
            icon: Icon(Icons.arrow_forward),
            color: iconButtonColor,
          ),
        ),
      ],
    );
  }
}
