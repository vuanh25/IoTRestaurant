import 'package:di4l_pos/common/dimensions.dart';
import 'package:flutter/material.dart';

class CustomCardDebt extends StatelessWidget {
  final Function()? onTap;
  final Widget widget;
  final String title;

  const CustomCardDebt({
    Key? key,
    this.onTap,
    required this.title,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget,
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
