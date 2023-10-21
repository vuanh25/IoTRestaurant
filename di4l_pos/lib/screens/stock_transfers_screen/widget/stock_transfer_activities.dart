import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockTransferActivities extends StatelessWidget {
  final Activities activities;
  const StockTransferActivities({
    Key? key,
    required this.activities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? description = activities.description;
    String? formattedDescription = description?.capitalize!;

    String? status = activities.properties!.attributes!.status;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: GlobalColors.whiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 2,
              ),
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
                    '${activities.createdAt}',
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
                    'by'.tr,
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
                  Row(
                    children: [
                      Text(
                        '${activities.causer!.surname}',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '${activities.causer!.firstName}',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '${activities.causer!.lastName}',
                        style: GlobalStyles.titilliumSemiBold1(context),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'action'.tr,
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
                    '$formattedDescription',
                    style: GlobalStyles.titilliumSemiBold1(context),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'status'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: status == 'final'
                          ? GlobalColors.primaryColor
                          : (status == 'in_transit'
                              ? Color(0xffFFCC00)
                              : GlobalColors.debtColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        status == 'final' ? 'completed'.tr : '$status'.tr,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
