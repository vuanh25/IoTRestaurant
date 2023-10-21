import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/expense_screen/expense_report_screen.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/profit_and_loss_screen/profit_and_loss_screen.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/sell_report_screen/sell_report_screen.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/stock_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/global_colors.dart';
import '../../widgets/custom_appbar.dart';

class ReportScreen extends StatefulWidget {
  final int? initialIndex;
  const ReportScreen({Key? key, this.initialIndex}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportState();
}

class _ReportState extends State<ReportScreen> {
  TextStyle thu = const TextStyle(
      color: Color.fromARGB(255, 1, 117, 40), fontWeight: FontWeight.w600);
  TextStyle chi = const TextStyle(
      color: Color.fromARGB(255, 241, 65, 0), fontWeight: FontWeight.w600);
  TextStyle grey = const TextStyle(color: Color.fromARGB(255, 129, 125, 125));
  List<Widget> tabScreens = [
    //cửa hàng
    SellReportScreen.provider(), //_currentIndex = 0
    //lãi lỗ
    ProfitAndLossScreen.provide(), //_currentIndex = 1
    // kho hàng
    StockScreen.provider(), //_currentIndex = 2
    // Tap3Screen(),
    // thu chi
    ExpenseReportScreen.provider() //_currentIndex = 3
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          textColor: GlobalColors.getTextTitle(context),
          title: 'reports'.tr,
        ),
      ),
      body: SafeArea(child: Tabbar(context)),
    );
  }

  Widget Tabbar(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: _currentIndex,
      length: 4,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: w,
                height: 40,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: const Color.fromARGB(255, 1, 117, 40),
                  unselectedLabelColor:
                      const Color.fromARGB(255, 104, 104, 104),
                  labelColor: const Color.fromARGB(255, 1, 117, 40),
                  labelStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  tabs: [
                    Tab(
                      text: 'sale_orders'.tr,
                    ),
                    Tab(
                      text: 'review_report'.tr,
                    ),
                    Tab(
                      text: 'stock'.tr,
                    ),
                    Tab(
                      text: 'expense'.tr,
                    ),
                  ],
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ],
          ),
          // tap bar view
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: Dimensions.PADDING_SIZE_SMALL),
              child: TabBarView(
                children: tabScreens,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
