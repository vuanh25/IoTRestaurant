import 'package:di4l_pos/models/cash_register/response/cash_register_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CashReigsterWidget extends StatelessWidget {
  /// MARK: - Initials;
  final CashResgisterData? cashResgisterData;
  final int? index;

  const CashReigsterWidget({
    Key? key,
    this.index,
    this.cashResgisterData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shadowColor: Colors.black26,
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            height: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomRichText(
                  title: 'STT',
                  value: ' $index',
                ),
                CustomRichText(
                  title: 'total_card_slips'.tr,
                  value: ' ${cashResgisterData!.totalCardSlips}',
                ),
                CustomRichText(
                  title: 'total_cheques'.tr,
                  value: ' ${cashResgisterData!.totalCheques}',
                ),
                CustomRichText(
                  title: 'closing_note'.tr,
                  value:
                      ' ${cashResgisterData!.closingNote ?? 'not_comment'.tr}',
                ),
                CustomRichText(
                  title: 'closing_amount'.tr,
                  value: ' ${cashResgisterData!.closingAmount}',
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              decoration: BoxDecoration(
                color: cashResgisterData!.status == 'open'
                    ? Colors.green
                    : Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  cashResgisterData!.status!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
