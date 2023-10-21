import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWithAppBar extends StatelessWidget {
  final String title;
  final String url;

  WebViewWithAppBar({required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,
            style: GlobalStyles.titilliumRegular(context).copyWith(
              fontSize: 16,
            )),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
