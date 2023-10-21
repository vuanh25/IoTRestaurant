import 'package:di4l_pos/screens/stock_purchases_screen/mobile/stock_purchases_screen_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StockPurchasesScreen extends StatelessWidget {
  const StockPurchasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => StockPurchasesScreenMobile.provider(),
      tablet: (context) => StockPurchasesScreenMobile.provider(),
      desktop: (context) => StockPurchasesScreenMobile.provider(),
    );
  }
}
