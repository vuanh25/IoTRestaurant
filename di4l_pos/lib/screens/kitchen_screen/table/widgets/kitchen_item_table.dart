import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/kitchen/kitchen_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KitchenItemTable extends StatelessWidget {
  final KitchenData kitchenData;
  final Function() function;

  const KitchenItemTable({
    Key? key,
    required this.kitchenData,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // content
    // ignore: unused_local_variable
    double gridviewWidthContent = 400;
    // ignore: unused_local_variable
    double gridviewHeightContent = 200;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 1,
              blurRadius: 15,
              offset: const Offset(1, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                color: GlobalColors.kDarkWhite,
              ),
              child: Center(
                child: Text(
                  '#${kitchenData.id}',
                  style: GlobalStyles.titilliumSemiBold2(context),
                ),
              ),
            ),
            Container(
              width: 400,
              height: 5,
              color: GlobalColors.primaryColor,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: GlobalColors.kDarkWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'placed_at'.tr,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titleHeader(context),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'order_status'.tr,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titleHeader(context),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'customer'.tr,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titleHeader(context),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'table'.tr,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titleHeader(context),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'location'.tr,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titleHeader(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: GlobalColors.kDarkWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                '${kitchenData.transactionDate}',
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titilliumSemiBold1(context),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: GlobalColors.kitChen2,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '${kitchenData.status}',
                                  textAlign: TextAlign.center,
                                  style: GlobalStyles.titleHeader1(context),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                '${kitchenData.customerName}',
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titilliumSemiBold1(
                                    context),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                '${kitchenData.tableName}',
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titilliumSemiBold1(
                                    context),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                '${kitchenData.businessLocation}',
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                style: GlobalStyles.titilliumSemiBold1(
                                    context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              color: GlobalColors.primaryColor,
              child: ElevatedButton(
                onPressed: function,
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColors.primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text('mark_as_cooked'.tr,
                      style: GlobalStyles.titleHeader1(context)),
                ),
              ),
            ),
            Container(
              height: 40,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10.0)),
                color: GlobalColors.kitChen2,
              ),
              child: ElevatedButton(
                onPressed: () => navigator!.pushNamed(
                  RouteGenerator.kitchenDetail,
                  arguments: {'orderId': kitchenData.id!},
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColors.kitChen2,
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'order_details'.tr,
                        style: GlobalStyles.titleHeader1(context),
                      ),
                      const SizedBox(width: 8.0),
                      const Icon(Icons.arrow_circle_right),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
