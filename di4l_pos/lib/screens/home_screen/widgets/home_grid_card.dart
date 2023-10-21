import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/home/response/home_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeGridCard extends StatelessWidget {
  /// MARK: - Initials;
  final HomeMenu? homeMenu;
  final Function(HomeMenu?)? onPressed;

  const HomeGridCard({Key? key, this.homeMenu, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed!(homeMenu),
      child: Container(
        height: 86,
        width: 80,
        child: Column(
          children: [
            Image.asset(
              homeMenu?.icon ?? '',
              width: 45,
              height: 45,
            ),
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
                child: Text(
                  (homeMenu?.title ?? '').tr,
                  style: GlobalStyles.robotoRegular(context),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
