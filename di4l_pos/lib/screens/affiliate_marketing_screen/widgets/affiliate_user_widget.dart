// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/helpers.dart';

class AffiliateUserWidget extends StatelessWidget {
  /// MARK: - Initials;
  final AffiliateUser? user;
  final int? index;
  final Function(AffiliateUser)? onPressed;

  const AffiliateUserWidget({
    Key? key,
    this.user,
    this.index,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!(user!);
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
                Container(
                  width: Get.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CustomRichText(
                        value: '${user?.fullName!.trim()}',
                      ),
                
                      const SizedBox(
                        height: 3,
                      ),
                
                      Text(
                        '${user!.email ?? ''}',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  width: 20,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'affiliate_amount'.tr,
                    ),

                    const SizedBox(
                      height: 3,
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: Text(
                        Helpers.formatCurrency(price: user!.affiliateAmount!.toString()),
                        style: const TextStyle(color: GlobalColors.primaryColor, fontWeight: FontWeight.bold),
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
