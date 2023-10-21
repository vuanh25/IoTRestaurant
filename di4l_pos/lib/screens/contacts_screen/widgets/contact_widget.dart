// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/text_avatar.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactWidget extends StatelessWidget {
  /// MARK: - Initials;
  final ContactModel? contact;
  final int? index;
  final Function(ContactModel?)? onPressed;
  final VoidCallback? onDelete;

  const ContactWidget({
    Key? key,
    this.contact,
    this.index,
    this.onPressed,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!(contact);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            // margin: const EdgeInsets.all(10),
            // height: Get.,
            child: Row(
              children: [
                ///Avatar
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    TextAvatar.getInitials('${contact?.firstName ?? ''}'),
                    style: const TextStyle(
                        color: GlobalColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    /// persion name
                    // if (contact!.type == 'supplier') ...[
                    //   CustomRichText(
                    //     title: 'customer_name'.tr,
                    //     value: ' ${contact?.getFullName() ?? ''}',
                    //   ),
                    // ],

                    /// name
                    CustomRichText(
                      // title: contact!.type == 'supplier'
                      //     ? 'suppliers'.tr
                      //     : 'customers'.tr,
                      value: '${contact?.name ?? ''}',
                    ),

                    const SizedBox(
                      height: 3,
                    ),

                    /// phone number
                    if (contact!.mobile != null) ...[
                      Text(
                        '${contact!.mobile}',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
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
                    Icons.local_atm_rounded,
                    color: GlobalColors.primaryColor,
                    size: 20,
                  ))),
        ],
      ),
    );
  }
}
