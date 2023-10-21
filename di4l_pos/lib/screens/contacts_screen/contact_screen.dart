// ignore_for_file: unused_field, camel_case_types

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
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

class ContactsScreen extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SuppliersCubit>(
          create: (context) => SuppliersCubit(),
        ),
        BlocProvider<CustomersCubit>(
          create: (context) => CustomersCubit(),
        ),
        BlocProvider<CustomerGroupCubit>(
          create: (context) => CustomerGroupCubit(),
        ),
      ],
      child: const ContactsScreen(),
    );
  }

  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _txtSearch = TextEditingController();

  bool _showSearch = false;
  int tabIndex = 0;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // context.read<CustomersCubit>().getContacts();
    // context.read<SuppliersCubit>().getContacts();
  }

  @override
  void dispose() {
    _txtSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tabIndex,
      length: 3,
      child: Scaffold(
        key: _globalKey,
        backgroundColor: GlobalColors.bgColor,
        appBar: CustomAppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          title: 'contacts'.tr,
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
              _globalKey.currentContext!
                  .read<SuppliersCubit>()
                  .searchSupplier(searchText: value?.trim() ?? '');
              _globalKey.currentContext!
                  .read<CustomerGroupCubit>()
                  .searchCustomerGroup(searchText: value?.trim() ?? '');
              setState(() {});
            },
          ),
        ),
        body: TabBarView(children: <Widget>[
          AllCustomers(globalKey: _globalKey),
          SuppliersMobileScreen(globalKey: _globalKey),
          CustomerGroupMobileAndTabletScreen(globalKey: _globalKey)
        ]),
        // floatingActionButton: tabIndex == 2
        //     ? ScrollingFabAnimatedCustom(
        //         width: 200,
        //         height: 48,
        //         text: 'add_customer'.tr,
        //         iconData: Icons.person_add_alt_1,
        //         scrollController: _scrollController,
        //         onPress: () {
        //           navigator!.pushNamed(
        //             RouteGenerator.addContactScreen,
        //             arguments: {
        //               'ADD_CONTACT_TYPE': AddContactType.CUSTOMER,
        //             },
        //           ).whenComplete(() => _globalKey.currentContext!
        //               .read<CustomersCubit>()
        //               .getContacts());

        //           // IconButton(
        //           //         onPressed: () => navigator!.pushNamed(
        //           //           RouteGenerator.addCustomerGroupScreen,
        //           //           arguments: {
        //           //             'ADD_CUSTOMER_GROUP_TYPE': AddType.NEW,
        //           //           },
        //           //         ).whenComplete(() => _globalKey.currentContext!
        //           //             .read<CustomerGroupCubit>()
        //           //             .getCustomerGroups()),
        //           //         icon: const Icon(
        //           //           Icons.add,
        //           //           color: Colors.white,
        //           //         ),
        //           //       )
        //         },
        //       )
        //     : ScrollingFabAnimatedCustom(
        //         width: 200,
        //         height: 48,
        //         text: 'add_group'.tr,
        //         iconData: Icons.person_add_alt_1,
        //         scrollController: _scrollController,
        //         onPress: () {
        //           navigator!.pushNamed(
        //             RouteGenerator.addCustomerGroupScreen,
        //             arguments: {
        //               'ADD_CUSTOMER_GROUP_TYPE': AddType.NEW,
        //             },
        //           ).whenComplete(() => _globalKey.currentContext!
        //               .read<CustomerGroupCubit>()
        //               .getCustomerGroups());
        //         }),
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
            // labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            // ignore: prefer_const_constructors
            physics: ClampingScrollPhysics(),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
                CustomTabBar(title: 'customers'.tr),
                CustomTabBar(title: 'suppliers'.tr),
                CustomTabBar(title: 'customer_group'.tr),
              ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
