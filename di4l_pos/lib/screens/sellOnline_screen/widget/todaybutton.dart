// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SellOnlineTodayButton extends StatelessWidget {
  SellOnlineTodayButton({
    this.key,
    this.img,
    this.title,
    this.info,
    this.onTap,
    this.color,
  }) : super(key: key);
  // ignore: annotate_overrides, overridden_fields
  Key? key;
  final String? img;
  final String? title;
  final String? info;
  final VoidCallback? onTap;
  final String? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
          padding: const EdgeInsets.only(left: 20),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: HexColor(color!),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: MediaQuery.of(context).size.width * 0.44,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    img!,
                    height: 15,
                    width: 15,
                  ),
                  Text(
                    // ignore: prefer_interpolation_to_compose_strings
                    " " + title!,
                    style: GlobalStyles.titleRegular(context),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      info!,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
