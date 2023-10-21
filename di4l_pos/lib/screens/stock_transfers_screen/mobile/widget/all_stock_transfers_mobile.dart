import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllStockTransfersMobile extends StatelessWidget {
  final StockTransfersData stockTransfersData;
  final VoidCallback function;
  const AllStockTransfersMobile({
    Key? key,
    required this.stockTransfersData,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => navigator!.pushNamed(
          RouteGenerator.stockTransferDetail,
          arguments: {'stockTransferId': stockTransfersData.id!},
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
                          '${stockTransfersData.transactionDate}',
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
                          '${stockTransfersData.refNo}',
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
                          'location_from'.tr,
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
                          '${stockTransfersData.locationFrom}',
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
                          'location_to'.tr,
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
                          '${stockTransfersData.locationTo}',
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
                          'status'.tr,
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
                          stockTransfersData.status == 'final'
                              ? 'completed'.tr
                              : '${stockTransfersData.status}'.tr,
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
                          'shipping_charges'.tr,
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
                          stockTransfersData.shippingCharges!.formatMoney(),
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('₫'),
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
                        Text(
                          stockTransfersData.finalTotal!.formatMoney(),
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('₫'),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'additional_notes'.tr,
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
                          stockTransfersData.additionalNotes ?? '',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     const Spacer(),
                    //     InkWell(
                    //       onTap: function,
                    //       child: Container(
                    //         height: 30,
                    //         width: 80,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10.0),
                    //           color: GlobalColors.redColor,
                    //         ),
                    //         child: Padding(
                    //           padding: const EdgeInsets.only(left: 5),
                    //           child: Row(
                    //             children: [
                    //               const Icon(
                    //                 Icons.delete,
                    //                 color: GlobalColors.whiteColor,
                    //               ),
                    //               Text(
                    //                 'delete'.tr,
                    //                 style: const TextStyle(
                    //                   fontSize: 16,
                    //                   fontFamily: 'Roboto',
                    //                   color: GlobalColors.whiteColor,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
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
