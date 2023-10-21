import 'package:flutter/material.dart';

class CustomKeyBoard extends StatelessWidget {
  const CustomKeyBoard({
    Key? key,
    required this.text,
    this.onTextInput,
    this.flex = 1,
    this.backgroundColor = const Color(0xffE8E9EB),
    this.textColor = Colors.black,
    this.isTextButton = false,
    this.isBackspace = false,
    this.isOkButton = false,
  }) : super(key: key);

  final String text;
  final ValueSetter<String>? onTextInput;
  final int flex;
  final Color backgroundColor;
  final Color textColor;
  final bool isTextButton;
  final bool isBackspace;
  final bool isOkButton;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          onPressed: () {
            if (isBackspace) {
              onTextInput!.call(text);
            } else if (isOkButton) {
              Navigator.of(context).pop(true);
            }
             else {
              onTextInput!.call(text);
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
          ),
          child: isTextButton
              ? Text(
                  text,
                  style: TextStyle(color: textColor),
                )
              : isBackspace
                  ? Icon(
                      Icons.backspace_outlined,
                      color: textColor,
                    )
                  : Text(
                      text,
                      style: TextStyle(color: textColor),
                    ),
        ),
      ),
    );
  }
}
