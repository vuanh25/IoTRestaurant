import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/cubit/stock_transfers_cubit.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/widget/stock_transfer_activities.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/widget/stock_transfer_info.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/widget/stock_transfer_product.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class StockTransferDetail extends StatefulWidget {
  final int stockTransferId;
  const StockTransferDetail({
    Key? key,
    required this.stockTransferId,
  }) : super(key: key);

  static MultiBlocProvider provider({required int stockTransferId}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StockTransfersCubit>(
          create: (BuildContext context) => StockTransfersCubit(),
        ),
      ],
      child: StockTransferDetail(
        stockTransferId: stockTransferId,
      ),
    );
  }

  @override
  State<StockTransferDetail> createState() => _StockTransferDetailState();
}

class _StockTransferDetailState extends State<StockTransferDetail>
    with AfterLayoutMixin<StockTransferDetail> {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    print('Id: ${widget.stockTransferId}');
    context
        .read<StockTransfersCubit>()
        .getStockTransferDetail(id: widget.stockTransferId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'stock_transfer_detail'.tr,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: GlobalColors.whiteColor,
      ),
      backgroundColor: GlobalColors.kDarkWhite,
      body: BlocBuilder<StockTransfersCubit, StockTransfersState>(
        buildWhen: ((previous, current) =>
            previous.data!.status != current.data!.status),
        builder: (context, state) {
          final sellTransfer = state.data?.sellTransfers;
          final selline = state.data?.sellTransfers?.sellLines ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return sellTransfer != null
                  ? SafeArea(
                      child: ListView(
                        children: [
                          BlocBuilder<StockTransfersCubit, StockTransfersState>(
                            buildWhen: ((previous, current) =>
                                previous.data!.status != current.data!.status),
                            builder: (context, state) {
                              final locationDetail =
                                  state.data?.locationDetails;
                              switch (state.data!.status) {
                                case StatusType.loaded:
                                  return locationDetail != null
                                      ? Padding(
                                          padding: const EdgeInsets.all(5.0),
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
                                                StockTransferInfo(
                                                  locationDetails:
                                                      locationDetail,
                                                  sellTransfer: sellTransfer,
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
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return StockTransferProduct(
                                        sellLine: selline.elementAt(index),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       left: 10, right: 10, top: 5),
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10.0),
                          //       color: GlobalColors.whiteColor,
                          //     ),
                          //     child: Row(
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceBetween,
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Padding(
                          //           padding: const EdgeInsets.all(10),
                          //           child: Text(
                          //             'net_total_amount'.tr,
                          //             softWrap: true,
                          //             overflow: TextOverflow.visible,
                          //             style:
                          //                 GlobalStyles.titleRegular1(context),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding: const EdgeInsets.all(10),
                          //           child: Row(
                          //             children: [
                          //               Text(
                          //                 '₫',
                          //                 softWrap: true,
                          //                 overflow: TextOverflow.visible,
                          //                 style: GlobalStyles.titleRegular2(
                          //                     context),
                          //               ),
                          //               const SizedBox(
                          //                 width: 5,
                          //               ),
                          //               Text(
                          //                 sellTransfer.shippingCharges!,
                          //                 softWrap: true,
                          //                 overflow: TextOverflow.visible,
                          //                 style: GlobalStyles.titleRegular2(
                          //                     context),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
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
                                        right: 55, top: 10, bottom: 10),
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
                                    child: Text(
                                      sellTransfer.shippingCharges!
                                          .formatMoney(),
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style:
                                          GlobalStyles.titleRegular2(context),
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
                                          sellTransfer.totalBeforeTax!
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
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 8),
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
                          BlocBuilder<StockTransfersCubit, StockTransfersState>(
                            buildWhen: ((previous, current) =>
                                previous.data!.status != current.data!.status),
                            builder: (context, state) {
                              final subject = state.data?.subject;
                              switch (state.data!.status) {
                                case StatusType.loaded:
                                  return subject != null
                                      ? Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
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
                                                    subject.additionalNotes ??
                                                        '',
                                                    softWrap: true,
                                                    overflow:
                                                        TextOverflow.visible,
                                                    style: GlobalStyles
                                                        .titleRegular2(context),
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
                            },
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
                          BlocBuilder<StockTransfersCubit, StockTransfersState>(
                            buildWhen: ((previous, current) =>
                                previous.data!.status != current.data!.status),
                            builder: (context, state) {
                              final activitie = state.data?.activities ?? [];
                              switch (state.data!.status) {
                                case StatusType.loaded:
                                  return activitie.isNotEmpty
                                      ? Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: ListView.builder(
                                                  itemCount: activitie.length,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return StockTransferActivities(
                                                      activities: activitie
                                                          .elementAt(index),
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
                            },
                          ),
                          const SizedBox(
                            height: 30,
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
        },
      ),
    );
  }
}
