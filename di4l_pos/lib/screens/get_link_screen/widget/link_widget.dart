// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'dart:async';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/get_link/response/get_link_response.dart';
import 'package:di4l_pos/screens/get_link_screen/widget/webapp_widget.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:di4l_pos/widgets/webview_with_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../cubit/get_link_cubit.dart';

class LinkWidget extends StatelessWidget {
  /// MARK: - Initials;
  final Link? link;
  final int? index;
  final Function(Link?)? onPressed;
  final VoidCallback? onDelete;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  LinkWidget({
    Key? key,
    this.index,
    this.onPressed,
    this.onDelete,
    this.link,
  }) : super(key: key);

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration:
          const WebViewConfiguration(headers: <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjU5YTg0NTdjMjEwNDFiMDNkN2JmYWM1YjZiYzc2OWZjZDYwYWMxMzJkYTYyZTFhNTQxNWYxNDVkYmY2MWI5ZmJkZmVjZDI0NjQ1ZTNmNzhhIn0.eyJhdWQiOiIyMSIsImp0aSI6IjU5YTg0NTdjMjEwNDFiMDNkN2JmYWM1YjZiYzc2OWZjZDYwYWMxMzJkYTYyZTFhNTQxNWYxNDVkYmY2MWI5ZmJkZmVjZDI0NjQ1ZTNmNzhhIiwiaWF0IjoxNjg3OTM4OTcyLCJuYmYiOjE2ODc5Mzg5NzIsImV4cCI6MTcxOTU2MTM3Miwic3ViIjoiMiIsInNjb3BlcyI6W119.UXwy1yruZtmUXiSxzHLPwkvdUghVz8gXGZ1KrPgscu4kNyzIoWXN7W3eERFvw82EBEOTpVcVjj0bGk3nyAqhF0kq3sT_2jFkX4WzaJvEthdiwT-FYhsS1s0R-Qui9GkTijYJvFnvQRJwJVENsGXxxEefqM1mlxzUFDym1PAVIgMNvB43VE0mXt2hBXZWjqRRLgR-nkbSFCpwhFu-r6vR3bGHrR3L48WvrCBzsarVmXtO3wI4gOCqb4Yw72t3YlTKfT6KI-kM76L_7Ov9Wz2DGjmgGlqSitXglNP2BAfloidcCTygaXlrj6-LVtQJF-u50y1yCu8BemlLH-oSQJnJ7l5WJsnVjkpcxTGUF7jpiqzTdPiZ8vjua_e6ZJEbTlWoTXyzchmIbsEW4t7HtPEKjDDUwTm-IzpF1jpELNIppNIT61e3mnJ3GNTxGmqUrIN9Z-kfNIgEqdKKKR9eSh_kequ_mqEsnjkN1qOBCUKEBGWbehO3-nVuhLgMrgLttC3VNfLqhdWxhhbjmcba8Tf9efv4qZhGivM8pz_5lvdTQwWhwgZJ8dDYe1jCx93resHAJddyN2yRsDbwCMhxhAoxNPM-wJsGRkWx-xQSDPapIKcUMRLW2bip80U362sXTEBlL2ADY_9TBQhEIZTfB80IKcUfry6ti_7TgUyfwdxCBYk'
      }),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (link?.type == 'HTTP LINK') {
          _launchInBrowser(Uri.parse('${link?.refer}'));
        } else if (link?.type == 'WebView') {
          // launchUrl(Uri.parse('${link?.refer}'));

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => WebViewWithAppBar(
                    title: link!.name!,
                    url: '${link?.refer}',
                  )));
        } else {
          context
              .read<GetLinkCubit>()
              .intoLink(link: '${link?.refer}')
              .then((value) => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebAppWidget(
                        title: link!.name!,
                        htmlData: value,
                      ))));

          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => WebView(
          //           onWebViewCreated: (WebViewController webViewController) {
          //             final String contentBase64 = base64Encode(
          //                 const Utf8Encoder().convert(kNavigationExamplePage));
          //             webViewController
          //                 .loadUrl('data:text/html;base64,$contentBase64');
          //           },
          //         )));
          // _launchInWebViewOrVC(Uri.parse('${link?.refer}'));
          // WebView(
          //   onWebViewCreated: (WebViewController webViewController) {
          //     webViewController.loadUrl("${link?.refer}", headers: {
          //       "Authorization":
          //           "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjU5YTg0NTdjMjEwNDFiMDNkN2JmYWM1YjZiYzc2OWZjZDYwYWMxMzJkYTYyZTFhNTQxNWYxNDVkYmY2MWI5ZmJkZmVjZDI0NjQ1ZTNmNzhhIn0.eyJhdWQiOiIyMSIsImp0aSI6IjU5YTg0NTdjMjEwNDFiMDNkN2JmYWM1YjZiYzc2OWZjZDYwYWMxMzJkYTYyZTFhNTQxNWYxNDVkYmY2MWI5ZmJkZmVjZDI0NjQ1ZTNmNzhhIiwiaWF0IjoxNjg3OTM4OTcyLCJuYmYiOjE2ODc5Mzg5NzIsImV4cCI6MTcxOTU2MTM3Miwic3ViIjoiMiIsInNjb3BlcyI6W119.UXwy1yruZtmUXiSxzHLPwkvdUghVz8gXGZ1KrPgscu4kNyzIoWXN7W3eERFvw82EBEOTpVcVjj0bGk3nyAqhF0kq3sT_2jFkX4WzaJvEthdiwT-FYhsS1s0R-Qui9GkTijYJvFnvQRJwJVENsGXxxEefqM1mlxzUFDym1PAVIgMNvB43VE0mXt2hBXZWjqRRLgR-nkbSFCpwhFu-r6vR3bGHrR3L48WvrCBzsarVmXtO3wI4gOCqb4Yw72t3YlTKfT6KI-kM76L_7Ov9Wz2DGjmgGlqSitXglNP2BAfloidcCTygaXlrj6-LVtQJF-u50y1yCu8BemlLH-oSQJnJ7l5WJsnVjkpcxTGUF7jpiqzTdPiZ8vjua_e6ZJEbTlWoTXyzchmIbsEW4t7HtPEKjDDUwTm-IzpF1jpELNIppNIT61e3mnJ3GNTxGmqUrIN9Z-kfNIgEqdKKKR9eSh_kequ_mqEsnjkN1qOBCUKEBGWbehO3-nVuhLgMrgLttC3VNfLqhdWxhhbjmcba8Tf9efv4qZhGivM8pz_5lvdTQwWhwgZJ8dDYe1jCx93resHAJddyN2yRsDbwCMhxhAoxNPM-wJsGRkWx-xQSDPapIKcUMRLW2bip80U362sXTEBlL2ADY_9TBQhEIZTfB80IKcUfry6ti_7TgUyfwdxCBYk"
          //     });
          //     _controller?.complete(webViewController);
          //   },
          // );
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            // margin: const EdgeInsets.all(10),
            // height: Get.,
            child: Row(
              children: [
                ///Avatar

                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   child: Text(
                //     TextAvatar.getInitials('${contact?.firstName ?? ''}'),
                //     style: const TextStyle(
                //         color: GlobalColors.primaryColor,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
                const Icon(Icons.insert_link_sharp,
                    color: GlobalColors.primaryColor),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    /// persion name
                    // if (contact!.type == 'supplier') ...[
                    //   CustomRichText(
                    //     title: 'customer_name'.tr,
                    //     value: ' ${contact?.getFullName() ?? ''}',
                    //   ),
                    // ],

                    /// name
                    CustomRichText(
                      // title: contact!.type == 'supplier'
                      //     ? 'suppliers'.tr
                      //     : 'customers'.tr,
                      value: '${link?.name ?? ''}',
                    ),

                    // const SizedBox(
                    //   height: 3,
                    // ),
                    // Text(
                    //   '${link!.type}',
                    //   style: const TextStyle(
                    //     color: Colors.black87,
                    //     fontWeight: FontWeight.normal,
                    //   ),
                    // ),
                    // Text(
                    //   '${link!.position}',
                    //   style: const TextStyle(
                    //     color: Colors.black87,
                    //     fontWeight: FontWeight.normal,
                    //   ),
                    // ),

                    // /// phone number

                    // Text(
                    //   '${link!.refer}',
                    //   style: const TextStyle(
                    //     color: Colors.black87,
                    //     fontWeight: FontWeight.normal,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          // Positioned(
          //     top: 20,
          //     right: 30,
          //     child: Container(
          //         height: 10,
          //         width: 10,
          //         child: const Icon(
          //           Icons.local_atm_rounded,
          //           color: GlobalColors.primaryColor,
          //           size: 20,
          //         ))),
        ],
      ),
    );
  }
}
