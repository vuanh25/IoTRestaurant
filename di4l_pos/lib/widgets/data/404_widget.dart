import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';

class Error404Widget extends StatelessWidget {
  const Error404Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(GlobalImages.image404NotFound, width: 150, height: 150),
          Text('Sorry',
              style:
                  GlobalStyles.titilliumBold(context).copyWith(fontSize: 30)),
          const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          Text(
            'unknow_error'.tr,
            textAlign: TextAlign.center,
            style: GlobalStyles.titilliumRegular(context)
                .copyWith(fontSize: Dimensions.FONT_SIZE_LARGE),
          ),
        ],
      ),
    );
  }
}
