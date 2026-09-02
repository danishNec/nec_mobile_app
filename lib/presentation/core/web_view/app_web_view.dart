import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../app_bar/app_app_bar.dart';
import '../scaffold/app_scaffold.dart';

class AppWebView extends StatelessWidget {
  final bool leading;
  final String? title;
  final WebViewController controller;
  final bool? resizeToAvoidBottomInset;
  final Widget? topWidget;
  final Widget? bottomWidget;

  const AppWebView({
    super.key,
    this.leading = false,
    this.title,
    required this.controller,
    this.resizeToAvoidBottomInset,
    this.topWidget,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isLoading: leading,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: AppAppBar(title: title),
      body: Column(
        children: [
          ?topWidget,
          Expanded(child: WebViewWidget(controller: controller)),
          ?bottomWidget,
        ],
      ),
    );
  }
}
