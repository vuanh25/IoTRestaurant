import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportInformationWidget extends StatelessWidget {
  const SupportInformationWidget({
    Key? key,
    required this.urlConnectionUse,
    required this.urlLearnAbout,
    required this.namePartner,
  }) : super(key: key);

  final String urlConnectionUse;
  final String urlLearnAbout;
  final String namePartner;

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'support_information'.tr,
          style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
        ),
        TextButton(
          onPressed: () => launchUrl(Uri.parse(urlConnectionUse)),
          child: Text(
            'connection_use'.tr,
            style: GlobalStyles.boldStyle
                .copyWith(color: GlobalColors.primaryColor),
          ),
        ),
        TextButton(
          onPressed: () => launchUrl(Uri.parse(urlLearnAbout)),
          child: Text(
            'learn_more_about'.tr + namePartner,
            style: GlobalStyles.boldStyle
                .copyWith(color: GlobalColors.primaryColor),
          ),
        )
      ],
    );
  }
}
