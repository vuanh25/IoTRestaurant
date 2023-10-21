import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RevenueWidget extends StatelessWidget {
  /// MARK: - Initials;
  const RevenueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Revenue
            _buildRevenueItem(),

            /// Divider
            _buidlCustomDivider(),

            /// Statistical
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatisticalItem(title: 'new_orders'.tr, value: '0'),
                _buildStatisticalItem(title: 'cancel_orders'.tr.tr, value: '0'),
                _buildStatisticalItem(title: 'return_orders'.tr, value: '0')
              ],
            )
          ],
        ),
      ),
    );
  }

  Column _buildRevenueItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'day_revenue'.tr.toUpperCase(),
          style: GlobalStyles.boldStyle.copyWith(
            color: Colors.grey,
          ),
        ),
        Text(
          '0',
          style: GlobalStyles.boldStyle.copyWith(fontSize: 32),
        ),
      ],
    );
  }

  /// Build Custom Divider
  Widget _buidlCustomDivider() {
    return Column(
      children: [
        const SizedBox(height: 8.0),
        const Divider(height: 1.0),
        const SizedBox(height: 20.0),
      ],
    );
  }

  /// Build Statistical
  Widget _buildStatisticalItem({String? title, String? value}) {
    return Column(
      children: [
        Text(
          title ?? '',
          style: GlobalStyles.boldStyle.copyWith(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value ?? '',
          style: GlobalStyles.boldStyle.copyWith(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
