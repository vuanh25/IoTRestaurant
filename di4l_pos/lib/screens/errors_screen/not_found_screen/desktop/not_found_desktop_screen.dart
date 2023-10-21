import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFoundDesktopScreen extends StatefulWidget {
  NotFoundDesktopScreen({Key? key}) : super(key: key);

  @override
  State<NotFoundDesktopScreen> createState() => _NotFoundDesktopScreenState();
}

class _NotFoundDesktopScreenState extends State<NotFoundDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(150.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'this_page_was_lost'.tr,
                    style: GlobalStyles.boldStyle.copyWith(
                      fontSize: 30,
                      color: GlobalColors.primaryWebColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'not_found_page_description'.tr,
                    maxLines: null,
                    style: GlobalStyles.robotoRegular(context).copyWith(
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 80),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: GlobalColors.primaryWebColor,
                    ),
                    label: Text(
                      'go_home'.tr.toUpperCase(),
                      style: GlobalStyles.boldStyle.copyWith(
                        fontSize: 17,
                        color: GlobalColors.primaryWebColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              GlobalImages.image404NotFound,
              height: 400,
              width: 400,
            ),
          )
        ],
      ),
    );
  }
}
