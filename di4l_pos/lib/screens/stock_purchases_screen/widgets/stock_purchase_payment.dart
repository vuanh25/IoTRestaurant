import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/global_colors.dart';

class StockPurchasePayment extends StatelessWidget {
  final StockPurchaseDetailResponse stockPurchaseDetailResponse;
  const StockPurchasePayment({
    Key? key,
    required this.stockPurchaseDetailResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: GlobalColors.whiteColor),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'date'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'reference_no'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'amount'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'payment_mode'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'payment_note'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 2),
            ],
          ),
        ),
      ),
    );
  }
}
