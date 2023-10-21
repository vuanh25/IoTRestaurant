import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class LogoWithText extends StatelessWidget {
  /// MARK: - Initials;
  const LogoWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          GlobalImages.logoApp,
          height: 44,
          width: 44,
        ),
        const SizedBox(width: 8.0),
        Text(
          'Di4L Sell',
          style: GlobalStyles.boldStyle
              .copyWith(fontSize: 17, color: Colors.white),
        )
      ],
    );
  }
}
