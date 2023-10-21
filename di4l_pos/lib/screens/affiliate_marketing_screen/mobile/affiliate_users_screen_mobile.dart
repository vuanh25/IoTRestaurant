import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/cubit/affiliate_marketing_cubit.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/widgets/affiliate_user_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';


class AffiliateUserScreen extends StatefulWidget {

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AffiliateMarketingCubit>(
          create: (context) => AffiliateMarketingCubit(),
        ),
      ],
      child: AffiliateUserScreen(),
    );
  }

  AffiliateUserScreen({Key? key}) : super(key: key);

  @override
  State<AffiliateUserScreen> createState() => _AffiliateUserScreenState();
}

class _AffiliateUserScreenState extends State<AffiliateUserScreen> with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _txtSearch = TextEditingController();

  // bool _showSearch = false;
  List<AffiliateUser> affiliateUserList = [];
  List<AffiliateUser> affiliateUserListFilted = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<AffiliateMarketingCubit>().getAffiliateUsers();
  }

  // void setupScrollController(BuildContext context) {
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.atEdge) {
  //       if (_scrollController.position.pixels != 0) {
  //         context.read<AffiliateMarketingCubit>().getAffiliateUsers();
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
          await context.read<AffiliateMarketingCubit>().getAffiliateUsers();
        },
        child: Column(
          children: [
            const SizedBox(height: 8),
            // Visibility(
            //   visible: _showSearch,
            //   child: Container(
            //     margin: const EdgeInsets.only(top: 12, bottom: 14),
            //     child: SearchWidgetContact(
            //       controller: _txtSearch,
            //       hintText: 'search'.tr,
            //       onChange: (String? value) {
            //         setState(() {
            //           if(value!=null){
            //             affiliateUserListFilted = affiliateUserList.where((e) => e.fullName!.contains(value)).toList();
            //           }
            //         });
            //       },
            //     ),
            //   ),
            // ),
            BlocBuilder<AffiliateMarketingCubit, AffiliateMarketingState>(
                  buildWhen: (previous, current) =>
                      previous.data!.status != current.data!.status,
                  builder: (context, state) {
                    affiliateUserList = state.data?.affiliateUsers ?? [];
                    if(_txtSearch.text.isEmpty) affiliateUserListFilted = affiliateUserList;
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
                        return affiliateUserListFilted.isNotEmpty
                            ? Expanded(
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  controller: _scrollController,
                                  itemBuilder: (context, index) {
                                    if (index < affiliateUserListFilted.length) {
                                      return AffiliateUserWidget(
                                        index: index + 1,
                                        user: affiliateUserListFilted.elementAt(index),
                                        onPressed: (user){
                                          navigator!.pushNamed(
                                            RouteGenerator.affiliateUserDetailScreen,
                                            arguments: {
                                              'user': user
                                            },
                                          );
                                        },
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
                                  itemCount: affiliateUserListFilted.length,
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
