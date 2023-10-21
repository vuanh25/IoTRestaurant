import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KitchenDetailTablePayment extends StatelessWidget {
  const KitchenDetailTablePayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // table payment info
    int numberPaymentInfoRows = 1;
    List<DataRow> paymentInfoRows = List<DataRow>.generate(
      numberPaymentInfoRows,
      (index) => DataRow(
        cells: [
          DataCell(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'date'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '03/26/2023',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'reference_no'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'SP2023/0002',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'payment_mode'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Cash',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'payment_note'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '--',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                )
              ],
            ),
          ),
          DataCell(
            Text(
              '₫ 120,000.00',
              style: GlobalStyles.titilliumSemiBold1(context),
            ),
          ),
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Scrollbar(
          thumbVisibility: true,
          child: DataTable(
            headingRowColor: MaterialStateColor.resolveWith(
                (states) => GlobalColors.whiteColor),
            dataRowColor: MaterialStateColor.resolveWith(
                (states) => GlobalColors.whiteColor),
            columnSpacing: 20,
            dataRowHeight: 110,
            headingRowHeight: 40,
            columns: [
              DataColumn(
                label: Text(
                  'payment_info'.tr,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    color: GlobalColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'amount'.tr,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    color: GlobalColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            rows: paymentInfoRows,
          ),
        ),
      ),
    );
  }
}
