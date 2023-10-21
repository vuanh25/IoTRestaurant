import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SellReturnCard extends StatelessWidget {
  final SellData sellData;
  final String? location;
 
  const SellReturnCard(
      {Key? key, required this.sellData, this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          /// Details
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'transaction_date'.tr,
                  value: sellData.transactionDate ?? '',
                ),

                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'invoice_no'.tr,
                  value: sellData.invoiceNo ?? '',
                ),

                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'parant'.tr,
                  value: sellData.contact!.name ?? '',
                ),

                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'customer_name'.tr,
                  value: sellData.contact!.name ?? '',
                ),

                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'location'.tr,
                  value: location,
                ),

                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'payment_status'.tr,
                  value: sellData.paymentStatus,
                ),

                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'total_amount'.tr,
                  value:
                      '${double.parse(sellData.totalAmountRecovered ?? '0')}',
                ),

                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'payment_due'.tr,
                  value: '${double.parse(sellData.discountAmount ?? '0')}',
                ),

                /// Name
                const SizedBox(height: 8.0),
                CustomRichText(
                  title: 'sell_return_due'.tr,
                  value: '${double.parse(sellData.finalTotal ?? '0')}',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
