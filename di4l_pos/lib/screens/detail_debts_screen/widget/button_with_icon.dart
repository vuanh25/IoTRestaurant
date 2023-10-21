import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class AppButtonWithIcon extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onPressed;
  final Color? color;
  const AppButtonWithIcon({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      style: ElevatedButton.styleFrom(
          backgroundColor: color ?? GlobalColors.primaryColor,
          fixedSize: const Size(150, 45)),
      label: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
