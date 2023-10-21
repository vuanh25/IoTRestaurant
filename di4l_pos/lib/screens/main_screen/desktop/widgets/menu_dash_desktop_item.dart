import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/home/response/home_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDashDesktopItem extends StatelessWidget {
  /// MARK: - Initials;
  final HomeMenu? homeMenu;
  final bool? isSelected;
  final Function(HomeMenu?)? onPressed;

  const MenuDashDesktopItem({
    Key? key,
    this.homeMenu,
    this.isSelected,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (onPressed != null) {
            onPressed!(homeMenu);
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: (homeMenu?.isSelected ?? false)
                ? GlobalColors.bgWebMenuColor
                : null,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22),
              bottomLeft: Radius.circular(22),
            ),
          ),
          margin: const EdgeInsets.only(left: 20),
          constraints: BoxConstraints(
            minHeight: 44,
          ),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            homeMenu?.title?.tr ?? '',
            style: GlobalStyles.titilliumRegular(context).copyWith(
              color: (homeMenu?.isSelected ?? false)
                  ? Colors.white
                  : GlobalColors.hintMenuTextColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
