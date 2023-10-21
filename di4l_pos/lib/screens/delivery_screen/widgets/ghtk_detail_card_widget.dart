import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/delivery/response/ghtk_detail_response.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GhtkDetailCardWidget extends StatelessWidget {
  const GhtkDetailCardWidget({
    Key? key,
    this.orderElement,
  }) : super(key: key);
  final OrderElement? orderElement;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'order_code'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Text(
                  '${orderElement!.order!.labelId}',
                  overflow: TextOverflow.clip,
                  style: GlobalStyles.titilliumSemiBold1(context)
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'created_by'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '${orderElement!.createdBy}',
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
                'order_date'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                DateFormat('HH:mm:ss dd/MM/yyyy').format(
                    DateTime.parse('${orderElement!.order!.created}')
                        .toLocal()),
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
                'created_at'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                DateFormat('HH:mm:ss dd/MM/yyyy').format(
                    DateTime.parse('${orderElement!.createdAt}').toLocal()),

                // '${orderElement!.createdAt}',
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
                style: GlobalStyles.titleHeader(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Text(
                  '${orderElement!.order!.message}',
                  overflow: TextOverflow.clip,
                  style: GlobalStyles.titilliumSemiBold1(context),
                ),
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
              Text(
                '${orderElement!.order!.status}',
                style: GlobalStyles.titilliumSemiBold1(context),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
