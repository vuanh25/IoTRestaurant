import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_account_response.dart';

import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentDetailWidget extends StatelessWidget {
  final PaymentDetail paymentDetail;
  const PaymentDetailWidget({
    Key? key,
    required this.paymentDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {},
        child: Container(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      '${paymentDetail.operationDate}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'payment_method'.tr,
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
                      paymentDetail.method?.tr ?? '',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'note'.tr,
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
                      paymentDetail.note ?? '',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      '${paymentDetail.addedBy}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'amount'.tr,
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
                      // '${'${paymentDetail.amount}'} đ',
                      GlobalFormatter.formatCurrency(
                          double.parse('${paymentDetail.amount}')),
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'description'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    paymentDetail.transaction != null
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                                Text(
                                  '${paymentDetail.transaction?.type}'.tr,
                                  style:
                                      GlobalStyles.titilliumSemiBold1(context),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'customer'.tr,
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
                                      '${paymentDetail.transaction?.contact?.name}',
                                      style: GlobalStyles.titilliumSemiBold1(
                                          context),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'invoice_no'.tr,
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
                                      '${paymentDetail.transaction?.invoiceNo}',
                                      style: GlobalStyles.titilliumSemiBold1(
                                          context),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'pay_reference_no'.tr,
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
                                      '${paymentDetail.paymentRefNo}',
                                      style: GlobalStyles.titilliumSemiBold1(
                                          context),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
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
                                      '${paymentDetail.addedBy}',
                                      style: GlobalStyles.titilliumSemiBold1(
                                          context),
                                    ),
                                  ],
                                ),
                              ])
                        : paymentDetail.transferTransaction != null
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${paymentDetail.subType}'.tr,
                                    style: GlobalStyles.titilliumSemiBold1(
                                        context),
                                  ),
                                  const SizedBox(
                                    height: 5,
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
                                        '${paymentDetail.addedBy}',
                                        style: GlobalStyles.titilliumSemiBold1(
                                            context),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${paymentDetail.subType}'.tr,
                                    style: GlobalStyles.titilliumSemiBold1(
                                        context),
                                  ),
                                  const SizedBox(
                                    height: 5,
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
                                        '${paymentDetail.addedBy}',
                                        style: GlobalStyles.titilliumSemiBold1(
                                            context),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
