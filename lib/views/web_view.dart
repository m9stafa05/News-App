import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({
    super.key,
    required this.url,
    required this.title,
  });
  final String url;
  final String title;
  @override
  State<WebViewApp> createState() =>
      _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller =
        WebViewController()
        ..setJavaScriptMode(
            JavaScriptMode.unrestricted,
          ) // Enable JavaScript
          ..setBackgroundColor(Colors.transparent)
          ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: WebViewWidget(controller: controller),
    );
  }
}
