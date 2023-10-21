import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/invoice_screen/sub_screens/invoice_layout_screen/invoice_layout_screen.dart';
import 'package:di4l_pos/screens/invoice_screen/sub_screens/invoice_schema_screen/invoice_schema_screen.dart';
import 'package:di4l_pos/screens/location_screen/cubit/invoice_cubit.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/location_details_screen/cubit/invoice_layout_cubit.dart';
import 'package:di4l_pos/screens/order_screen/widgets/custom_tabbar.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InvoiceCubit(),
        ),
        BlocProvider(
          create: (context) => InvoiceLayoutCubit(),
        ),
      ],
      child: const InvoiceScreen(),
    );
  }

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> with AfterLayoutMixin {
  bool isSearch = false;
  int initialIndex = 0;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<InvoiceCubit>().getSchemasList();
    context.read<InvoiceLayoutCubit>().getLayoutsList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: initialIndex,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: const TabBarView(
          children: [
            InvoiceSchemaScreen(),
            InvoiceLayoutScreen(),
          ],
        ),
      ),
    );
  }

  CustomAppBar buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: 'invoidceForm'.tr,
      textColor: Colors.black,
      automaticallyImplyLeading: true,
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            isSearch = !isSearch;
            context.read<InvoiceCubit>().isSearching(isSearch);
          },
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        )
      ],
      backgroundColor: GlobalColors.bgWebColor,
      bottom: TabBar(
        labelColor: GlobalColors.primaryColor,
        unselectedLabelColor: GlobalColors.kGreyTextColor,
        indicatorColor: GlobalColors.primaryColor,
        isScrollable: true,
        indicatorWeight: 1,
        tabs: [
          CustomTabBar(
            title: 'invoice_schemes'.tr,
          ),
          CustomTabBar(
            title: 'invoice_layouts'.tr,
          ),
        ],
      ),
    );
  }
}
