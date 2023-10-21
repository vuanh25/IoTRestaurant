import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/kitchen/kitchen_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KitchenItemMobile extends StatelessWidget {
  final KitchenData kitchenData;
  final Function() function;

  const KitchenItemMobile({
    Key? key,
    required this.kitchenData,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? status = kitchenData.status;
    String? formatStatus = status?.capitalize!;

    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () => navigator!.pushNamed(
          RouteGenerator.kitchenDetail,
          arguments: {'orderId': kitchenData.id!},
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: GlobalColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset:
                    const Offset(0, 3), // Điều chỉnh độ dài và hướng của bóng
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    '#${kitchenData.id}',
                    style: GlobalStyles.titilliumSemiBold2(context),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 5,
                  color: GlobalColors.primaryColor,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'placed_at'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${kitchenData.transactionDate}',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'order_status'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: GlobalColors.kitChen2,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          '$formatStatus',
                          textAlign: TextAlign.center,
                          style: GlobalStyles.titleHeader1(context),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'customer'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${kitchenData.customerName}',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'table'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    kitchenData.tableName != null
                        ? Text(
                            '${kitchenData.tableName}',
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: GlobalStyles.titilliumSemiBold1(context),
                          )
                        : Text(
                            '',
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'location'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors.kGreyTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${kitchenData.businessLocation}',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: function,
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: GlobalColors.primaryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'mark_as_cooked'.tr,
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: GlobalColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => navigator!.pushNamed(
                        RouteGenerator.kitchenDetail,
                        arguments: {'orderId': kitchenData.id!},
                      ),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: GlobalColors.flButtonColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'order_details'.tr,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    color: GlobalColors.whiteColor,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_circle_right_rounded,
                                  color: Colors.white,
                                  size: 23,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
