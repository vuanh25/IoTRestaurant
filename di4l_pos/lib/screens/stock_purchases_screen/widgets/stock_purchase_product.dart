import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_detail_response.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockPurchaseProduct extends StatelessWidget {
  final PurchaseLine purchaseLine;
  const StockPurchaseProduct({Key? key, required this.purchaseLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subTotalBeforeTax =
        (double.parse(purchaseLine.purchasePrice!) * purchaseLine.quantity!)
            .toString();
    final subTotal = ((double.parse(purchaseLine.variations!.sellPriceIncTax!) +
                double.parse(purchaseLine.purchasePriceIncTax!)) *
            purchaseLine.quantity!)
        .toString();
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
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'product'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${purchaseLine.product!.name}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  const Text(
                    'SKU',
                    style: TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${purchaseLine.product!.sku}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'purchase_quantity'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${purchaseLine.quantity}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'unit_cost_before_discount'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        '₫',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        purchaseLine.ppWithoutDiscount!.formatMoney(),
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'discount_percent'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${purchaseLine.discountPercent}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'unit_cost_before_tax'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        '₫',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        purchaseLine.purchasePrice!.formatMoney(),
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'subtotal_before_tax'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        '₫',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        subTotalBeforeTax.formatMoney(),
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'tax'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        '₫',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        purchaseLine.itemTax!.formatMoney(),
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'unit_cost_price_after_tax'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        '₫',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        purchaseLine.purchasePriceIncTax!.formatMoney(),
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'unit_selling_price'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        '₫',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        purchaseLine.variations!.sellPriceIncTax!.formatMoney(),
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'lot_number'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    purchaseLine.lotNumber == null
                        ? ''
                        : '${purchaseLine.lotNumber}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'mfg_date'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    purchaseLine.mfgDate == null
                        ? ''
                        : '${purchaseLine.mfgDate}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'exp_date'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    purchaseLine.expDate == null
                        ? ''
                        : '${purchaseLine.expDate}',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'sub_total'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        '₫',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        subTotal.formatMoney(),
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
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
