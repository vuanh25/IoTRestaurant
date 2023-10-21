import 'package:di4l_pos/common/dimensions.dart';
import 'package:flutter/material.dart';
// import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class Button extends StatelessWidget {
  // static const Dark = GlobalColors.kGreyTextColor.withOpacity(0.5);
  static const Default = Colors.white;
  static const Operation = Color.fromARGB(255, 230, 234, 237);

  final String text;
  final bool big;
  final Color? color;
  final void Function(String) cb;

  Button({
    required this.text,
    this.big = false,
    this.color = Default,
    required this.cb,
  });

  Button.big({
    required this.text,
    this.big = true,
    this.color = Default,
    required this.cb,
  });

  Button.operation({
    required this.text,
    this.big = false,
    this.color = Operation,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: text == 'OK' ? Colors.white : Colors.black,
            fontSize: Dimensions.FONT_SIZE_LARGE,
            // fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
