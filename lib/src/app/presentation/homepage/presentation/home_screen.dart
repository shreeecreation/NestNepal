import 'package:clientside/src/app/presentation/homepage/domain/useful_links.dart';
import 'package:clientside/src/extensions/dialogs/dialog_extension.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => DialogExtension.onBackButtonPressed(context),
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(toolbarHeight: 15, elevation: 0),
          body: Column(children: [Expanded(child: WebViewWidget(controller: loginController))])),
    );
  }
}
