import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_referral_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/cubit/affiliate_marketing_cubit.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_referral_user_widget.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_referralby_user_widget.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_user_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';


class AffiliateReferralUserScreen extends StatefulWidget {

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AffiliateMarketingCubit>(
          create: (context) => AffiliateMarketingCubit(),
        ),
      ],
      child: AffiliateReferralUserScreen(),
    );
  }

  AffiliateReferralUserScreen({Key? key}) : super(key: key);

  @override
  State<AffiliateReferralUserScreen> createState() => _AffiliateReferralUserScreenState();
}

class _AffiliateReferralUserScreenState extends State<AffiliateReferralUserScreen> with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  List<AffiliateReferralUser> affiliateReferralUserList = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<AffiliateMarketingCubit>().getAffiliateReferralUsers();
  }

  // void setupScrollController(BuildContext context) {
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.atEdge) {
  //       if (_scrollController.position.pixels != 0) {
  //         context.read<AffiliateMarketingCubit>().getAffiliateReferralUsers();
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // setupScrollController(context);
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<AffiliateMarketingCubit>().getAffiliateReferralUsers();
        },
        child: Column(
          children: [
            const SizedBox(height: 8),
            BlocBuilder<AffiliateMarketingCubit, AffiliateMarketingState>(
                  buildWhen: (previous, current) =>
                      previous.data!.referralUsersStatus != current.data!.referralUsersStatus,
                  builder: (context, state) {
                    affiliateReferralUserList = state.data?.affiliateReferralUsers ?? [];
                    switch (state.data!.referralUsersStatus) {
                      case StatusType.loading:
                        return Container(
                          margin: const EdgeInsets.only(top: 100),
                          child: const AppLoadingWidget(
                            widget: null,
                            text: 'Loading...',
                          ),
                        );
                      case StatusType.loaded:
                        return affiliateReferralUserList.isNotEmpty
                            ? Expanded(
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  controller: _scrollController,
                                  itemBuilder: (context, index) {
                                    if (index < affiliateReferralUserList.length) {
                                      return AffiliateReferralByUserWidget(
                                        user: affiliateReferralUserList.elementAt(index),
                                        referralUsers: affiliateReferralUserList
                                          .where((e) => e.referralBy == affiliateReferralUserList.elementAt(index).id).toList(),
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
                                  itemCount: affiliateReferralUserList.length,
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
}
