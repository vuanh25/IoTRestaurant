import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/kitchen/kitchen_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KitchenDetailInfo extends StatelessWidget {
  final Sell sell;
  const KitchenDetailInfo({
    Key? key,
    required this.sell,
    // required this.widget,
  }) : super(key: key);

  // final KitchenDetailOrder widget;

  @override
  Widget build(BuildContext context) {

    String? status = sell.status;
    String? formatStatus = status?.capitalize!;

    String? paymentStatus = sell.paymentStatus;
    String? formatPaymentStatus = paymentStatus?.capitalize!;

    String? shipping = sell.shippingStatus;
    String? formatShipping = shipping?.capitalize!;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'invoice_no'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '${sell.id}',
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
                'status'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              formatStatus != null
                  ? Text(
                      formatStatus,
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(
                      '',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'payment_status'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              formatPaymentStatus != null
                  ? Text(
                      formatPaymentStatus,
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(
                      '',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'customer_name'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              sell.contact!.name != null
                  ? Text(
                      '${sell.contact!.name}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(
                      '',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'address'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  sell.contact!.city != null
                      ? Text(
                          '${sell.contact!.city},',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        )
                      : Text(
                          '',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                  const SizedBox(width: 5.0),
                  sell.contact!.state != null
                      ? Text(
                          '${sell.contact!.state}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        )
                      : Text(
                          '',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                  const SizedBox(width: 5.0),
                  sell.contact!.country != null
                      ? Text(
                          '${sell.contact!.country}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        )
                      : Text(
                          '',
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
                'Mobile',
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              sell.contact!.mobile != null
                  ? Text(
                      '${sell.contact!.mobile}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(
                      '',
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
                'table'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              sell.table != null
                  ? Text(
                      '${sell.table!.name}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(
                      '',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'service_staff'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              sell.serviceStaff != null
                  ? Text(
                      '${sell.serviceStaff}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(
                      '',
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
                'shipping'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              formatShipping != null
                  ? Text(
                      formatShipping,
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(
                      '',
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
                'delivered_to'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              sell.deliveredTo != null
                  ? Text(
                      '${sell.deliveredTo}',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    )
                  : Text(
                      '',
                      style: GlobalStyles.titilliumSemiBold1(context),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
