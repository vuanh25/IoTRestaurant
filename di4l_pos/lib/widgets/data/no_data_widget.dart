import 'package:flutter/material.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:get/get.dart';

class NoDataWidget extends StatelessWidget {
  final bool isEmpty;
  const NoDataWidget({
    Key? key,
    this.isEmpty = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(isEmpty ? GlobalImages.notes : GlobalImages.noData,
              width: 150, height: 150),
          const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          Text(
            isEmpty ? 'empty_data'.tr : 'no_data'.tr,
            textAlign: TextAlign.center,
            style: GlobalStyles.titilliumBold(context)
                .copyWith(fontSize: Dimensions.FONT_SIZE_LARGE),
          ),
        ],
      ),
    );
  }
}
