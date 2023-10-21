import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoolgeButton extends StatelessWidget {
  /// MARK: - Initials;
  final VoidCallback? onPressed;

  const GoolgeButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: Get.width,
      height: 44,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: GlobalColors.kDarkWhite,
          shape: const RoundedRectangleBorder(),
        ),
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35,
              width: 35,
              margin: const EdgeInsets.all(8.0),
              child: Image.asset(
                GlobalImages.logoGoogle,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              'sign_in_with_google'.tr,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
