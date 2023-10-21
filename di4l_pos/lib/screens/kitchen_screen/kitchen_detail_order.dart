import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/kitchen_screen/cubit/kitchen_cubit.dart';
import 'package:di4l_pos/screens/kitchen_screen/widget/kitchen_detail_info.dart';
import 'package:di4l_pos/screens/kitchen_screen/widget/kitchen_detail_table_activities.dart';
import 'package:di4l_pos/screens/kitchen_screen/widget/kitchen_detail_table_product.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';

class KitchenDetailOrder extends StatefulWidget {
  final int orderId;
  const KitchenDetailOrder({
    Key? key,
    required this.orderId,
  }) : super(key: key);
  static MultiBlocProvider provider({required int orderId}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<KitchenCubit>(
          create: (BuildContext context) => KitchenCubit(),
        ),
      ],
      child: KitchenDetailOrder(
        orderId: orderId,
      ),
    );
  }

  @override
  State<KitchenDetailOrder> createState() => _KitchenDetailOrderState();
}

class _KitchenDetailOrderState extends State<KitchenDetailOrder>
    with AfterLayoutMixin<KitchenDetailOrder> {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // print('Id: ${widget.orderId}');
    context.read<KitchenCubit>().getDetailKitchens(id: widget.orderId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'sell_detail'.tr,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: GlobalColors.whiteColor,
      ),
      backgroundColor: GlobalColors.kDarkWhite,
      body: BlocBuilder<KitchenCubit, KitchenState>(
        buildWhen: ((previous, current) =>
            previous.data!.status != current.data!.status),
        builder: (context, state) {
          final sell = state.data?.sells;
          final selline = state.data?.sells?.sellLines ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return sell != null
                  ? SafeArea(
                      child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Spacer(),
                                        Text(
                                          'date'.tr,
                                          style:
                                              GlobalStyles.titleHeader(context),
                                        ),
                                        const SizedBox(width: 4.0),
                                        Text(
                                          '${sell.transactionDate}',
                                          style:
                                              GlobalStyles.titilliumSemiBold1(
                                                  context),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: GlobalColors.whiteColor,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          KitchenDetailInfo(
                                            sell: sell,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'products'.tr,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    color: GlobalColors.primaryColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: selline.length,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return KitchenDetailTableProduct(
                                            sellLine: selline.elementAt(index),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsets.all(10.0),
                              //   child: Container(
                              //     decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(10.0),
                              //       color: GlobalColors.whiteColor,
                              //     ),
                              //     child: Column(
                              //       crossAxisAlignment: CrossAxisAlignment.start,
                              //       children: [
                              //         KitchenDetailTablePayment(),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'total'.tr,
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            ),
                                            Text(
                                              ':',
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              '₫',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            const SizedBox(
                                              width: 5.0,
                                            ),
                                            Text(
                                              sell.finalTotal!.formatMoney(),
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'discount'.tr,
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular1(
                                                  context),
                                            ),
                                            Text(
                                              ' (-) ',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            Text(
                                              ':',
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              '${sell.discountAmount}',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            Text(
                                              '%',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'packing_charge'.tr,
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular1(
                                                  context),
                                            ),
                                            Text(
                                              ' (+) ',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            Text(
                                              ':',
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          sell.packingCharge!.formatMoney(),
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          style: GlobalStyles.titleRegular2(
                                              context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              BlocBuilder<KitchenCubit, KitchenState>(
                                  buildWhen: ((previous, current) =>
                                      previous.data!.status !=
                                      current.data!.status),
                                  builder: (context, state) {
                                    final posSting = state.data?.posSetTings;
                                    switch (state.data!.status) {
                                      case StatusType.loaded:
                                        return posSting != null
                                            ? Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    top: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color:
                                                        GlobalColors.whiteColor,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'order_tax'.tr,
                                                              softWrap: true,
                                                              overflow:
                                                                  TextOverflow
                                                                      .visible,
                                                              style: GlobalStyles
                                                                  .titleRegular1(
                                                                      context),
                                                            ),
                                                            Text(
                                                              ' (+) ',
                                                              softWrap: true,
                                                              overflow:
                                                                  TextOverflow
                                                                      .visible,
                                                              style: GlobalStyles
                                                                  .titleRegular2(
                                                                      context),
                                                            ),
                                                            Text(
                                                              ':',
                                                              style: GlobalStyles
                                                                  .titleRegular1(
                                                                context,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        child: Text(
                                                          '${posSting.disableOrderTax}',
                                                          softWrap: true,
                                                          overflow: TextOverflow
                                                              .visible,
                                                          style: GlobalStyles
                                                              .titleRegular2(
                                                                  context),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            : const NoDataWidget();
                                      case StatusType.error:
                                        return const Error404Widget();
                                      default:
                                        return const SizedBox.shrink();
                                    }
                                  }),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'shipping'.tr,
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular1(
                                                  context),
                                            ),
                                            Text(
                                              ' (+) ',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            Text(
                                              ':',
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              '₫',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              sell.shippingCharges!
                                                  .formatMoney(),
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'round_off'.tr,
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular1(
                                                  context),
                                            ),
                                            Text(
                                              ':',
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              '₫',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              sell.roundOffAmount!
                                                  .formatMoney(),
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'total_payable'.tr,
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular1(
                                                  context),
                                            ),
                                            Text(
                                              ':',
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              '₫',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              sell.totalBeforeTax!
                                                  .formatMoney(),
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'total_paid'.tr,
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular1(
                                                  context),
                                            ),
                                            Text(
                                              ':',
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              '₫',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '${sell.contact!.totalRp}',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'total_remaining'.tr,
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular1(
                                                  context),
                                            ),
                                            Text(
                                              ':',
                                              style: GlobalStyles.titleRegular1(
                                                context,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Text(
                                              '₫',
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              sell.totalBeforeTax!
                                                  .formatMoney(),
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: GlobalStyles.titleRegular2(
                                                  context),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 8),
                                child: Text(
                                  'sell_note'.tr,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                    color: GlobalColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          '--',
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          style: GlobalStyles.titleRegular2(
                                              context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 8),
                                child: Text(
                                  'staff_note'.tr,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                    color: GlobalColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          '--',
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          style: GlobalStyles.titleRegular2(
                                              context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'activities'.tr,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    color: GlobalColors.primaryColor,
                                  ),
                                ),
                              ),
                              BlocBuilder<KitchenCubit, KitchenState>(
                                  buildWhen: ((previous, current) =>
                                      previous.data!.status !=
                                      current.data!.status),
                                  builder: (context, state) {
                                    final activitie =
                                        state.data?.activities ?? [];
                                    switch (state.data!.status) {
                                      case StatusType.loaded:
                                        return activitie.isNotEmpty
                                            ? Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: ListView.builder(
                                                        itemCount:
                                                            activitie.length,
                                                        shrinkWrap: true,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return KitchenDetailTableActivities(
                                                            activities:
                                                                activitie
                                                                    .elementAt(
                                                                        index),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            : const NoDataWidget();
                                      case StatusType.error:
                                        return const Error404Widget();
                                      default:
                                        return const SizedBox.shrink();
                                    }
                                  }),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          GlobalColors.packingSlip,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(Icons.receipt,
                                              color: Colors.white),
                                          const SizedBox(width: 5),
                                          Text(
                                            'packing_slip'.tr,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          GlobalColors.printInvoice,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(Icons.print,
                                              color: Colors.white),
                                          const SizedBox(width: 5),
                                          Text(
                                            'print_invoice'.tr,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          GlobalColors.close,
                                        ),
                                      ),
                                      child: Text(
                                        'close'.tr,
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : const NoDataWidget();
            case StatusType.error:
              return const Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
