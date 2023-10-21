// ignore_for_file: unused_field, camel_case_types

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/mobile/tab_customers_mobile_screen/all_customers_mobile_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/mobile/tab_customers_mobile_screen/not_delivery_customers_mobile_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/mobile/tab_customers_mobile_screen/payable%20_customers_mobile_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/mobile/tab_customers_mobile_screen/receivables_customers_mobile_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/widgets/custom_tabbar.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CustomersMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<CustomersCubit> provider() {
    return BlocProvider(
      create: (context) => CustomersCubit(),
      child: const CustomersMobileScreen(),
    );
  }

  const CustomersMobileScreen({Key? key}) : super(key: key);

  @override
  State<CustomersMobileScreen> createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersMobileScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _txtSearch = TextEditingController();

  bool _showSearch = false;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // context.read<CustomersCubit>().getContacts();
    // context.read<CustomersCubit>().getTransactions();
  }

  @override
  void dispose() {
    _txtSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 0,
      length: 4,
      child: Scaffold(
        key: _globalKey,
        backgroundColor: GlobalColors.bgColor,
        appBar: CustomAppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          title: 'customers'.tr,
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
              _globalKey.currentContext!
                  .read<CustomersCubit>()
                  .searchCustomer(searchText: value?.trim() ?? '');
              setState(() {});
            },
          ),
        ),
        body: TabBarView(children: <Widget>[
          // AllCustomers(
          //     scrollController: _scrollController, globalKey: _globalKey),
          // NotDeliveryCustomers(
          //     scrollController: _scrollController, globalKey: _globalKey),
          // ReceivablesCustomers(
          //     scrollController: _scrollController, globalKey: _globalKey),
          PayableCustomers(
              scrollController: _scrollController, globalKey: _globalKey)
        ]),
        floatingActionButton: ScrollingFabAnimatedCustom(
          width: 200,
          height: 48,
          text: 'add_customer'.tr,
          iconData: Icons.person_add_alt_1,
          scrollController: _scrollController,
          onPress: () {
            navigator!.pushNamed(
              RouteGenerator.addContactScreen,
              arguments: {
                'ADD_CONTACT_TYPE': AddContactType.CUSTOMER,
              },
            ).whenComplete(() => _globalKey.currentContext!
                .read<CustomersCubit>()
                .getContacts());
          },
        ),
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
            controller: _txtSearch,
            hintText: 'T??m ki???m kh??ch h??ng',
            onChange: _onChange)
        : TabBar(
            labelColor: GlobalColors.primaryColor,
            unselectedLabelColor: GlobalColors.kGreyTextColor,
            indicatorColor: GlobalColors.primaryColor,
            isScrollable: true,
            indicatorWeight: 1,
            // labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            // ignore: prefer_const_constructors
            physics: ClampingScrollPhysics(),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
                CustomTabBar(title: 'all'.tr),
                CustomTabBar(title: 'Ch??a giao'.tr),
                CustomTabBar(title: 'Ph???i thu'.tr),
                CustomTabBar(title: 'Ph???i tr???'.tr),
              ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
