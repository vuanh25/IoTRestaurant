import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllStockPurchasesMobile extends StatelessWidget {
  final StockPurchasesData stockPurchasesData;
  final VoidCallback function;

  const AllStockPurchasesMobile({
    Key? key,
    required this.stockPurchasesData,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => navigator!
            .pushNamed(RouteGenerator.stockPurchaseDetail, arguments: {
          'stockPurchaseId': stockPurchasesData.id,
        }),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: GlobalColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
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
                        const SizedBox(width: 8),
                        stockPurchasesData.transactionDate != null
                            ? Text(
                                '${stockPurchasesData.transactionDate}',
                                style: GlobalStyles.titilliumSemiBold1(context),
                              )
                            : Text(''),
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
                          ),
                        ),
                        const SizedBox(width: 8),
                        stockPurchasesData.refNo != null
                            ? Text(
                                '${stockPurchasesData.refNo}',
                                style: GlobalStyles.titilliumSemiBold1(context),
                              )
                            : Text(''),
                      ],
                    ),
                    const SizedBox(height: 2),
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
                        const SizedBox(width: 8),
                        stockPurchasesData.locationName != null
                            ? Text(
                                '${stockPurchasesData.locationName}',
                                style: GlobalStyles.titilliumSemiBold1(context),
                              )
                            : Text(''),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          'supplier'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        stockPurchasesData.name != null
                            ? Text(
                                '${stockPurchasesData.name}',
                                style: GlobalStyles.titilliumSemiBold1(context),
                              )
                            : Text(''),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          'purchase_status'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        stockPurchasesData.status != null
                            ? Text(
                                '${stockPurchasesData.status}'.tr,
                                style: GlobalStyles.titilliumSemiBold1(context),
                              )
                            : Text(''),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          'payment_status'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        stockPurchasesData.paymentStatus != null
                            ? Text(
                                '${stockPurchasesData.paymentStatus}'.tr,
                                style: GlobalStyles.titilliumSemiBold1(context),
                              )
                            : Text(''),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          'grand_total'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        stockPurchasesData.finalTotal != null
                            ? Row(
                                children: [
                                  Text(
                                    stockPurchasesData.finalTotal!
                                        .formatMoney(),
                                    style: GlobalStyles.titilliumSemiBold1(
                                        context),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('₫'),
                                ],
                              )
                            : Text(''),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          'payment_due'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        stockPurchasesData.amountPaid != null
                            ? Text(
                                '${stockPurchasesData.amountPaid}',
                                style: GlobalStyles.titilliumSemiBold1(context),
                              )
                            : Text(''),
                      ],
                    ),
                    const SizedBox(height: 2),
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
                        const SizedBox(width: 8),
                        stockPurchasesData.addedBy != null
                            ? Text(
                                '${stockPurchasesData.addedBy}',
                                style: GlobalStyles.titilliumSemiBold1(context),
                              )
                            : Text(''),
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
                    borderRadius: BorderRadius.circular(10),
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
