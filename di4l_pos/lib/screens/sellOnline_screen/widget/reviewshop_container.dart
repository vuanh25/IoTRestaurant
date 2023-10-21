// ignore_for_file: depend_on_referenced_packages

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ReviewContainer extends StatelessWidget{
  const ReviewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: HexColor("#eff6ff"),),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
      margin: const EdgeInsets.only(top: 5),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(GlobalImages.earth)),
            Column(children: [
              // ignore: prefer_interpolation_to_compose_strings
              Text(" " + "shopReview".tr, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              // ignore: prefer_interpolation_to_compose_strings
              Text(" " + "shareLink".tr)
            ],),
            ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(100)),child: Image.asset(GlobalImages.upRevenve, height: 18, width: 70))
          ],
        ),
        Row(children: [
          InkWell(
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
              height: 40,
              width: MediaQuery.of(context).size.width * 0.59,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text("https://ssssssssssssssssssss"),
                SvgPicture.asset(GlobalImages.copy, height: 30, width: 30)
              ],),
            ),
          ),
          InkWell(
            child: Container(
              decoration: const BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(5))),
              height: 40,
              width: MediaQuery.of(context).size.width * 0.25,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SvgPicture.asset(GlobalImages.share, height: 20, width: 20,),
                Text("share".tr, style: const TextStyle(color: Colors.white,))
              ],),
            ),
          )
        ],)
      ],),
    );
  }
}