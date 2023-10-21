import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/cubit/payment_accounts_cubit.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/widgets/account_type_widget.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/widgets/payment_account_widget.dart';
import 'package:di4l_pos/widgets/custom_tabbar.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PaymentAccountsMobileScreen extends StatefulWidget {
  static BlocProvider<PaymentAccountsCubit> provider() {
    return BlocProvider(
      create: (context) => PaymentAccountsCubit(),
      child: PaymentAccountsMobileScreen(),
    );
  }

  const PaymentAccountsMobileScreen({Key? key}) : super(key: key);

  @override
  State<PaymentAccountsMobileScreen> createState() =>
      _PaymentAccountsMobileScreenState();
}

class _PaymentAccountsMobileScreenState
    extends State<PaymentAccountsMobileScreen> with AfterLayoutMixin {
  final TextEditingController _txtSearch = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  bool _showSearch = false;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<PaymentAccountsCubit>().getPaymentAccounts();
    context.read<PaymentAccountsCubit>().getAccountTypes();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _globalKey,
        backgroundColor: GlobalColors.bgColor,
        appBar: AppBar(
          toolbarHeight: 40,
          centerTitle: true,
          title: Text('payment_account'.tr,
              style: GlobalStyles.titilliumRegular(context).copyWith(
                fontSize: 16,
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: true,
          elevation: 0,
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
                  .read<PaymentAccountsCubit>()
                  .searchPaymentAccount(searchText: value?.trim() ?? '');
              _globalKey.currentContext!
                  .read<PaymentAccountsCubit>()
                  .searchAccountType(searchText: value?.trim() ?? '');
            },
          ),
        ),
        body: TabBarView(
          children: [
            AccountScreen(scrollController: _scrollController),
            AccountTypesScreen(scrollController: _scrollController)
          ],
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
                CustomTabBar(title: 'accounts'.tr),
                CustomTabBar(title: 'account_types'.tr),
              ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    Key? key,
    required ScrollController scrollController,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalColors.bgColor,
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<PaymentAccountsCubit, PaymentAccountsState>(
                  builder: (context, state) {
                    final paymentAccounts = state.data!.paymentAccounts;
                    return paymentAccounts.isNotEmpty
                        ? ListView.separated(
                            controller: _scrollController,
                            itemBuilder: (context, index) {
                              return PaymentAccountWidget(
                                paymentAccount:
                                    paymentAccounts.elementAt(index),
                              );
                            },
                            itemCount: paymentAccounts.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox.shrink(),
                          )
                        : const NoDataWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: ScrollingFabAnimatedCustom(
            width: 200,
            height: 48,
            text: 'add_payment_account'.tr,
            iconData: Icons.add,
            scrollController: _scrollController,
            onPress: () {
              navigator!.pushNamed(
                RouteGenerator.addPaymentAccountScreen,
                arguments: {
                  'ADD_PAYMENT_ACCOUNT_TYPE': AddType.NEW,
                },
              ).whenComplete(() =>
                  context.read<PaymentAccountsCubit>().getPaymentAccounts());
            }));
  }
}

class AccountTypesScreen extends StatelessWidget {
  const AccountTypesScreen({
    Key? key,
    required ScrollController scrollController,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalColors.bgColor,
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<PaymentAccountsCubit, PaymentAccountsState>(
                  builder: (context, state) {
                    final accountTypes = state.data!.accountTypes;
                    return accountTypes.isNotEmpty
                        ? ListView.separated(
                            controller: _scrollController,
                            itemBuilder: (context, index) {
                              return AccountTypeWidget(
                                accType: accountTypes.elementAt(index),
                                accountTypes: accountTypes,
                                onDelete: () => context
                                    .read<PaymentAccountsCubit>()
                                    .deleteAccountType(
                                        accountTypes.elementAt(index).id!),
                              );
                            },
                            itemCount: accountTypes.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox.shrink(),
                          )
                        : const NoDataWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: ScrollingFabAnimatedCustom(
            width: 200,
            height: 48,
            text: 'add_account_type'.tr,
            iconData: Icons.add,
            scrollController: _scrollController,
            onPress: () {
              navigator!.pushNamed(
                RouteGenerator.addAccountTypeScreen,
                arguments: {
                  'ADD_ACCOUNT_TYPE': AddType.NEW,
                },
              ).whenComplete(
                  () => context.read<PaymentAccountsCubit>().getAccountTypes());
            }));
  }
}
