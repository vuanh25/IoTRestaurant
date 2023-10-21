import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButtonTextCustom extends StatelessWidget {
  final String title;
  final Icon? icon;
  final VoidCallback onPressed;
  final Color? color;
  const AppButtonTextCustom({
    Key? key,
    required this.title,
    this.icon,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 40, width: Get.width - 50),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? GlobalColors.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
