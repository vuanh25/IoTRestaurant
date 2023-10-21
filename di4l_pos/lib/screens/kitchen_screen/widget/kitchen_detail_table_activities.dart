import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/kitchen/kitchen_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';

class KitchenDetailTableActivities extends StatelessWidget {
  final Activities activities;
  const KitchenDetailTableActivities({
    Key? key,
    required this.activities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? acticon = activities.description;
    String? formatAction = acticon?.capitalize!;

    String? status = activities.causer!.status;
    String? formatStatus = status?.capitalize!;

    String? paymentStutus = activities.properties!.attributes!.paymentStatus;
    String? formatPaymentStatus = paymentStutus?.capitalize!;

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
                    '$formatAction',
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
                      color: GlobalColors.appBar4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        '$formatStatus',
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
              Row(
                children: [
                  const Text(
                    'Total:',
                    style: TextStyle(
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
                      color: GlobalColors.appBar4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          const Text(
                            '₫',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            activities.subject!.finalTotal!.formatMoney(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    'Payment status:',
                    style: TextStyle(
                      fontSize: 16,
                      color: GlobalColors.kGreyTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  formatPaymentStatus != null
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: GlobalColors.appBar4,
                          ),
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                formatPaymentStatus,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )),
                        )
                      : const Text('')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
