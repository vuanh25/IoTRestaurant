import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// MARK: - Initials;
  final String? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final bool? centerTitle;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomAppBar({
    Key? key,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
    this.bottom,
    this.automaticallyImplyLeading = true,
    this.backgroundColor = GlobalColors.primaryColor,
    this.textColor = GlobalColors.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: Text(
        title ?? '',
        style: GlobalStyles.titilliumRegular(context).copyWith(
          fontSize: 16,
          color: textColor,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: backgroundColor,
      elevation: 0.0,
      actions: actions ?? [],
      centerTitle: centerTitle,
      bottom: bottom,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
