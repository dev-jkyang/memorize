import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memorize/config/custom_colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KeywordWebViewWidget extends StatefulWidget {
  const KeywordWebViewWidget({super.key});

  @override
  State<KeywordWebViewWidget> createState() => _KeywordWebViewWidgetState();
}

class _KeywordWebViewWidgetState extends State<KeywordWebViewWidget> {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.daum.net/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://naver.com'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
              backgroundBlendMode: BlendMode.clear),
          child: Column(
            children: [
              Expanded(
                child: WebViewWidget(
                  controller: controller,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          //hive current home
                          controller.loadRequest(
                            Uri.parse('https://www.naver.com'),
                          );
                        },
                        icon: const Icon(Icons.home),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () async {
                          await controller.canGoBack()
                              ? controller.goBack()
                              : null;
                        },
                        icon: const Icon(Icons.keyboard_arrow_left_rounded),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () async {
                          await controller.reload();
                        },
                        icon: const Icon(Icons.refresh_rounded),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () async {
                          await controller.canGoForward()
                              ? controller.goForward()
                              : null;
                        },
                        icon: const Icon(Icons.keyboard_arrow_right_rounded),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
