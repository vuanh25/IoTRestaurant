// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManageGridCard extends StatelessWidget {
  /// MARK: - Initials;
  final String? img;
  final String? title;
  final VoidCallback? onPressed;

  const ManageGridCard({Key? key, this.title, this.img, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed!,
      child: SizedBox(
        height: 86,
        width: 90,
        child: Column(
          children: [
            SvgPicture.asset(
              img!,
              width: 35,
              height: 35,
            ),
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.all(10),
                child: Text(
                  title!,
                  style: GlobalStyles.titilliumRegular(context),
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
