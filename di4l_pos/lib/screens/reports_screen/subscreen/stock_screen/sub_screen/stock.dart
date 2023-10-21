import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/cubit/stock_cubit.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/widgets/custom_card_stock.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/widgets/products_in_stock_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Stock extends StatefulWidget {
  static BlocProvider<StockCubit> provider() {
    return BlocProvider(
      create: (context) => StockCubit(),
      child: Stock(),
    );
  }

  const Stock({Key? key}) : super(key: key);

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> with AfterLayoutMixin {
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
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'overview_of_warehouse_value'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.FONT_SIZE_LARGE),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'products'.tr,
                        // style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
                      ),
                      Text(
                        'value'.tr,
                        // style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: BlocBuilder<StockCubit, StockState>(
                      builder: (context, state) {
                        final _stocks = state.data?.reportStocks ?? [];
                        return ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ProductsInStock.provider(
                              index: index + 1,
                              reportStockData: _stocks[index],
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: _stocks.length,
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
