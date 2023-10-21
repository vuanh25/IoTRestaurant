import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class StockAdjustmentInfo extends StatelessWidget {
  final StockAdjustment stockAdjustment;
  const StockAdjustmentInfo({
    Key? key,
    required this.stockAdjustment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String transactionDateString = stockAdjustment.transactionDate!;
    DateTime transactionDate = DateTime.parse(transactionDateString);
    String formattedDate = DateFormat('dd/MM/yyyy').format(transactionDate);

    String? adjustmentType = stockAdjustment.adjustmentType;
    String? formattedAdjustmentType = adjustmentType?.capitalize!;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'business'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '${stockAdjustment.location!.name}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                '${stockAdjustment.location!.state},',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '${stockAdjustment.location!.city},',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '${stockAdjustment.location!.country}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'phone_number'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '${stockAdjustment.location!.mobile}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'reference_no'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '#${stockAdjustment.refNo}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'date'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                formattedDate,
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'adjustment_type'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '$formattedAdjustmentType',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'reason'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                stockAdjustment.additionalNotes ?? '',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
