import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  const BigText({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      style: GlobalStyles.titleHeader(context)
          .copyWith(color: color ?? GlobalColors.successColor),
    );
  }
}
