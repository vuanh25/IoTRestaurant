// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_referral_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/helpers.dart';

class AffiliateReferralUserWidget extends StatefulWidget {
  /// MARK: - Initials;
  final AffiliateReferralUser? referralUser;

  const AffiliateReferralUserWidget({
    Key? key,
    this.referralUser,
  }) : super(key: key);

  @override
  State<AffiliateReferralUserWidget> createState() => _AffiliateReferralUserWidgetState();
}

class _AffiliateReferralUserWidgetState extends State<AffiliateReferralUserWidget> {
  bool _showReferralUsers = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 15, right: 48, top: 15, bottom: 15),
            child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomRichText(
                        value: '${widget.referralUser?.fullName!.trim()}',
                      ),
                
                      const SizedBox(
                        width: 8,
                      ),
                
                      Text(
                        '(${widget.referralUser!.email ?? ''})',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
);
  }
}
