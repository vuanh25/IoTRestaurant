import 'package:flutter/material.dart';

class AppButtonText extends StatelessWidget {
  final String? label;
  final VoidCallback? onPressed;
  final Color? color, borderColor;
  final TextStyle? style;
  const AppButtonText({
    Key? key,
    this.label,
    this.onPressed,
    this.color,
    this.borderColor,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          height: 55,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              width: 2,
              color: borderColor!,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              label!,
              style: style,
            ),
          ),
        ),
      );
}
