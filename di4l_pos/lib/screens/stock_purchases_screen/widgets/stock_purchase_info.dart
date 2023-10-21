import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_detail_response.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class StockPurchaseInfo extends StatelessWidget {
  final Contact contact;
  final Location location;
  final StockPurchaseDetailResponse stockPurchaseDetailResponse;
  const StockPurchaseInfo({
    Key? key,
    required this.contact,
    required this.location,
    required this.stockPurchaseDetailResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'supplier'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              contact.name != null
                  ? Text(
                      '${contact.name}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                'mobile'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              contact.mobile != null
                  ? Text(
                      '${contact.mobile}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                'email'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              contact.email != null
                  ? Text(
                      '${contact.email}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                'business'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              location.name != null
                  ? Text(
                      '${location.name}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                '${location.landmark}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                '${location.city}, ${location.state}, ${location.country}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                'phone_number'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              location.mobile != null
                  ? Text(
                      '${location.mobile}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                'email'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              location.email != null
                  ? Text(
                      '${location.email}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                'reference_no'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              stockPurchaseDetailResponse.refNo != null
                  ? Text(
                      '${stockPurchaseDetailResponse.refNo}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                'date'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              stockPurchaseDetailResponse.transactionDate != null
                  ? Text(
                      '${stockPurchaseDetailResponse.transactionDate}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                'purchase_status'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              stockPurchaseDetailResponse.status != null
                  ? Text(
                      '${stockPurchaseDetailResponse.status}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                'payment_status'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(width: 5),
              stockPurchaseDetailResponse.paymentStatus != null
                  ? Text(
                      '${stockPurchaseDetailResponse.paymentStatus}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
