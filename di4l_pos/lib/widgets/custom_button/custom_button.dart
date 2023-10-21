import 'package:di4l_pos/widgets/custom_button/button_text.dart';
import 'package:di4l_pos/widgets/custom_button/button_text_custom.dart';
import 'package:di4l_pos/widgets/custom_button/button_with_icon.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final ButtonType? type;
  final String? label;
  final VoidCallback? onPressed;
  final Color? color, borderColor;
  final Icon? icon;
  final TextStyle? style;
  const CustomButton({
    Key? key,
    this.type,
    this.label,
    this.onPressed,
    this.color,
    this.borderColor,
    this.icon,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.BUTTON_TEXT:
        return AppButtonText(
          label: label,
          style: style,
          onPressed: onPressed,
          color: color,
          borderColor: borderColor,
          
        );
      case ButtonType.BUTTON_WITH_ICON:
        return AppButtonWithIcon(
          title: label!,
          icon: icon!,
          onPressed: onPressed!,
          color: color,
        );
      case ButtonType.BUTTON_TEXT_CUSTOM:
        return AppButtonTextCustom(title: label!, onPressed: onPressed!);
      default:
        return AppButtonText(
          label: label,
          onPressed: onPressed,
          color: color,
          borderColor: borderColor,
        );
    }
  }
}

enum ButtonType { BUTTON_TEXT, BUTTON_WITH_ICON, BUTTON_TEXT_CUSTOM }
