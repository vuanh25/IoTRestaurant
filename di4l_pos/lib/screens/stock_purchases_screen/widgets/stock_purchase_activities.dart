import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockPurchaseActivities extends StatelessWidget {
  final StockPurchasesData activities;
  const StockPurchaseActivities({Key? key, required this.activities})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: GlobalColors.whiteColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 2),
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
                  Text(
                    '${activities.transactionDate}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'action'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'added'.tr,
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'by'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '${activities.addedBy}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'status'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${activities.status}'.tr,
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'total'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '₫',
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    style: GlobalStyles.titleRegular2(context),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    activities.finalTotal!.formatMoney(),
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'payment_status'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${activities.paymentStatus}'.tr,
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
