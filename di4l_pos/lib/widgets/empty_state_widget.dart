import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyStateWidget extends StatelessWidget {
  /// MARK: - Initials;
  final String? title;
  final String? message;
  final String? urlImage;

  const EmptyStateWidget({Key? key, this.title, this.message, this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Image
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: GlobalColors.primaryColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(40.0),
              child: Image(
                image: AssetImage(urlImage ?? ''),
                fit: BoxFit.cover,
                color: GlobalColors.primaryColor,
              ),
            ),

            /// Title
            const SizedBox(height: 16),
            Text(
              title ?? '',
              style: GlobalStyles.boldStyle.copyWith(fontSize: 17),
            ),

            const SizedBox(height: 8.0),
            Text(
              message ?? '',
              textAlign: TextAlign.center,
            ),

            /// Button
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: GlobalColors.primaryColor,
              ),
              child: Text(
                'back'.tr,
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
