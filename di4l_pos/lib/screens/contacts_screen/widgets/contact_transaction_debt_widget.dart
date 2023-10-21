// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/models/contacts/response/ledger_response.dart';
import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ContactTransactionDebt extends StatelessWidget {
  /// MARK: - Initials;
  final Ledger? ledger;
  final int? index;
  final Function(Ledger?)? onPressed;
  final VoidCallback? onDelete;

  const ContactTransactionDebt({
    Key? key,
    this.ledger,
    this.index,
    this.onPressed,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!(ledger);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        // color: Colors.red,

        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        // height: Get.,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat('dd/MM/yy')
                      .format(DateTime.parse('${ledger!.date}')),
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      color: GlobalColors.kGreyTextColor,
                      fontSize: Dimensions.FONT_SIZE_SMALL),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${ledger!.type}',
                  style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                ),
                // textAlign: TextAlign.left,
                // style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     color: GlobalColors.kGreyTextColor),
              ],
            ),
            Text(
              '${GlobalFormatter.formatNumber(source: '${ledger!.debit}')} đ',

              // '${ledger!.debit}',
              style: TextStyle(
                color: GlobalColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${GlobalFormatter.formatNumber(source: '${ledger!.credit}')} đ',

              // '${ledger!.credit}',
              style: TextStyle(
                  color: GlobalColors.debtColor, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
