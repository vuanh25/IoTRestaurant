import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:get/get.dart';

class QuickMenubutton1 extends StatelessWidget {
  const QuickMenubutton1(
      {Key? key,
      required this.color,
      required this.icon1,
      required this.icon2,
      required this.title,
      this.onTap});
  final Color? color;
  final String? icon1;
  final String? icon2;
  final String? title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: color!,
          border: Border.all(color: GlobalColors.buttonborder, width: 1),
        ),
        height: 100,
        width: MediaQuery.of(context).size.width * 0.45,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    icon1!,
                    height: 30,
                    width: 30,
                  ),
                  Text(title!.tr)
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const Spacer(),
              Column(
                children: [
                  Image.asset(
                    icon2!,
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )
            ],
          ),
        ),
      ),
    );
  }
}
