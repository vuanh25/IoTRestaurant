import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/cubit/stock_purchases_cubit.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/widgets/stock_purchase_activities.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/widgets/stock_purchase_info.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/widgets/stock_purchase_payment.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/widgets/stock_purchase_product.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../main_screen/mobile/widgets/my_appbar.dart';

class StockPurchaseDetail extends StatefulWidget {
  final int stockPurchaseId;
  const StockPurchaseDetail({Key? key, required this.stockPurchaseId})
      : super(key: key);

  static MultiBlocProvider provider({required int stockPurchaseId}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StockPurchasesCubit>(
          create: (BuildContext context) => StockPurchasesCubit(),
        ),
      ],
      child: StockPurchaseDetail(
        stockPurchaseId: stockPurchaseId,
      ),
    );
  }

  @override
  State<StockPurchaseDetail> createState() => _StockPurchaseDetailState();
}

class _StockPurchaseDetailState extends State<StockPurchaseDetail>
    with AfterLayoutMixin<StockPurchaseDetail> {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    print('Id: ${widget.stockPurchaseId}');
    context
        .read<StockPurchasesCubit>()
        .getStockPurchasesDetail(id: widget.stockPurchaseId);
    context.read<StockPurchasesCubit>().getStockPurchases();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'stock_purchase_detail'.tr,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: GlobalColors.whiteColor,
      ),
      backgroundColor: GlobalColors.kDarkWhite,
      body: BlocBuilder<StockPurchasesCubit, StockPurchasesState>(
        builder: (context, state) {
          final purchaseLine = state.data!.purchaseLine;
          final purchaseLength = purchaseLine.length;
          final StockPurchaseDetail = state.data!.stockPurchaseDetailResponse;
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return purchaseLength != 0
                  ? SafeArea(
                      child: ListView(
                        children: [
                          BlocBuilder<StockPurchasesCubit, StockPurchasesState>(
                            buildWhen: (previous, current) =>
                                previous.data!.status != current.data!.status,
                            builder: (context, state) {
                              final contact = state.data!.contact;
                              final location = state.data!.location;
                              final StockPurchaseDetail =
                                  state.data!.stockPurchaseDetailResponse;
                              switch (state.data!.status) {
                                case StatusType.loaded:
                                  return StockPurchaseDetail != null
                                      ? Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: GlobalColors.whiteColor,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                StockPurchaseInfo(
                                                  contact: contact!,
                                                  location: location!,
                                                  stockPurchaseDetailResponse:
                                                      StockPurchaseDetail,
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
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'product'.tr,
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
                                    itemCount: purchaseLength,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return StockPurchaseProduct(
                                        purchaseLine:
                                            purchaseLine.elementAt(index),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: GlobalColors.whiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'net_total_amount'.tr,
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular1(context),
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
                                          StockPurchaseDetail!.finalTotal!
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
                              left: 10,
                              right: 10,
                              top: 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: GlobalColors.whiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'discount'.tr,
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular1(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 30, top: 10, bottom: 10),
                                    child: Text(
                                      '(-)',
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular2(context),
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
                                          StockPurchaseDetail.discountAmount!
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
                              left: 10,
                              right: 10,
                              top: 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: GlobalColors.whiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'purchase_tax'.tr,
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular1(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 30, top: 10, bottom: 10),
                                    child: Text(
                                      '(+)',
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular2(context),
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
                                          StockPurchaseDetail.taxAmount!
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
                              left: 10,
                              right: 10,
                              top: 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: GlobalColors.whiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'additional_shipping_charges'.tr,
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular1(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 30, top: 10, bottom: 10),
                                    child: Text(
                                      '(+)',
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular2(context),
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
                                          StockPurchaseDetail.shippingCharges!
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
                              left: 10,
                              right: 10,
                              top: 8,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: GlobalColors.whiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'purchase_total'.tr,
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular1(context),
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
                                          StockPurchaseDetail.finalTotal!
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
                              left: 10,
                              right: 10,
                              top: 5,
                            ),
                            child: Text(
                              'payment_info'.tr,
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: GlobalColors.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          BlocBuilder<StockPurchasesCubit, StockPurchasesState>(
                            buildWhen: (previous, current) =>
                                previous.data!.status != current.data!.status,
                            builder: (context, state) {
                              final paymentLines =
                                  state.data!.stockPurchaseDetailResponse;
                              switch (state.data!.status) {
                                case StatusType.loaded:
                                  return paymentLines != null
                                      ? Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: GlobalColors.whiteColor,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                StockPurchasePayment(
                                                  stockPurchaseDetailResponse:
                                                      paymentLines,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : NoDataWidget();
                                case StatusType.error:
                                  return const Error404Widget();
                                default:
                                  return const SizedBox.shrink();
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 8),
                            child: Text(
                              'additional_notes'.tr,
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: GlobalColors.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          BlocBuilder<StockPurchasesCubit, StockPurchasesState>(
                            buildWhen: (previous, current) =>
                                previous.data!.status != current.data!.status,
                            builder: (context, state) {
                              final note =
                                  state.data!.stockPurchaseDetailResponse;
                              switch (state.data!.status) {
                                case StatusType.loaded:
                                  return note != null
                                      ? Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: GlobalColors.whiteColor,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Text(
                                                    note.additionalNotes ?? '',
                                                    softWrap: true,
                                                    overflow:
                                                        TextOverflow.visible,
                                                    style: GlobalStyles
                                                        .titleRegular2(context),
                                                  ),
                                                )
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
                            },
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
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
                          BlocBuilder<StockPurchasesCubit, StockPurchasesState>(
                            buildWhen: (previous, current) =>
                                previous.data!.status != current.data!.status,
                            builder: (context, state) {
                              final activities = state.data!.stockPurchases;
                              int elementAt = 0;
                              for (var i = 0; i < activities.length; i++) {
                                if (activities[i].id ==
                                    widget.stockPurchaseId) {
                                  elementAt = i;
                                }
                              }
                              switch (state.data!.status) {
                                case StatusType.loaded:
                                  return activities.isNotEmpty
                                      ? Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child:
                                                      StockPurchaseActivities(
                                                activities:
                                                    activities[elementAt],
                                              )),
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
                          )
                        ],
                      ),
                    )
                  : const NoDataWidget();
            case StatusType.error:
              return Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
