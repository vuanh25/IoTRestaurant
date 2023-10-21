import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  /// MARK: - Initials;
  final String? title;
  final String? url;

  static WebViewScreen provider({String? title, String? url}) {
    return WebViewScreen(
      title: title,
      url: url,
    );
  }

  const WebViewScreen({
    Key? key,
    this.title,
    this.url,
  }) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.title ?? '',
      ),
      body: WebView(
        initialUrl: widget.url ?? '',
      ),
    );
  }
}
