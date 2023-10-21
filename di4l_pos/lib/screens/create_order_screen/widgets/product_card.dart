import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/products/response/variation.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VariantionItem {
  Product product;
  Variation variantion;
  TextEditingController qty;
  TextEditingController unitPrice;
  TextEditingController taxRate;
  TextEditingController discountAmount;
  String discountType;
  int subUnit;
  TextEditingController note;

  VariantionItem(
    this.product,
    this.variantion,
    this.qty,
    this.unitPrice,
    this.taxRate,
    this.discountAmount,
    this.discountType,
    this.subUnit,
    this.note,
  );
}

class VariantionCard extends StatelessWidget {
  final Widget widget;
  final TextEditingController qty;
  final TextEditingController unitPrice;
  final TextEditingController taxRate;
  final TextEditingController discountAmount;
  final Widget discountWidget;
  final Widget unitWidget;
  final TextEditingController note;
  const VariantionCard({
    Key? key,
    required this.widget,
    required this.qty,
    required this.unitPrice,
    required this.taxRate,
    required this.discountAmount,
    required this.discountWidget,
    required this.unitWidget,
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget,
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: qty,
                  keyboardKey: const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
                  ],
                  hintLabel: 'qty'.tr,
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'field_is_required'.tr;
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomTextField(
                  controller: unitPrice,
                  keyboardKey: const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
                  ],
                  hintLabel: 'unit_price'.tr,
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'field_is_required'.tr;
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: discountAmount,
                  keyboardKey: const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
                  ],
                  hintLabel: 'discount_amount'.tr,
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'field_is_required'.tr;
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: discountWidget,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: taxRate,
                  hintLabel: 'tax_rate'.tr,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: unitWidget,
              ),
            ],
          ),
          const SizedBox(height: 10),
          CustomTextField(
            controller: note,
            hintLabel: 'note'.tr,
          ),
        ],
      ),
    );
  }
}
