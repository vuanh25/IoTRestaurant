import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/cubit/stock_cubit.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/sub_screen/overview_stock.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/sub_screen/stock.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class StockScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<StockCubit> provider() {
    return BlocProvider(
      create: (context) => StockCubit(),
      child: const StockScreen(),
    );
  }

  const StockScreen({Key? key}) : super(key: key);

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<StockCubit>().getReportStocks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: GlobalColors.kGreyTextColor.withOpacity(0.1)),
                  child: ButtonsTabBar(
                    backgroundColor: Colors.white,
                    labelStyle:
                        const TextStyle(color: GlobalColors.primaryColor),
                    buttonMargin: const EdgeInsets.all(2),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(
                        text: 'overview'.tr,
                      ),
                      Tab(
                        text: 'stock'.tr,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [OverViewStock.provider(), Stock.provider()],
              ),
            )
          ],
        ),
      ),
      // appBar: CustomAppBar(
      //   title: 'stock'.tr,
      // ),
      // body: BlocBuilder<StockCubit, StockState>(
      //   builder: (context, state) {
      //     final _stocks = state.data?.reportStocks ?? [];
      //     return ListView.builder(
      //       itemBuilder: (context, index) {
      //         return ReportStockWidget(
      //           reportStockData: _stocks.elementAt(index),
      //         );
      //       },
      //       itemCount: _stocks.length,
      //     );
      //   },
      // ),
    );
  }
}
