import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class CustomCardStock extends StatelessWidget {
  final Function()? onTap;
  final String title, subtitle;
  final Color backgroundColor, foregroundColor;
  final IconData icon;

  const CustomCardStock({
    Key? key,
    this.onTap,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    // required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: GlobalColors.bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: backgroundColor,
                foregroundColor: foregroundColor,
                child: Icon(
                  icon,
                  size: Dimensions.ICON_SIZE_SMALL,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subtitle,
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
