// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/models/sell_report/reponse/sell_report_response.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ByProductWidget extends StatefulWidget {
  /// MARK: - Initials;
  // final ContactModel? contact;
  final SellReport? sellReport;
  final int? index;

  static MultiBlocProvider provider({
    final SellReport? sellReport,
    final int? index,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (context) => ProductsCubit(),
        ),
      ],
      child: ByProductWidget(
        sellReport: sellReport,
        index: index,
      ),
    );
  }

  const ByProductWidget({
    Key? key,
    this.index,
    this.sellReport,
  }) : super(key: key);

  @override
  State<ByProductWidget> createState() => _ByProductWidgetState();
}

class _ByProductWidgetState extends State<ByProductWidget>
    with AfterLayoutMixin {
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
              child: Text(
                '${widget.sellReport!.productName}',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                // style: GlobalStyles.robotoBold(context).copyWith(
                //   color: GlobalColors.primaryWebColor,
                //   fontSize: 16,
                // ),
              ),
            ),
            Text(
              GlobalFormatter.formatNumber(
                  source: widget.sellReport!.sellQty ?? ''),
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
                    source: widget.sellReport!.subtotal ?? ''),
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
