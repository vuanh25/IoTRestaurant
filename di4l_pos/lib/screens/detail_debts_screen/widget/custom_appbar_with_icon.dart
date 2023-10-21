// ignore_for_file: avoid_print, unnecessary_string_interpolations

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/text_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarWithIcon extends StatelessWidget implements PreferredSizeWidget {
  /// MARK: - Initials;
  final String? avatar;
  final String? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final String? mobile;
  final Function()? onTap;

  const CustomAppBarWithIcon(
      {Key? key,
      this.leading,
      this.title,
      this.actions,
      this.bottom,
      this.automaticallyImplyLeading = false,
      this.mobile,
      this.onTap,
      this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 20,
      leading: IconButton(
          iconSize: Dimensions.ICON_SIZE_SMALL,
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          }),
      title: InkWell(
        onTap: onTap,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  TextAvatar.getInitials('${avatar ?? ''}'),
                  style: const TextStyle(
                      color: GlobalColors.primaryColor,
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title ?? '',
                    style: GlobalStyles.titilliumRegular(context)
                        .copyWith(fontSize: 14)),
                const SizedBox(
                  height: 5,
                ),
                Text(mobile ?? '',
                    style: const TextStyle(
                        fontSize: Dimensions.FONT_SIZE_SMALL,
                        fontWeight: FontWeight.normal)),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: GlobalColors.primaryColor,
      foregroundColor: Colors.white,
      elevation: 0.0,
      actions: actions ?? [],
      bottom: bottom,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
