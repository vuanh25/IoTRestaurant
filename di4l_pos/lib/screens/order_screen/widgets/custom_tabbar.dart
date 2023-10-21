import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width / 2.5;
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.1,
          ),
        ),
      ),
      width: yourWidth,
      height: 50,
      alignment: Alignment.center,
      child: Text(
        title,
        style: GlobalStyles.robotoRegular(context).copyWith(
          fontSize: 17,
        ),
      ),
    );
  }
}
