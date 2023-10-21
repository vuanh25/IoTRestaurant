import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/cubit/affiliate_marketing_cubit.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/subscreen/affiliate_user_detail/add_payment_screen.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_user_payment_widget.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_user_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/widgets/custom_rich_text.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/common/dimensions.dart';


class AffiliateUserDetailScreen extends StatefulWidget {
  AffiliateUser user;

  static MultiBlocProvider provider({required AffiliateUser user}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AffiliateMarketingCubit>(
          create: (context) => AffiliateMarketingCubit(),
        ),
      ],
      child: AffiliateUserDetailScreen(user: user),
    );
  }

  AffiliateUserDetailScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<AffiliateUserDetailScreen> createState() => _AffiliateUserDetailScreenState();
}

class _AffiliateUserDetailScreenState extends State<AffiliateUserDetailScreen> with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<AffiliateMarketingCubit>().getAffiliatePaymentHistory(id: widget.user.id!);
  }

  void setupScrollController(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          context.read<AffiliateMarketingCubit>().getAffiliatePaymentHistory(id: widget.user.id!);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // setupScrollController(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 23),
        elevation: 0.5,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'affiliate_user_detail'.tr,
            style: GlobalStyles.normalStyle.copyWith(
              color: GlobalColors.primaryWebColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius:
                    BorderRadius.vertical(
                      top: Radius.circular(15.0)
                  )
                ),
                context: context,
                isScrollControlled: true,
                isDismissible: true,
                builder: (BuildContext context) {
                  return AddAffiliatePaymentScreen.provider(user: widget.user);
                },
              );
            }, 
            icon: const Icon(Icons.payment, color: GlobalColors.primaryColor) 
          )
        ],
      ),
      backgroundColor: GlobalColors.bgColor,
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<AffiliateMarketingCubit>().getAffiliatePaymentHistory(id: widget.user.id!);
        },
        child: Column(
          children: [
            const SizedBox(height: 8),
            _buildAffiliateUserInfo(),

            const SizedBox(height: 8),

            Container(
              color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Text(
                    'payment_history'.tr,
                    style: const TextStyle(
                      fontSize: 15,
                      color: GlobalColors
                          .blackColor,
                      fontWeight:
                          FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            BlocBuilder<AffiliateMarketingCubit, AffiliateMarketingState>(
                  buildWhen: (previous, current) =>
                      previous.data!.status != current.data!.status,
                  builder: (context, state) {
                    final affiliatePaymentHistory = state.data!.affiliatePayments;
                    switch (state.data!.status) {
                      case StatusType.loading:
                        return Container(
                          margin: const EdgeInsets.only(top: 100),
                          child: const AppLoadingWidget(
                            widget: null,
                            text: 'Loading...',
                          ),
                        );
                      case StatusType.loaded:
                        return affiliatePaymentHistory.isNotEmpty
                            ? Expanded(
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  controller: _scrollController,
                                  itemBuilder: (context, index) {
                                    if (index < affiliatePaymentHistory.length) {
                                      return AffiliateUserPaymentWidget(
                                        payment: affiliatePaymentHistory.elementAt(index),
                                      );
                                    } else {
                                      Future.delayed(const Duration(seconds: 5), () {
                                        _scrollController.jumpTo(
                                            _scrollController.position.maxScrollExtent);
                                      });
                                      return const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child:
                                            Center(child: CircularProgressIndicator()),
                                      );
                                    }
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox.shrink(),
                                  itemCount: affiliatePaymentHistory.length,
                                ),
                            )
                            : const NoDataWidget();
                      case StatusType.error:
                        return Container(
                          margin: const EdgeInsets.only(top: 100),
                          child: const Error404Widget()
                        );
                      default:
                        return const SizedBox.shrink();
                    }
                  }),
          ],
        ),
      ),
    );
  }

  Container _buildAffiliateUserInfo(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        color: GlobalColors.whiteColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'fullname'.tr,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.user.fullName!,
                ),
              ],
            ),
      
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'email'.tr,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.user.email!,
                ),
              ],
            ),
      
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'referral_by'.tr,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.user.referral != null ? widget.user.referral!.email!: 'no_referral'.tr,
                ),
              ],
            ),
      
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'affiliate_amount'.tr,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  Helpers.formatCurrency(price: widget.user.affiliateAmount!.toString()),
                  style: const TextStyle(color: GlobalColors.primaryColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
