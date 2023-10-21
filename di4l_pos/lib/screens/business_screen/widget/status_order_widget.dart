// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/text_avatar.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/shopinfo/response/ShopSettingRp.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusOrderWidget extends StatelessWidget {
  /// MARK: - Initials;
  final StatusOrder? statusOrder;
  final int? index;
  final Function(StatusOrder?)? onPressed;
  final VoidCallback? onDelete;

  const StatusOrderWidget({
    Key? key,
    this.index,
    this.onPressed,
    this.onDelete,
    this.statusOrder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!(statusOrder);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        // color: Colors.white,
        // padding: const EdgeInsets.symmetric(vertical: 15),
        // margin: const EdgeInsets.all(10),
        // height: Get.,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///Avatar

            CustomRichText(
              // title: contact!.type == 'supplier'
              //     ? 'suppliers'.tr
              //     : 'customers'.tr,
              value: '${index}',
            ),

            Text(
              '${statusOrder!.value}',
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              ),
            ),
            IconButton(
              onPressed: onDelete,
              icon: const Icon(
                Icons.delete,
                color: GlobalColors.redColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
