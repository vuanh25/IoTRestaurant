import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class CustomCardFund extends StatelessWidget {
  final Function()? onTap;
  final String title;

  const CustomCardFund({
    Key? key,
    this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: GlobalColors.kGreyTextColor)),
          child: Text(
            title,
            style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
          ),
        ),
      ),
    );
  }
}
