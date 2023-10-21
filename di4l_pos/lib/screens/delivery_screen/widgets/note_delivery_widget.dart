import 'package:di4l_pos/common/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class NoteDeliveryWidget extends StatelessWidget {
  const NoteDeliveryWidget({Key? key, required this.namePartner})
      : super(key: key);
  final String namePartner;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'note'.tr,
          style: TextStyle(
              fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Text('text_note'.tr + namePartner),
        const SizedBox(
          height: 8,
        ),
        Text('text_note_1'.tr + namePartner)
      ],
    );
  }
}
