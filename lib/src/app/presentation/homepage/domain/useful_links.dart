import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

var loginController = WebViewController()
  ..canGoBack()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color.fromARGB(255, 255, 255, 255))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {},
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://myaccount.nestnepal.com/clientarea.php/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://myaccount.nestnepal.com/clientarea.php'));

