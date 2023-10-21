import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/dimensions.dart';
import '../../../common/global_colors.dart';

class AddValueVariantion extends StatelessWidget {
  final TextEditingController controller;
  final Function() onPressed;
  final bool isDel;
  final bool isChill;
  const AddValueVariantion({
    Key? key,
    required this.controller,
    required this.onPressed,
    required this.isDel,
    required this.isChill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          const SizedBox(
            width: Dimensions.PADDING_SIZE_SMALL,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: CustomTextField(
                    redLabel: " *",
                    controller: controller,
                    hintLabel: 'value'.tr,
                  )),
              const SizedBox(
                width: Dimensions.PADDING_SIZE_EXTRA_SMALL,
              ),
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                clipBehavior: Clip.hardEdge,
                color: isDel ? Colors.red : GlobalColors.appBar1,
                child: InkWell(
                  onTap: onPressed,
                  child: Icon(
                    isDel ? Icons.remove : Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
