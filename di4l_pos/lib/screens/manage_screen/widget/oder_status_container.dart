
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class OrderStatusContainer extends StatelessWidget{
  OrderStatusContainer({key, required this.icon, required this.title, required this.info,this.onTap});
  final String? icon;
  final String? title;
  final String? info;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(),
      child: Container(
        height: 80, 
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            SvgPicture.asset(icon!, height: 15, width: 15,),
            Text(" " + title!.tr, style: TextStyle(fontSize: 18))
          ],),
          Text(info!, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
        ],),
      ),
    );
  }

}