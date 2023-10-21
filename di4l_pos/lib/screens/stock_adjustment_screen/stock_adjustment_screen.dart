import 'package:di4l_pos/screens/stock_adjustment_screen/mobile/stock_adjustment_screen_mobile.dart';
import 'package:di4l_pos/screens/stock_adjustment_screen/table/stock_adjustment_screen_table.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StockAdjustmentScreen extends StatelessWidget {
  const StockAdjustmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => StockAdjustmentScreenMobile.provider(),
      tablet: (context) => StockAdjustmentScreenMobile.provider(),
      desktop: (context) => StockAdjustmentScreenMobile.provider(),
    );
  }
}
