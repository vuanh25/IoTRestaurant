// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_payment_history_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/helpers.dart';

class AffiliateUserPaymentWidget extends StatelessWidget {
  /// MARK: - Initials;
  final AffiliatePayment payment;

  const AffiliateUserPaymentWidget({
    Key? key,
    required this.payment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  payment.createAt,
                ),
                
                Text(
                  Helpers.formatCurrency(price: payment.amount!.toString()),
                  style: const TextStyle(color: GlobalColors.primaryColor, fontWeight: FontWeight.bold),
                ),

                
              ],
            ),
          ),
        ],
      );
  }
}
