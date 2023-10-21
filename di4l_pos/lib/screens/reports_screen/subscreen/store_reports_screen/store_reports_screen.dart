import 'package:di4l_pos/widgets/custom_button/switch_button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreReportsScreen extends StatefulWidget {
  const StoreReportsScreen({key});

  @override
  State<StoreReportsScreen> createState() => _StoreReportsScreenState();
}

class _StoreReportsScreenState extends State<StoreReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Get.width,
      child: SwitchCustom(
        boderSide: false,
        text1: 'a',
        text2: 'b',
        value: true,
      ),
    );
  }
}
