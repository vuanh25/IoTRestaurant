import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_referral_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_withdraw_request_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/cubit/affiliate_marketing_cubit.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_referral_user_widget.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_referralby_user_widget.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_user_widget.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_withdraw_request_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';


class AffiliateWithdrawRequestScreen extends StatefulWidget {

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AffiliateMarketingCubit>(
          create: (context) => AffiliateMarketingCubit(),
        ),
      ],
      child: AffiliateWithdrawRequestScreen(),
    );
  }

  AffiliateWithdrawRequestScreen({Key? key}) : super(key: key);

  @override
  State<AffiliateWithdrawRequestScreen> createState() => _AffiliateWithdrawRequestScreenState();
}

class _AffiliateWithdrawRequestScreenState extends State<AffiliateWithdrawRequestScreen> with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  List<AffiliateWithdrawRequest> affiliateWithdrawRequestList = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<AffiliateMarketingCubit>().getAffiliateWithdrawRequest();
  }

  // void setupScrollController(BuildContext context) {
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.atEdge) {
  //       if (_scrollController.position.pixels != 0) {
  //         context.read<AffiliateMarketingCubit>().getAffiliateWithdrawRequest();
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
          await context.read<AffiliateMarketingCubit>().getAffiliateWithdrawRequest();
        },
        child: Column(
          children: [
            const SizedBox(height: 8),
            BlocBuilder<AffiliateMarketingCubit, AffiliateMarketingState>(
                  buildWhen: (previous, current) =>
                      previous.data!.withdrawRequestsStatus != current.data!.withdrawRequestsStatus,
                  builder: (context, state) {
                    affiliateWithdrawRequestList = state.data?.affiliatewithdrawRequests ?? [];
                    switch (state.data!.withdrawRequestsStatus) {
                      case StatusType.loading:
                        return Container(
                          margin: const EdgeInsets.only(top: 100),
                          child: const AppLoadingWidget(
                            widget: null,
                            text: 'Loading...',
                          ),
                        );
                      case StatusType.loaded:
                        return affiliateWithdrawRequestList.isNotEmpty
                            ? Expanded(
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  controller: _scrollController,
                                  itemBuilder: (context, index) {
                                    if (index < affiliateWithdrawRequestList.length) {
                                      return AffiliateWithdrawRequestWidget(
                                        withdrawRequest: affiliateWithdrawRequestList.elementAt(index),
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
                                  itemCount: affiliateWithdrawRequestList.length,
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
