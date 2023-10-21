import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllStockAdJustMentMobile extends StatelessWidget {
  final StockAdjustmentData stockAdjustmentData;
  final VoidCallback function;
  const AllStockAdJustMentMobile({
    Key? key,
    required this.stockAdjustmentData,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => navigator!.pushNamed(
          RouteGenerator.stockAdjustmentDetail,
          arguments: {'stockAdjustmentId': stockAdjustmentData.id!},
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: GlobalColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'date'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${stockAdjustmentData.transactionDate}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'reference_no'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${stockAdjustmentData.refNo}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'location'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${stockAdjustmentData.locationName}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'adjustment_type'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${stockAdjustmentData.adjustmentType}'.tr,
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'total_amount_recovered'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              stockAdjustmentData.totalAmountRecovered!
                                  .formatMoney(),
                              style: GlobalStyles.titilliumSemiBold1(context),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('₫'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'reason'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          stockAdjustmentData.additionalNotes ?? '',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'total_amount'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              stockAdjustmentData.finalTotal!.formatMoney(),
                              style: GlobalStyles.titilliumSemiBold1(context),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('₫'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'added_by'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${stockAdjustmentData.addedBy}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: InkWell(
                onTap: function,
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: GlobalColors.redColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.delete,
                          color: GlobalColors.whiteColor,
                        ),
                        Text(
                          'delete'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: GlobalColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
