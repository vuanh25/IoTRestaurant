import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class StockTransferInfo extends StatelessWidget {
  final LocationDetails locationDetails;
  final SellTransfer sellTransfer;
  const StockTransferInfo({
    Key? key,
    required this.locationDetails,
    required this.sellTransfer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String transactionDateString = sellTransfer.transactionDate!;
    DateTime transactionDate = DateTime.parse(transactionDateString);
    String formattedDate = DateFormat('dd/MM/yyyy').format(transactionDate);

    String? status = sellTransfer.status;

    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'location_from'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${locationDetails.sell!.name}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                '${locationDetails.sell!.city},',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${locationDetails.sell!.state},',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${locationDetails.sell!.country}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'phone_number'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${locationDetails.sell!.mobile}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'location_to'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${locationDetails.purchase!.name}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                '${locationDetails.purchase!.city},',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${locationDetails.purchase!.state},',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${locationDetails.purchase!.country}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'phone_number'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${locationDetails.purchase!.mobile}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'email'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                locationDetails.purchase!.email ?? '',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'reference_no'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '#${sellTransfer.refNo}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'date'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                formattedDate,
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'status'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                status == 'final' ? 'completed'.tr : '$status'.tr,
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
