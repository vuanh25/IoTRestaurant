import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/home/item_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustomContainerEdit extends StatelessWidget {
  final Item? item;
  final Color? backgroundIcon;
  final Function()? onPress;
  const CustomContainerEdit({
    Key? key,
    this.item,
    this.backgroundIcon = Colors.blue,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: key,
      title: buildTitiel(context),
      trailing: Icon(
        FontAwesomeIcons.upDownLeftRight,
        size: 20,
        color: GlobalColors.kBorderColorTextField,
      ),
    );
  }

  Container buildTitiel(BuildContext context) {
    return Container(
      width: Get.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: GlobalColors.kDarkWhite,
            child: SvgPicture.asset(
              item!.iconlink!,
              height: 21,
              width: 21,
            ),
          ),
          SizedBox(width: Get.width * 0.02),
          Container(
            child: Text(
              item!.title ?? '',
              style: GlobalStyles.robotoRegular(context).copyWith(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
