// ignore_for_file: depend_on_referenced_packages

import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class QuickMenubutton2 extends StatelessWidget {
  const QuickMenubutton2(
      {Key? key, required this.icon, required this.title, this.onTap})
      : super(key: key);
  final String? icon;
  final String? title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap!();
        },
        child: Container(
            margin: const EdgeInsets.only(left: 5, right: 5, bottom: 15),
            width: MediaQuery.of(context).size.width * 0.215,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              border: Border.all(color: GlobalColors.buttonborder, width: 1),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset(
                icon!,
                height: 30,
                width: 30,
              ),
              Text(title!.tr)
            ])));
  }
}
