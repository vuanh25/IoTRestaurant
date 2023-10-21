// ignore_for_file: avoid_unnecessary_containers

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ContactTransactionOrder extends StatelessWidget {
  /// MARK: - Initials;
  final SellData? sells;
  final int? index;
  final Function(SellData?)? onPressed;
  final VoidCallback? onDelete;

  const ContactTransactionOrder({
    Key? key,
    this.sells,
    this.index,
    this.onPressed,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!(sells);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        child: Row(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: Get.width * 0.3),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  DateFormat('dd/MM/yy hh:mm')
                      .format(DateTime.parse('${sells?.transactionDate}')),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: GlobalColors.kGreyTextColor,
                      fontSize: Dimensions.FONT_SIZE_SMALL,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 140,
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '${sells!.status}' == 'final' ? "Đã xong" : "Final",
                          style: const TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text('# ${sells!.invoiceNo}')
                    ],
                  ),
                  Column(
                    children: [
                      Text('${sells!.sellLines!.length} sản phẩm'),
                      const SizedBox(height: 10),
                      Text(
                        '${GlobalFormatter.formatNumber(source: sells!.finalTotal ?? '0.0')} đ',
                        // sells!.finalTotal ?? '0.0',
                        style: const TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
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
