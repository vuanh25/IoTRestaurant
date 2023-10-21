import 'package:di4l_pos/screens/price_screen/desktop/price_desktop_screen.dart';
import 'package:di4l_pos/screens/price_screen/mobile/price_mobile_screen.dart';
import 'package:di4l_pos/screens/price_screen/table/price_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PriceScreen extends StatelessWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenTypeLayout.builder(
      mobile: (context) => PriceMobileScreen.provider(),
      tablet: (context) => PriceMobileScreen.provider(),
      desktop: (context) => PriceMobileScreen.provider(),
    );
  }
}
