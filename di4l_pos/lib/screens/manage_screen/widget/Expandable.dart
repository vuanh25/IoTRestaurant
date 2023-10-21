// ignore_for_file: prefer_interpolation_to_compose_strings, duplicate_ignore, file_names

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

class Expandedable extends StatelessWidget{
  const Expandedable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: GlobalColors.flButtonColor,
      buttonSize: const Size(50, 50),
      activeChild: const Icon(Icons.close),
      spaceBetweenChildren: 15,
      spacing: 15,
      overlayColor: const Color.fromARGB(255, 44, 52, 60),
      overlayOpacity: 0.9,
      children: [
        SpeedDialChild(
          labelWidget: Text("create_order".tr + "     ", style: GlobalStyles.titleHeader1(context),),
          backgroundColor: Colors.white,
          child: const Icon(Icons.inventory, color: Colors.blue),
          onTap: () {
            navigator!.pushNamed(RouteGenerator.selectPorductForOrder);
          },
        ),
        SpeedDialChild(
          // ignore: prefer_interpolation_to_compose_strings
          labelWidget: Text("addExpense".tr + "     ", style: GlobalStyles.titleHeader1(context),),
          backgroundColor: Colors.white,
          child: const Icon(Icons.edit_note, color: Colors.blue),
          onTap: () {
            navigator!.pushNamed(RouteGenerator.addExpense);
          },
        ),
        SpeedDialChild(
          labelWidget: Text("add_product".tr + "     ", style: GlobalStyles.titleHeader1(context),),
          backgroundColor: Colors.white,
          child: const Icon(Icons.text_snippet, color: Colors.blue),
          onTap: () {
            navigator!.pushNamed(RouteGenerator.addProductScreen);
          },
        ),
      ],
      child: const Icon(Icons.add),
    );
  }
}