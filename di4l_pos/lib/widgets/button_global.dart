import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class ButtonGlobal extends StatelessWidget {
  final iconWidget;
  final String buttontext;
  final Color iconColor;
  final Decoration buttonDecoration;
  final VoidCallback onPressed;

  ButtonGlobal({
    required this.iconWidget,
    required this.buttontext,
    required this.iconColor,
    required this.buttonDecoration,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        decoration: buttonDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttontext,
              style: GlobalStyles.boldStyle
                  .copyWith(fontSize: 20, color: Colors.white),
            ),
            Icon(
              iconWidget,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
