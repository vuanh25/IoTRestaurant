// ignore_for_file: depend_on_referenced_packages, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
class ContactContainer extends StatelessWidget{
  const ContactContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: GlobalColors.bgButton),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        margin: const EdgeInsets.only(bottom: 150, top: 10),
        child: Row(children: [
          SvgPicture.asset( GlobalImages.contactImg,
            width: 35,
            height: 35,),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width:  MediaQuery.of(context).size.width * 0.6,
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("you_need_suport".tr, style:  const TextStyle(fontSize: 16, ),),
              Text("contactContainer_title".tr, style:  const TextStyle(fontSize: 11, ))
            ],),
          ),
          const Spacer(),
          IconButton(          
            onPressed: () {
              launch('https://m.me/di4lco');
            }, 
            icon: SizedBox(height: 40, width: 40,
              child: SvgPicture.asset(GlobalImages.messenger, height: 40, width: 40, fit: BoxFit.fill,))
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              launch('http://zalo.me/3096814503924251307?src=qr');
            }, 
            icon: SizedBox(height: 40, width: 40,
              child: SvgPicture.asset(GlobalImages.zalo, height: 40, width: 40,fit: BoxFit.fill,))
          ),
        ],),
      ),
    );
  }
}