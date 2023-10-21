import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/cubit/stock_cubit.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/widgets/custom_card_stock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class OverViewStock extends StatefulWidget {
  static BlocProvider<StockCubit> provider() {
    return BlocProvider(
      create: (context) => StockCubit(),
      child: OverViewStock(),
    );
  }

  const OverViewStock({Key? key}) : super(key: key);

  @override
  State<OverViewStock> createState() => _OverViewStockState();
}

class _OverViewStockState extends State<OverViewStock> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<StockCubit>().getReportStocks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: BlocBuilder<StockCubit, StockState>(
                  builder: (context, state) {
                    List totalStockPrice = [];
                    List totalStock = [];
                    List totalSold = [];
                    List totalAdjusted = [];
                    List stock = [];
                    List outStock = [];
                    for (int i = 0; i < state.data!.reportStocks.length; i++) {
                      if (state.data!.reportStocks[i].totalSold != null) {
                        totalSold += [state.data!.reportStocks[i].totalSold];
                      }
                      if (state.data!.reportStocks[i].totalAdjusted != null) {
                        totalAdjusted += [
                          state.data!.reportStocks[i].totalAdjusted
                        ];
                      }
                      if (state.data!.reportStocks[i].stock == null ||
                          state.data!.reportStocks[i].stock == '0.0000') {
                        outStock += [state.data!.reportStocks[i].productId];
                      } else {
                        stock += [state.data!.reportStocks[i].productId];
                      }
                      if (state.data!.reportStocks[i].stockPrice == null ||
                          state.data!.reportStocks[i].stock == null) {
                        state.data!.reportStocks[i].stockPrice = '0';
                        state.data!.reportStocks[i].stock = '0';
                        totalStockPrice += [
                          state.data!.reportStocks[i].stockPrice,
                        ];
                        totalStock += [state.data!.reportStocks[i].stock];
                      } else {
                        totalStockPrice += [
                          state.data!.reportStocks[i].stockPrice,
                        ];
                        totalStock += [state.data!.reportStocks[i].stock];
                      }
                    }
                    double sumStockPrice = totalStockPrice.fold(
                        0,
                        (previousValue, element) =>
                            previousValue + double.parse(element));
                    double sumStock = totalStock.fold(
                        0,
                        (previousValue, element) =>
                            previousValue + double.parse(element));
                    double sumTotalSold = totalSold.fold(
                        0,
                        (previousValue, element) =>
                            previousValue + double.parse(element));
                    double sumTotalAdjusted = totalAdjusted.fold(
                        0,
                        (previousValue, element) =>
                            previousValue + double.parse(element));
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              physics: const NeverScrollableScrollPhysics(),
                              childAspectRatio: 1.5,
                              children: [
                                CustomCardStock(
                                  onTap: () {},
                                  icon: Icons.attach_money,
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: GlobalColors.primaryColor,
                                  title:
                                      '${GlobalFormatter.formatNumber(source: '${sumStockPrice}')} đ',
                                  subtitle: 'stock_value'.tr,
                                ),
                                CustomCardStock(
                                  onTap: () {},
                                  icon: Icons.workspaces_outline,
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: GlobalColors.primaryColor,
                                  title: GlobalFormatter.formatNumber(
                                      source: '${sumStock}'),
                                  subtitle: 'qty'.tr,
                                ),
                                CustomCardStock(
                                  onTap: () {},
                                  icon: Icons.sell_outlined,
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: GlobalColors.primaryColor,
                                  title: GlobalFormatter.formatNumber(
                                      source: '${sumTotalSold}'),
                                  subtitle: 'total_units_sold'.tr,
                                ),
                                CustomCardStock(
                                  onTap: () {},
                                  icon: Icons.adjust_sharp,
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: GlobalColors.primaryColor,
                                  title: GlobalFormatter.formatNumber(
                                      source: '${sumTotalAdjusted}'),
                                  subtitle: 'total_stock_adjustment'.tr,
                                ),
                                CustomCardStock(
                                  onTap: () {},
                                  icon: Icons.add_shopping_cart_rounded,
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: GlobalColors.primaryColor,
                                  title: '${stock.length}',
                                  subtitle: 'products_still_for_sale'.tr,
                                ),
                                CustomCardStock(
                                  onTap: () {},
                                  icon: Icons.remove_shopping_cart_outlined,
                                  backgroundColor: Colors.redAccent,
                                  foregroundColor: GlobalColors.debtColor,
                                  title: '${outStock.length}',
                                  subtitle: 'product_is_out_of_stock'.tr,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                )),
            // Container(
            //   color: Colors.white,
            //   width: double.infinity,
            //   margin: const EdgeInsets.symmetric(horizontal: 10),
            //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const Text(
            //         'Tổng quan giá trị kho',
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: Dimensions.FONT_SIZE_LARGE),
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: const [
            //           Text(
            //             'Sản phẩm',
            //             // style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
            //           ),
            //           Text(
            //             'Giá trị',
            //             // style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
            //           )
            //         ],
            //       ),
            //       Container(
            //         margin: const EdgeInsets.symmetric(vertical: 10),
            //         child: BlocBuilder<StockCubit, StockState>(
            //           builder: (context, state) {
            //             final _stocks = state.data?.reportStocks ?? [];
            //             return ListView.separated(
            //               physics: const NeverScrollableScrollPhysics(),
            //               shrinkWrap: true,
            //               itemBuilder: (context, index) {
            //                 return ProductsInStock.provider(
            //                   index: index + 1,
            //                   reportStockData: _stocks[index],
            //                 );
            //               },
            //               separatorBuilder: (context, index) => const Divider(),
            //               itemCount: _stocks.length,
            //             );
            //           },
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
