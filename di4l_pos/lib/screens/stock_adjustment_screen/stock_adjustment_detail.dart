import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/screens/stock_adjustment_screen/cubit/stock_adjustment_cubit.dart';
import 'package:di4l_pos/screens/stock_adjustment_screen/widget/stock_adjustment_activities.dart';
import 'package:di4l_pos/screens/stock_adjustment_screen/widget/stock_adjustment_info.dart';
import 'package:di4l_pos/screens/stock_adjustment_screen/widget/stock_adjustment_product.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class StockAdjustmentDetail extends StatefulWidget {
  final int stockadjustmentId;
  const StockAdjustmentDetail({Key? key, required this.stockadjustmentId})
      : super(key: key);

  static MultiBlocProvider provider({required int stockadjustmentId}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StockAdjustmentCubit>(
          create: (BuildContext context) => StockAdjustmentCubit(),
        ),
      ],
      child: StockAdjustmentDetail(
        stockadjustmentId: stockadjustmentId,
      ),
    );
  }

  @override
  State<StockAdjustmentDetail> createState() => _StockAdjustmentDetailState();
}

class _StockAdjustmentDetailState extends State<StockAdjustmentDetail>
    with AfterLayoutMixin<StockAdjustmentDetail> {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    print('Id: ${widget.stockadjustmentId}');
    context
        .read<StockAdjustmentCubit>()
        .getStockAdjustmentsDetail(id: widget.stockadjustmentId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'stock_adjustment_detail'.tr,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: GlobalColors.whiteColor,
      ),
      backgroundColor: GlobalColors.kDarkWhite,
      body: BlocBuilder<StockAdjustmentCubit, StockAdjustmentState>(
        buildWhen: ((previous, current) =>
            previous.data!.status != current.data!.status),
        builder: (context, state) {
          final stockAdjustmentDetail = state.data?.stockAdjustmentDetail;
          final stockAdjustmentLines =
              state.data?.stockAdjustmentDetail?.stockAdjustmentLines ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return stockAdjustmentDetail != null
                  ? SafeArea(
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: GlobalColors.whiteColor,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      StockAdjustmentInfo(
                                        stockAdjustment: stockAdjustmentDetail,
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
                                    itemCount: stockAdjustmentLines.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return StockAdjustmentProduct(
                                        stockAdjustmentLines:
                                            stockAdjustmentLines
                                                .elementAt(index),
                                      );
                                    },
                                  ),
                                ),
                              ],
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
                                      'total_amount'.tr,
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
                                          stockAdjustmentDetail.finalTotal!
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'total_amount_recovered'.tr,
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
                                          stockAdjustmentDetail
                                              .totalAmountRecovered!
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
                          BlocBuilder<StockAdjustmentCubit,
                              StockAdjustmentState>(
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
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  itemCount: activitie.length,
                                                  shrinkWrap: true,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return StockAdjustmentActivities(
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
