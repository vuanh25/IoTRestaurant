import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/text_avatar.dart';
import 'package:flutter/material.dart';

class CustomAppBarWithIcon extends StatelessWidget implements PreferredSizeWidget {
  /// MARK: - Initials;
  final String? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final bool automaticallyImplyLeading;

  const CustomAppBarWithIcon(
      {Key? key,
      this.leading,
      this.title,
      this.actions,
      this.bottom,
      this.automaticallyImplyLeading = false})
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
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green.withOpacity(0.1),
              child: Text(
                TextAvatar.getInitials(title ?? ''),
                style: const TextStyle(
                    color: GlobalColors.primaryColor,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            width: 5,
          ),
          Text(title ?? '',
              style: GlobalStyles.titilliumRegular(context)
                  .copyWith(fontSize: 16)),
        ],
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0.0,
      actions: actions ?? [],
      bottom: bottom,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(95);
}
