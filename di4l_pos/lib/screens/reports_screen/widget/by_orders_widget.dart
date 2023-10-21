// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ByOrderWidget extends StatefulWidget {
  /// MARK: - Initials;
  // final ContactModel? contact;
  final SellData? orders;
  final int? index;

  static MultiBlocProvider provider({
    final SellData? orders,
    final int? index,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (context) => ProductsCubit(),
        ),
      ],
      child: ByOrderWidget(
        orders: orders,
        index: index,
      ),
    );
  }

  const ByOrderWidget({
    Key? key,
    this.index,
    this.orders,
  }) : super(key: key);

  @override
  State<ByOrderWidget> createState() => _ByOrderWidgetState();
}

class _ByOrderWidgetState extends State<ByOrderWidget> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.orders!.invoiceNo}',
                    // style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE)
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                      DateFormat('hh:mm dd/MM/yyyy').format(
                          DateTime.parse('${widget.orders!.transactionDate}')),
                      style:
                          const TextStyle(color: GlobalColors.kGreyTextColor)),
                  // Text(
                  //   '${widget.orders!.transactionDate}',
                  //   // style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE)
                  // ),
                ],
              ),
            ),
            Text(
              '${GlobalFormatter.formatNumber(source: '${widget.orders!.sellLines!.length}')} ${'products'.tr.toLowerCase()}',
              // style: GlobalStyles.robotoBold(context).copyWith(
              //   color: GlobalColors.primaryWebColor,
              //   fontSize: 16,
              // ),
            ),
            Container(
              width: 100,
              alignment: Alignment.centerRight,
              child: Text(
                GlobalFormatter.formatNumber(
                    source: widget.orders!.finalTotal ?? ''),
                // style: GlobalStyles.robotoBold(context).copyWith(
                //   color: GlobalColors.primaryWebColor,
                //   fontSize: 16,
                // ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
