import 'package:di4l_pos/screens/table_order_screen/widgets/price_with_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalculationView extends StatelessWidget {
  const CalculationView({
    Key? key,
    required this.itemPrice,
    required this.discount,
    // required this.tax,
    // required this.addOns,
    required this.itemAmount,
    required this.total,
    // required this.paidAmount,
    // required this.change,
  }) : super(key: key);

  final int itemPrice;
  final int discount;
  // final int tax;
  // final int addOns;
  final int itemAmount;
  final int total;
  // final int paidAmount;
  // final int change;

  String formatCurrency({required int price}) {
    // return NumberFormat('#,###').format(price);
    return NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
        .format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PriceWithType(
          type: 'item_amount'.tr,
          amount: itemAmount.toString(),
        ),
        PriceWithType(
          type: 'items_price_food'.tr,
          amount: formatCurrency(price: itemPrice),
        ),
        // if (discount != 0)
        PriceWithType(
          type: 'discount_food'.tr,
          amount: '-  ${formatCurrency(price: discount)}',
        ),
        // PriceWithType(
        //   type: 'vat_tax_food'.tr,
        //   amount: '+ ${formatCurrency(price: tax)}',
        // ),
        // PriceWithType(
        //   type: 'addons_food'.tr,
        //   amount: '+ ${formatCurrency(price: addOns)}',
        // ),
        PriceWithType(
          type: 'total_food'.tr,
          amount: formatCurrency(price: total),
          isTotal: true,
        ),
        // PriceWithType(
        //   type: 'paid_amount'.tr,
        //   amount: '$paidAmountđ',
        // ),
        // PriceWithType(
        //   type: 'change'.tr,
        //   amount: '$changeđ',
        // ),
      ],
    );
  }
}
