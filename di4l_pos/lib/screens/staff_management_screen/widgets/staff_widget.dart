// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/text_avatar.dart';
import 'package:di4l_pos/models/staff_management/response/staff_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StaffWidget extends StatelessWidget {
  /// MARK: - Initials;
  final Staff? staff;
  final int? index;
  final Function(int)? onPressed;

  const StaffWidget({
    Key? key,
    this.staff,
    this.index,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!(staff!.id!);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Text(
                  // value: '${staff?.fullName ?? ''}',
                  'Admin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryColor
                  ),
                ),
                const SizedBox(
                  width: 36,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CustomRichText(
                      value: '${staff?.fullName ?? ''}',
                    ),

                    const SizedBox(
                      height: 3,
                    ),

                    if (staff!.email != null)
                      Text(
                        '${staff!.email}',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                  ],
                ),

              ],
            ),
          ),
          Positioned(
              top: 20,
              right: 30,
              child: Container(
                  height: 10,
                  width: 10,
                  child: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: GlobalColors.primaryColor,
                    size: 20,
                  ))),
        ],
      ),
    );
  }
}
