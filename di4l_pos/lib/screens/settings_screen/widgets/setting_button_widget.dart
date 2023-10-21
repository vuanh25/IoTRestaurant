import 'package:flutter/material.dart';

class SettingButtonWidget extends StatelessWidget {
  /// MARK: - Initials;
  final String? title;
  final Widget? leadingWidget;
  final VoidCallback? onPressed;
  final Widget? trailingWidget;

  const SettingButtonWidget(
      {Key? key,
      required this.title,
      this.onPressed,
      this.leadingWidget,
      this.trailingWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: ListTile(
        onTap: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        leading: leadingWidget,
        title: Text(title ?? ''),
        trailing: trailingWidget,
      ),
    );
  }
}
