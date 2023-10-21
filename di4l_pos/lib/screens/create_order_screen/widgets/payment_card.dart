// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PaymentItem {
  TextEditingController amount;
  PayMethod payMethod;
  PaymentItem(this.amount, this.payMethod);
}

class PaymentCard extends StatelessWidget {
  final String method;
  final TextEditingController amount;

  const PaymentCard({
    Key? key,
    required this.method,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Paymethod: ${method}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomTextField(
              controller: amount,
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
          )
        ],
      ),
    );
  }
}
