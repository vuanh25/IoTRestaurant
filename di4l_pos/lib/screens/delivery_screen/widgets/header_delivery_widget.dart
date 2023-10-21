import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/models/delivery/response/delivery_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderDeliveryWidget extends StatelessWidget {
  const HeaderDeliveryWidget({
    Key? key,
    required this.logoPartner,
    this.deliveryPartner,
  }) : super(key: key);
  final String logoPartner;
  final DeliveryPartner? deliveryPartner;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          deliveryPartner?.deliveryTenancy == null
              ? 'partner_connection'.tr
              : 'account_information'.tr + deliveryPartner!.fullname!,
          style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
        )),
        Divider(),
        Center(
          child: CachedNetworkImage(
            imageUrl: logoPartner,
            width: 200,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ],
    );
  }
}
