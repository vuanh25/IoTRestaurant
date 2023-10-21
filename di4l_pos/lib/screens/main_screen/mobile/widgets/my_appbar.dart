import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final bool isShowBackButton;
  final bool titleCenter;
  final Color? titleColor;
  final Color backgroundColor;
  final Color leadingButtonColor;

  const MyAppBar({
    Key? key,
    this.title,
    this.actions,
    this.isShowBackButton = true,
    this.titleCenter = true,
    this.backgroundColor = GlobalColors.primaryColor,
    this.titleColor,
    this.leadingButtonColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: isShowBackButton,
      iconTheme:const IconThemeData(color: Colors.black, size: 23),
      title: title,
      backgroundColor: backgroundColor,
      elevation: 0.0,
      titleSpacing: 0,
      centerTitle: titleCenter,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
