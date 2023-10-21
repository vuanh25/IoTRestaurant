import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/models/reports/responses/report_stock_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportStockWidget extends StatelessWidget {
  /// MARK: - Initials;
  final ReportStockData? reportStockData;

  const ReportStockWidget({
    Key? key,
    this.reportStockData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: Get.width,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: GlobalColors.bgSearch,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          _buildContainerReport(
            index: 1,
            title: 'sku'.tr.toUpperCase(),
            value: reportStockData?.sku ?? '',
          ),
          _buildContainerReport(
            index: 2,
            title: 'product_name'.tr,
            value: reportStockData?.product ?? '',
          ),
          _buildContainerReport(
            index: 3,
            title: 'total_sold'.tr,
            value: GlobalFormatter.formatNumber(
                source: reportStockData?.totalSold ?? '0.0'),
          ),
          _buildContainerReport(
            index: 4,
            title: 'total_transfered'.tr,
            value: GlobalFormatter.formatNumber(
                source: reportStockData?.totalTransfered ?? '0.0'),
          ),
          _buildContainerReport(
            index: 5,
            title: 'total_adjusted'.tr,
            value: GlobalFormatter.formatNumber(
                source: reportStockData?.totalAdjusted ?? '0.0'),
          ),
          _buildContainerReport(
            index: 6,
            title: 'unit_price'.tr,
            value: GlobalFormatter.formatNumber(
                source: reportStockData?.unitPrice ?? '0.0'),
          ),
        ],
      ),
    );
  }

  /// Container Report
  Widget _buildContainerReport({
    required int index,
    required String title,
    required String value,
  }) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(8.0),
      constraints: BoxConstraints(
        minHeight: 44,
      ),
      color: index % 2 != 0 ? Colors.blue.withOpacity(0.2) : Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
