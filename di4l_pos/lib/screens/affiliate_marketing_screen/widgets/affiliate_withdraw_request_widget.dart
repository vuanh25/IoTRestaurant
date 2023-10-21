// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'dart:math';

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_referral_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_withdraw_request_response.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/cubit/affiliate_marketing_cubit.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_referral_user_widget.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../common/helpers.dart';

class AffiliateWithdrawRequestWidget extends StatefulWidget {
  /// MARK: - Initials;
  final AffiliateWithdrawRequest? withdrawRequest;

  const AffiliateWithdrawRequestWidget({
    Key? key,
    this.withdrawRequest,
  }) : super(key: key);

  @override
  State<AffiliateWithdrawRequestWidget> createState() => _AffiliateWithdrawRequestWidgetState();
}

class _AffiliateWithdrawRequestWidgetState extends State<AffiliateWithdrawRequestWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Stack(
          children: [
            Column(
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomRichText(
                        value: '${widget.withdrawRequest!.fullName!.trim()}',
                      ),
                  
                      widget.withdrawRequest!.status! != 0
                        ?Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: widget.withdrawRequest!.status == 1 ? GlobalColors.kGreenTextColor: GlobalColors.redColor,
                            border: Border.all(
                                color: widget.withdrawRequest!.status == 1 ? GlobalColors.kGreenTextColor: GlobalColors.redColor,
                              ),
                            borderRadius: const BorderRadius.all(Radius.circular(8))
                          ),
                          child: Text(
                            widget.withdrawRequest!.status == 2 ? 'rejected'.tr : 'paid'.tr,
                            style: const TextStyle(
                              color: GlobalColors.whiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : Row(
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              context.read<AffiliateMarketingCubit>().changeWithdrawRequestStatus(requestId: widget.withdrawRequest!.id!, type: 'payment');
                            }, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              maximumSize: const Size(120, 60),
                              minimumSize: const Size(8, 6)
                            ),
                            child: Text(
                                'payment'.tr,
                                style: const TextStyle(
                                  color: GlobalColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),

                          const SizedBox(width: 8),

                          ElevatedButton(
                            onPressed: (){
                              context.read<AffiliateMarketingCubit>().changeWithdrawRequestStatus(requestId: widget.withdrawRequest!.id!, type: 'rejected');
                            }, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: GlobalColors.redColor,
                              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              maximumSize: Size(80, 60),
                              minimumSize: Size(8, 6)
                            ),
                            child: Text(
                                'reject'.tr,
                                style: const TextStyle(
                                  color: GlobalColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),
                        ]
                      )
                    ],
                  ),

                  if(widget.withdrawRequest!.status! !=0) const SizedBox(height: 8),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '${widget.withdrawRequest!.createdAt ?? ''}',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                  
                      Text(
                        Helpers.formatCurrency(price: widget.withdrawRequest!.amount.toString()),
                        style: const TextStyle(color: GlobalColors.primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
              ],
            ),
    
            // Positioned(
            //     top: 20,
            //     right: 40,
            //     child: Container(
            //         height: 10,
            //         width: 10,
            //         child: Icon(
            //           Icons.arrow_drop_down_outlined,
            //           color: GlobalColors.primaryColor,
            //           size: 36,
            //         )
            //       )
            //     ),
          ],
      ),
    );
  }
}
