import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class WebAppWidget extends StatefulWidget {
  String htmlData;
  String title;
  WebAppWidget({Key? key, required this.htmlData, required this.title})
      : super(key: key);

  @override
  State<WebAppWidget> createState() => _WebAppWidgetState();
}

class _WebAppWidgetState extends State<WebAppWidget> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
      Factory(() => EagerGestureRecognizer()),
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(widget.title),
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: Stack(children: [
        SizedBox(
            child: WebViewPlus(
          gestureRecognizers: gestureRecognizers,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            controller.loadString(widget.htmlData);
          },
          onProgress: (progress) {
            print(progress);

            if (progress <= 80) {
            } else {}
            if (progress == 100) {
              UIHelpers.dismissLoading();

              setState(() {
                isLoading = false;
              });
            } else {
              UIHelpers.showLoading();

              setState(() {
                isLoading = true;
              });
            }
          },
          onPageFinished: (url) {},
        )),
        isLoading
            ? Container(
                color: Colors.white,
                height: Get.height,
                width: Get.width,
              )
            : const SizedBox()
      ]),
    );
  }
}
