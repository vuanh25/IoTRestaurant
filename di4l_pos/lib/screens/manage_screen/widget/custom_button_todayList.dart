// ignore_for_file: must_be_immutable

import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TodayCustombutton extends StatelessWidget {
  TodayCustombutton(
      {Key? key,
      required this.leadicon,
      required this.lagicon,
      required this.title,
      required this.number,
      this.onTap})
      : super(key: key);
  final String? leadicon;
  final String? lagicon;
  final String? title;
  final String? number;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5, bottom: 15, top: 5),
        width: MediaQuery.of(context).size.width * 0.5,
        height: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: GlobalColors.bgButton,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SvgPicture.asset(
                leadicon!,
                height: 30,
                width: 30,
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(title!.tr, style: TextStyle(fontSize: 15)),
              Text(number!,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
            ]),
            Spacer(),
            Image.asset(
              lagicon!,
              height: 80,
              width: 40,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
