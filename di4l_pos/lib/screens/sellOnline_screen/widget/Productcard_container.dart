// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages, file_names

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: must_be_immutable, camel_case_types
class Productcard_Container extends StatelessWidget {
  Productcard_Container({
    Key? key,
    this.image,
    this.title, this.onTap,
  }) : super(key: key);
  final String? image;
  final String? title;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){onTap!();},
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(borderRadius:const BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: GlobalColors.kGreyTextColor , width: 1)),
        padding: const EdgeInsets.only(bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(image!,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.12,),
          ),
          const Spacer(),
          Text(title!),
          const Spacer(),
          InkWell(
            onTap: () {
              
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)), 
                border: Border.all(color: GlobalColors.flButtonColor, width: 1)),
              child: ClipRRect( borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: SvgPicture.asset(GlobalImages.share2, 
                height: 30,
                width: 30,
                fit: BoxFit.fill,),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
