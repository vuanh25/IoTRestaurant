// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/reports/responses/expense_report_response.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/models/sell_report/reponse/sell_report_response.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseReportWidget extends StatefulWidget {
  /// MARK: - Initials;
  // final ContactModel? contact;
  final ExpenseReportResponse? expenseReport;
  final int? index;

  const ExpenseReportWidget({
    Key? key,
    this.index,
    this.expenseReport,
  }) : super(key: key);

  @override
  State<ExpenseReportWidget> createState() => _ExpenseReportWidgetState();
}

class _ExpenseReportWidgetState extends State<ExpenseReportWidget>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Text('${widget.index}'),
            const SizedBox(
              width: 8,
            ),
            Text(
              '${widget.expenseReport!.category}',
              // overflow: TextOverflow.ellipsis,
              // maxLines: 2,
              // style: GlobalStyles.robotoBold(context).copyWith(
              //   color: GlobalColors.primaryWebColor,
              //   fontSize: 16,
              // ),
            ),
          ],
        ),
        Text(
          GlobalFormatter.formatNumber(
              source: widget.expenseReport!.totalExpense ?? ''),
          // style: GlobalStyles.robotoBold(context).copyWith(
          //   color: GlobalColors.primaryWebColor,
          //   fontSize: 16,
          // ),
        ),
      ]),
    );
  }
}
