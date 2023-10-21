import 'package:di4l_pos/screens/stock_transfers_screen/mobile/stock_transfers_screen_mobile.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/table/stock_transfers_screen_table.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StockTransfersScreen extends StatelessWidget {
  const StockTransfersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => StockTranfersScreenMobile.provider(),
      tablet: (context) => StockTranfersScreenMobile.provider(),
      desktop: (context) => StockTranfersScreenMobile.provider(),
    );
  }
}
