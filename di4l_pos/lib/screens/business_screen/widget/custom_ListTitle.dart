// ignore_for_file: camel_case_types, file_names

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class customListTitle extends StatelessWidget {
  const customListTitle({Key? key, this.img, this.title, this.onTap})
      : super(key: key);
  final IconData? img;
  final String? title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => onTap!(),
        minLeadingWidth: 5,
        leading: Icon(img!, color: GlobalColors.primaryColor),
        title: Text(
          title!,
          style: GlobalStyles.robotoRegular(context),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
