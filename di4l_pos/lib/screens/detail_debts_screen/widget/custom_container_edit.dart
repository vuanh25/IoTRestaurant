import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustomContainerEdit extends StatelessWidget {
  // final Item? item;
  final String? title;
  final Color? backgroundIcon;
  final Function()? onPress;
  const CustomContainerEdit({
    Key? key,
    this.backgroundIcon = Colors.blue,
    this.onPress,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: key,
      title: buildTitiel(context),
      trailing: Row(
        children: [
          Icon(
            Icons.drive_file_rename_outline_rounded,
            size: 20,
            color: GlobalColors.kBorderColorTextField,
          ),
          Icon(
            FontAwesomeIcons.upDownLeftRight,
            size: 20,
            color: GlobalColors.kBorderColorTextField,
          ),
        ],
      ),
    );
  }

  Container buildTitiel(BuildContext context) {
    return Container(
      width: Get.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.remove_circle),
          SizedBox(width: Get.width * 0.02),
          Container(
            child: Column(
              children: [
                Text(
                  title ?? '',
                  style: GlobalStyles.robotoRegular(context).copyWith(
                    fontSize: 15,
                  ),
                ),
                Text(
                  title ?? '',
                  style: GlobalStyles.robotoRegular(context).copyWith(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
