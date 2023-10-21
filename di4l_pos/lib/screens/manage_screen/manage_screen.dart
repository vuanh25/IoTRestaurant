import 'dart:async';

import 'package:after_layout/after_layout.dart' as after_layout;
import 'package:di4l_pos/screens/order_screen/cubit/order_cubit.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/sell_report_screen/cubit/sell_report_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/screens/manage_screen/cubit/manage_cubit.dart';
import 'package:di4l_pos/screens/manage_screen/widget/Contact_container.dart';
import 'package:di4l_pos/screens/manage_screen/widget/Expandable.dart';
import 'package:di4l_pos/screens/manage_screen/widget/Quickmenu_button1.dart';
import 'package:di4l_pos/screens/manage_screen/widget/Quickmenu_button2.dart';
import 'package:di4l_pos/screens/manage_screen/widget/custom_button_todayList.dart';
import 'package:di4l_pos/screens/manage_screen/widget/oder_status_container.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/profit_and_loss_screen/cubit/profit_and_loss_cubit.dart';
import 'package:intl/intl.dart';

import '../../route_generator.dart';

class ManageScreen extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfitAndLossCubit>(
            create: (BuildContext context) => ProfitAndLossCubit()),
        BlocProvider<ManageCubit>(
            create: (BuildContext context) => ManageCubit()),
        BlocProvider<SalesOrderCubit>(
            create: (BuildContext context) => SalesOrderCubit()),
      ],
      child: const ManageScreen(),
    );
  }

  const ManageScreen({Key? key}) : super(key: key);
  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen>
    with after_layout.AfterLayoutMixin {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ManageCubit>()
      ..getListinfoToday()
      ..getOrderButton()
      ..getlistQuickMenu1()
      ..getlistQuickMenu2();
    var now = DateTime.now();
    var today = DateFormat('yyyy-MM-dd').format(now);
    context
        .read<ProfitAndLossCubit>()
        .getProfitAndLoss(startDate: today, endDate: today);
    context.read<SalesOrderCubit>().fillterSell(
        dateBegin: today,
        dateEnd: today,
        customerId: "",
        locationId: "",
        onlySubscriptions: 0,
        paymentStatus: "",
        shippingStatus: "");
    context.read<SalesOrderCubit>().fillterSellbyOrderedStatus();
    context.read<SalesOrderCubit>().fillterSellbyShippedStatus();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        var now = DateTime.now();
        var today = DateFormat('yyyy-MM-dd').format(now);
        context
            .read<ProfitAndLossCubit>()
            .getProfitAndLoss(startDate: today, endDate: today);
        context.read<SalesOrderCubit>().fillterSell(
            dateBegin: today,
            dateEnd: today,
            customerId: "",
            locationId: "",
            onlySubscriptions: 0,
            paymentStatus: "",
            shippingStatus: "");
      },
      child: Scaffold(
          key: globalKey,
          floatingActionButton: const Expandedable(),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Center(
                      child: Column(
            children: [
              // buildAquaitanedContainer(),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(children: [
                  Text(
                    "today".tr,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        navigator!.pushNamed(
                          RouteGenerator.reportScreen,
                          arguments: 1,
                        );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            GlobalImages.chart,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fill,
                          ),
                          Text("${"review_report".tr} >",
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: GlobalColors.flButtonColor)),
                        ],
                      )),
                ]),
              ),
              buildListinfoToday(),
              Container(
                decoration: const BoxDecoration(color: GlobalColors.bgButton),
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: buildQuickMenu1(),
              ),
              Container(
                decoration: const BoxDecoration(color: GlobalColors.bgButton),
                width: MediaQuery.of(context).size.width * 1,
                height: 110,
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                child: buildQuickMenu2(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 35,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      "orders".tr,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          navigator!.pushNamed(RouteGenerator.orderScreen);
                        },
                        child: Text(
                          "${"all".tr} >",
                          style: const TextStyle(
                              color: GlobalColors.flButtonColor),
                        ))
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: buildOrderStatus(),
              ),
              const ContactContainer()
            ],
          ))))),
    );
  }

  BlocBuilder<ManageCubit, ManageState> buildOrderStatus() {
    return BlocBuilder<ManageCubit, ManageState>(
      builder: (context, state) {
        final menu = state.data?.listOrderStatus ?? [];
        if (menu.isEmpty) {
          return const SizedBox.shrink();
        }
        return BlocBuilder<SalesOrderCubit, SalesOrderState>(
          builder: (context, state) {
            List<String?> list = [
              GlobalFormatter.formatNumber(
                  source: state.data?.orderedOrder.toString() ?? "0"),
              GlobalFormatter.formatNumber(
                  source: state.data?.shippedOrder.toString() ?? "0"),
            ];
            return ListView.builder(
              itemCount: menu.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return OrderStatusContainer(
                  onTap: () {
                    globalKey.currentContext!
                        .read<ManageCubit>()
                        .handlePressedMenu(manageMenu: menu.elementAt(index));
                  },
                  icon: menu.elementAt(index).icon1,
                  title: menu.elementAt(index).title,
                  info: list.elementAt(index),
                );
              },
            );
          },
        );
      },
    );
  }

  BlocBuilder<ManageCubit, ManageState> buildQuickMenu1() {
    return BlocBuilder<ManageCubit, ManageState>(builder: (context, state) {
      final menu1 = state.data?.listQuickMenu1 ?? [];
      if (menu1.isEmpty) {
        return const SizedBox.shrink();
      }
      return Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: menu1.length,
          itemBuilder: (context, index) {
            return QuickMenubutton1(
                onTap: () {
                  globalKey.currentContext!
                      .read<ManageCubit>()
                      .handlePressedMenu(manageMenu: menu1.elementAt(index));
                },
                color: index == 1
                    ? GlobalColors.bgButton1
                    : GlobalColors.bgButton2,
                icon1: menu1.elementAt(index).icon1,
                icon2: menu1.elementAt(index).icon2,
                title: menu1.elementAt(index).title);
          },
        ),
      );
    });
  }

  BlocBuilder<ManageCubit, ManageState> buildQuickMenu2() {
    return BlocBuilder<ManageCubit, ManageState>(builder: (context, state) {
      final menu2 = state.data?.listQuickMenu2 ?? [];
      if (menu2.isEmpty) {
        return const SizedBox.shrink();
      }
      return Container(
          child: ListView.builder(
        itemCount: menu2.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return QuickMenubutton2(
              onTap: () {
                globalKey.currentContext!
                    .read<ManageCubit>()
                    .handlePressedMenu(manageMenu: menu2.elementAt(index));
              },
              icon: menu2.elementAt(index).icon1,
              title: menu2.elementAt(index).title);
        },
      ));
    });
  }

  BlocBuilder<ManageCubit, ManageState> buildListinfoToday() {
    return BlocBuilder<ManageCubit, ManageState>(
      builder: (context, state) {
        final menu = state.data?.listInfoToday ?? [];
        if (menu.isEmpty) {
          return const SizedBox.shrink();
        }
        return BlocBuilder<SalesOrderCubit, SalesOrderState>(
            builder: (context, state) {
          final countOrder = state.data?.response?.meta?.total ?? 0;
          return BlocBuilder<ProfitAndLossCubit, ProfitAndLossState>(
            builder: (context, state) {
              final response = state.data?.profitAndLossResponse;
              List<String?> list = [
                GlobalFormatter.formatNumber(
                    source: response?.data?.grossProfit.toString() ?? '0'),
                GlobalFormatter.formatNumber(source: countOrder.toString()),
                GlobalFormatter.formatNumber(
                    source: response?.data?.netProfit.toString() ?? '0'),
              ];
              return Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.width * 0.25,
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: menu.length,
                      itemBuilder: (context, index) {
                        return TodayCustombutton(
                            onTap: () {
                              globalKey.currentContext!
                                  .read<ManageCubit>()
                                  .handlePressedMenu(
                                      manageMenu: menu.elementAt(index));
                              print(DateTime.now());
                            },
                            leadicon: menu.elementAt(index).icon1,
                            lagicon: menu.elementAt(index).icon2,
                            title: menu.elementAt(index).title,
                            number: list[index]);
                      }));
            },
          );
        });
      },
    );
  }
}
