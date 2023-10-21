import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/sell_report/reponse/sell_report_response.dart';

import 'package:di4l_pos/screens/reports_screen/subscreen/sell_report_screen/by/by_orders.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/sell_report_screen/by/by_products.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/sell_report_screen/cubit/sell_report_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:radio_grouped_buttons/radio_grouped_buttons.dart';

class SellReportScreen extends StatefulWidget {
  const SellReportScreen({Key? key}) : super(key: key);
  static BlocProvider<SellReportCubit> provider() {
    return BlocProvider(
      create: (context) => SellReportCubit(),
      child: const SellReportScreen(),
    );
  }

  @override
  State<SellReportScreen> createState() => _SellReportScreen();
}

//
final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

class _SellReportScreen extends State<SellReportScreen> with AfterLayoutMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'products'.tr),
    Tab(text: 'orders'.tr),
  ];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  Widget build(Object context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          backgroundColor: GlobalColors.bgColor,
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'revenue_by'.tr,
                      style: const TextStyle(
                          fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ButtonsTabBar(
                        backgroundColor: GlobalColors.primaryColor,
                        // labelStyle:
                        //     const TextStyle(color: GlobalColors.primaryColor),
                        // buttonMargin: const EdgeInsets.all(2),
                        // contentPadding:
                        //     const EdgeInsets.symmetric(horizontal: 20),
                        tabs: myTabs),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ByProducts.provider(),
                    ByOrders.provider(),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
