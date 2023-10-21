// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'dart:math';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_referral_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_referral_user_widget.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/helpers.dart';

class AffiliateReferralByUserWidget extends StatefulWidget {
  /// MARK: - Initials;
  final AffiliateReferralUser? user;
  final List<AffiliateReferralUser>? referralUsers;

  const AffiliateReferralByUserWidget({
    Key? key,
    this.user,
    this.referralUsers
  }) : super(key: key);

  @override
  State<AffiliateReferralByUserWidget> createState() => _AffiliateReferralByUserWidgetState();
}

class _AffiliateReferralByUserWidgetState extends State<AffiliateReferralByUserWidget> {
  bool _showReferralUsers = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showReferralUsers = !_showReferralUsers;
        });
      },
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CustomRichText(
                            value: '${widget.user?.fullName!.trim()}',
                          ),
                    
                          const SizedBox(
                            height: 3,
                          ),
                    
                          Text(
                            '${widget.user!.email ?? ''}',
                            style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              _showReferralUsers
              ? Container(
                  padding: EdgeInsets.only(left: 24),
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          if (index < widget.referralUsers!.length) {
                            return AffiliateReferralUserWidget(
                              referralUser: widget.referralUsers!.elementAt(index),
                            );
                          } 
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox.shrink(),
                        itemCount: widget.referralUsers!.length,
                      ),
                    ],
                  ),
                )
              : Container()
            ],
          ),

          if(widget.referralUsers!.isNotEmpty)
          Positioned(
              top: 20,
              right: 40,
              child: Container(
                  height: 10,
                  width: 10,
                  child: Icon(
                    _showReferralUsers ? Icons.arrow_drop_up_outlined : Icons.arrow_drop_down_outlined,
                    color: GlobalColors.primaryColor,
                    size: 36,
                  )
                )
              ),
        ],
      ),
    );
  }
}
