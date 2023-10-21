import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VariantionCard extends StatelessWidget {
  final String prVariantName;
  final String variantName;
  final String subSku;
  final dynamic defaultPurchasePrice;
  final dynamic dppIncTax;
  final dynamic profitPercent;
  final dynamic defaultSellPrice;
  final dynamic sellPriceIncTax;

  const VariantionCard({
    Key? key,
    required this.prVariantName,
    required this.variantName,
    required this.subSku,
    required this.defaultPurchasePrice,
    required this.dppIncTax,
    required this.profitPercent,
    required this.defaultSellPrice,
    required this.sellPriceIncTax,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: GlobalColors.kBorderColorTextField)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRowText(
            title: 'Variantions',
            value: '${prVariantName} - ${variantName}',
          ),
          CustomRowText(
            title: 'SKU',
            value: subSku,
          ),
          CustomRowText(
            title: 'dpp'.tr + ' (Exc.tax)',
            value: '${defaultPurchasePrice} đ',
          ),
          CustomRowText(
            title: 'dsp'.tr + ' (Exc.tax)',
            value: '${defaultSellPrice} đ',
          ),
          CustomRowText(
            title: 'Margin(%):',
            value: '${profitPercent} đ',
          ),
          CustomRowText(
            title: 'dpp'.tr + ' (Inc.tax)',
            value: '${dppIncTax} đ',
          ),
          CustomRowText(
            title: 'dsp'.tr + ' (Inc.tax)',
            value: '${sellPriceIncTax} đ',
          ),
        ],
      ),
    );
  }
}
