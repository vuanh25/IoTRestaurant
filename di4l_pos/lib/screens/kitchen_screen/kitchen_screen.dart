import 'package:di4l_pos/screens/kitchen_screen/mobile/kitchen_screen_mobile.dart';
import 'package:di4l_pos/screens/kitchen_screen/table/kitchen_screen_table.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => KitchenScreenMobile.provider(),
      tablet: (context) => KitchenScreenMobile.provider(),
      desktop: (context) => KitchenScreenMobile.provider(),
    );
  }
}

