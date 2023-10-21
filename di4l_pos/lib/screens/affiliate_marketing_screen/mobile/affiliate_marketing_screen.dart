// ignore_for_file: unused_field, camel_case_types

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/cubit/affiliate_marketing_cubit.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/mobile/affiliate_referral_users_screen_mobile.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/mobile/affiliate_users_screen_mobile.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/mobile/affiliate_withdraw_request_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/customer_group/cubit/customer_group_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/customer_group/mobile_and_table/customer_group_moble_and_table_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/mobile/tab_customers_mobile_screen/all_customers_mobile_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/mobile/suppliers_mobile_screen.dart';
import 'package:di4l_pos/widgets/custom_tabbar.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AffiliateMarketingScreenMobile extends StatefulWidget {
  int tabIndex = 0;

  static MultiBlocProvider provider({required int tabIndex}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AffiliateMarketingCubit>(
          create: (context) => AffiliateMarketingCubit(),
        ),
      ],
      child: AffiliateMarketingScreenMobile(tabIndex: tabIndex),
    );
  }

   AffiliateMarketingScreenMobile({Key? key, required this.tabIndex}) : super(key: key);

  @override
  State<AffiliateMarketingScreenMobile> createState() => AffiliateMarketingScreenMobileState();
}

class AffiliateMarketingScreenMobileState extends State<AffiliateMarketingScreenMobile> with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _txtSearch = TextEditingController();

  bool _showSearch = false;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {

  }

  @override
  void dispose() {
    _txtSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: widget.tabIndex,
      length: 3,
      child: Scaffold(
        key: _globalKey,
        backgroundColor: GlobalColors.bgColor,
        appBar: CustomAppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          title: 'affiliate_marketing'.tr,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _showSearch = !_showSearch;
                  _txtSearch.clear();
                });
              },
              icon: Icon(
                _showSearch ? Icons.clear : Icons.search,
                color: Colors.black,
              ),
            ),
          ],
          bottom: buildBottomAppBar(
            showSearch: _showSearch,
            txtSearch: _txtSearch,
            globalKey: _globalKey,
            onChange: (String? value) {
             
            },
          ),
        ),
        body: TabBarView(children: <Widget>[
          AffiliateUserScreen.provider(),
          AffiliateReferralUserScreen.provider(),
          AffiliateWithdrawRequestScreen.provider(),
        ]),
      ),
    );
  }
}

class buildBottomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const buildBottomAppBar(
      {Key? key,
      required bool showSearch,
      required TextEditingController txtSearch,
      required GlobalKey<ScaffoldState> globalKey,
      required Function(String?)? onChange})
      : _showSearch = showSearch,
        _txtSearch = txtSearch,
        _globalKey = globalKey,
        _onChange = onChange,
        super(key: key);

  final bool _showSearch;
  final TextEditingController _txtSearch;
  final GlobalKey<ScaffoldState> _globalKey;
  final Function(String?)? _onChange;

  @override
  Widget build(BuildContext context) {
    return _showSearch
        ? SearchWidgetContact(
            controller: _txtSearch, hintText: 'search'.tr, onChange: _onChange)
        : TabBar(
            labelColor: GlobalColors.primaryColor,
            unselectedLabelColor: GlobalColors.kGreyTextColor,
            indicatorColor: GlobalColors.primaryColor,
            isScrollable: true,
            indicatorWeight: 1,
            physics: ClampingScrollPhysics(),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
                CustomTabBar(title: 'affiliate_users'.tr),
                CustomTabBar(title: 'referral_users'.tr),
                CustomTabBar(title: 'withdrwa_request'.tr),
              ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}