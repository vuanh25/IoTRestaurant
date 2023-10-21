import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onPressed;
  const CustomButtonWithIcon(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(height: 44),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon,
        style: ElevatedButton.styleFrom(
          backgroundColor: GlobalColors.primaryColor,
        ),
        label: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
