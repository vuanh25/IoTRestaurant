import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:get/get.dart';

class StockAdjustmentActivities extends StatelessWidget {
  final Activities activities;
  const StockAdjustmentActivities({
    Key? key,
    required this.activities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? description = activities.description;
    String? formattedDescription = description?.capitalize!;

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
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'note'.tr,
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
                  activities.subject!.staffNote != null
                      ? Text(
                          '${activities.subject!.staffNote}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        )
                      : Text(
                          '',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
