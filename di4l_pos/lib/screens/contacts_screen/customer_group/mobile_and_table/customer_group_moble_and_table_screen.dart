// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/customer-group/response/customer_group_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/customer_group/cubit/customer_group_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/customer_group/widgets/customer_group_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CustomerGroupMobileAndTabletScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _globalKey;
  // // / MARK: - Initials;
  // static BlocProvider<CustomerGroupCubit> provider({
  //   required ScrollController _scrollController,
  // required GlobalKey<ScaffoldState> _globalKey, required GlobalKey<ScaffoldState> globalKey,
  // }) {
  //   return BlocProvider(
  //     create: (context) => CustomerGroupCubit(),
  //     child:  CustomerGroupMobileAndTabletScreen(_scrollController:_scrollController,_globalKey:_globalKey

  //     ),
  //   );
  // }

  const CustomerGroupMobileAndTabletScreen({
    Key? key,
    required GlobalKey<ScaffoldState> globalKey,
  })  : _globalKey = globalKey,
        super(key: key);

  @override
  State<CustomerGroupMobileAndTabletScreen> createState() => _CustomerGroupMobileAndTabletScreenState();
}

class _CustomerGroupMobileAndTabletScreenState extends State<CustomerGroupMobileAndTabletScreen>
    with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();

  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CustomerGroupCubit>().getCustomerGroups();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      body: Container(
        child: BlocBuilder<CustomerGroupCubit, CustomerGroupState>(
            buildWhen: (previous, current) =>
                previous.data!.status != current.data!.status,
            builder: (context, state) {
              final _customerGroups = state.data?.customerGroups;
              switch (state.data!.status) {
                case StatusType.loading:
                  return const AppLoadingWidget(
                    widget: null,
                    text: 'Loading...',
                  );
                case StatusType.loaded:
                  return _customerGroups!.isNotEmpty
                      ? ListView.separated(
                          controller: _scrollController,
                          itemBuilder: (context, index) => CustomerGroupWidget(
                            index: index + 1,
                            customerGroup: _customerGroups.elementAt(index),
                            onPressed:
                                (CustomerGroupModel? customerGroupModel) =>
                                    navigator!.pushNamed(
                              RouteGenerator.addCustomerGroupScreen,
                              arguments: {
                                'ADD_CUSTOMER_GROUP_TYPE': AddType.UPDATE,
                                'CUSTOMER_GROUP_MODEL': customerGroupModel,
                              },
                            ).whenComplete(() => widget
                                        ._globalKey.currentContext!
                                        .read<CustomerGroupCubit>()
                                        .getCustomerGroups()),
                            onDelete: () => widget._globalKey.currentContext!
                                .read<CustomerGroupCubit>()
                                .delete(_customerGroups.elementAt(index).id!),
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox.shrink(),
                          itemCount: _customerGroups.length,
                        )
                      : const NoDataWidget();
                case StatusType.error:
                  return const Error404Widget();
                default:
                  return const SizedBox.shrink();
              }
            }),
      ),
      floatingActionButton: ScrollingFabAnimatedCustom(
          width: 160,
          height: 48,
          text: 'add_customer_group'.tr,
          iconData: Icons.group,
          scrollController: _scrollController,
          onPress: () {
            navigator!.pushNamed(
              RouteGenerator.addCustomerGroupScreen,
              arguments: {
                'ADD_CUSTOMER_GROUP_TYPE': AddType.NEW,
              },
            ).whenComplete(() => widget._globalKey.currentContext!
                .read<CustomerGroupCubit>()
                .getCustomerGroups());
          }),
    );

    // return Scaffold(
    //   key: _globalKey,
    //   appBar: CustomAppBar(
    //     title: 'customer_group'.tr,
    //     actions: [
    //       IconButton(
    //         onPressed: () => navigator!.pushNamed(
    //           RouteGenerator.addCustomerGroupMobileAndTabletScreen,
    //           arguments: {
    //             'ADD_CUSTOMER_GROUP_TYPE': AddType.NEW,
    //           },
    //         ).whenComplete(() => _globalKey.currentContext!
    //             .read<CustomerGroupCubit>()
    //             .getCustomerGroups()),
    //         icon: const Icon(
    //           Icons.add,
    //           color: Colors.white,
    //         ),
    //       )
    //     ],
    //   ),
    //   body: Column(
    //     children: [
    //       /// Search
    //       SearchWidget(
    //         hintText: 'customer_group'.tr,
    //         isShowFilter: false,
    //         onChange: (String? value) {
    //           _globalKey.currentContext!
    //               .read<CustomerGroupCubit>()
    //               .searchCustomerGroup(searchText: value ?? '');
    //         },
    //       ),

    //       /// Suppliers
    //       Expanded(
    //         child: BlocBuilder<CustomerGroupCubit, CustomerGroupState>(
    //             buildWhen: (previous, current) =>
    //                 previous.data!.status != current.data!.status,
    //             builder: (context, state) {
    //               final _customerGroups = state.data?.customerGroups;
    //               switch (state.data!.status) {
    //                 case StatusType.loading:
    //                   return const AppLoadingWidget(
    //                     widget: null,
    //                     text: 'Loading...',
    //                   );
    //                 case StatusType.loaded:
    //                   return _customerGroups!.isNotEmpty
    //                       ? ListView.separated(
    //                           itemBuilder: (context, index) =>
    //                               CustomerGroupWidget(
    //                             index: index + 1,
    //                             customerGroup: _customerGroups.elementAt(index),
    //                             onPressed:
    //                                 (CustomerGroupModel? customerGroupModel) =>
    //                                     navigator!.pushNamed(
    //                               RouteGenerator.addCustomerGroupMobileAndTabletScreen,
    //                               arguments: {
    //                                 'ADD_CUSTOMER_GROUP_TYPE': AddType.UPDATE,
    //                                 'CUSTOMER_GROUP_MODEL': customerGroupModel,
    //                               },
    //                             ).whenComplete(() => _globalKey.currentContext!
    //                                         .read<CustomerGroupCubit>()
    //                                         .getCustomerGroups()),
    //                             onDelete: () => _globalKey.currentContext!
    //                                 .read<CustomerGroupCubit>()
    //                                 .delete(
    //                                     _customerGroups.elementAt(index).id!),
    //                           ),
    //                           separatorBuilder: (context, index) =>
    //                               const SizedBox.shrink(),
    //                           itemCount: _customerGroups.length,
    //                         )
    //                       : const NoDataWidget();
    //                 case StatusType.error:
    //                   return const Error404Widget();
    //                 default:
    //                   return const SizedBox.shrink();
    //               }
    //             }),
    //       ),
    //     ],
    //   ),
    // );
  }
}
