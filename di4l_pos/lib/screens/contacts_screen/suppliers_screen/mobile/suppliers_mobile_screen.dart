// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/contact_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SuppliersMobileScreen extends StatefulWidget {
  SuppliersMobileScreen({
    Key? key,
    required GlobalKey<ScaffoldState> globalKey,
  })  : _globalKey = globalKey,
        super(key: key);
  final GlobalKey<ScaffoldState> _globalKey;
  @override
  State<SuppliersMobileScreen> createState() => _SuppliersScreenState();
}

class _SuppliersScreenState extends State<SuppliersMobileScreen>
    with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();

  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<SuppliersCubit>().getContacts();
  }

  void setupScrollController(context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          BlocProvider.of<SuppliersCubit>(context).getContacts();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);

    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: BlocBuilder<SuppliersCubit, SuppliersState>(
            buildWhen: (previous, current) =>
                previous.data!.status != current.data!.status,
            builder: (context, state) {
              final _suppliers = state.data?.suppliers ?? [];
              switch (state.data!.status) {
                case StatusType.loading:
                // return const AppLoadingWidget(
                //   widget: null,
                //   text: 'Loading...',
                // );
                case StatusType.loaded:
                  return _suppliers.isNotEmpty
                      ? ListView.separated(
                          controller: _scrollController,
                          itemBuilder: (context, index) {
                            if (index < _suppliers.length) {
                              return ContactWidget(
                                index: index + 1,
                                contact: _suppliers.elementAt(index),
                                onPressed: (ContactModel? contact) => navigator!
                                    .pushNamed(
                                  RouteGenerator.detailContactScreen,
                                  arguments: {
                                    'ADD_CONTACT_TYPE':
                                        AddContactType.UPDATE_SUPPLIER,
                                    'CONTACT_MODEL': contact,
                                  },
                                ).whenComplete(() => widget
                                        ._globalKey.currentContext!
                                        .read<SuppliersCubit>()
                                        .loadContact()),
                              );
                            } else {
                              Future.delayed(const Duration(seconds: 5), () {
                                _scrollController.jumpTo(
                                    _scrollController.position.maxScrollExtent);
                                // isLoading = true;
                              });
                            }
                            return Container();
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox.shrink(),
                          itemCount: _suppliers.length,
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
        width: 200,
        height: 48,
        text: 'add_supplier'.tr,
        iconData: Icons.person_add_alt_1,
        scrollController: _scrollController,
        onPress: () {
          navigator!.pushNamed(
            RouteGenerator.addContactScreen,
            arguments: {
              'ADD_CONTACT_TYPE': AddContactType.SUPPLIER,
            },
          ).whenComplete(() => widget._globalKey.currentContext!
              .read<SuppliersCubit>()
              .loadContact());
        },
      ),
    );

    // return Scaffold(
    //   key: _globalKey,
    //   appBar: CustomAppBar(
    //     title: 'suppliers'.tr,
    //     actions: [
    //       IconButton(
    //         onPressed: () => navigator!.pushNamed(
    //           RouteGenerator.addContactScreen,
    //           arguments: {
    //             'ADD_CONTACT_TYPE': AddContactType.SUPPPLIER,
    //           },
    //         ).whenComplete(() => _globalKey.currentContext!
    //             .read<SuppliersCubit>()
    //             .getContacts()),
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
    //         hintText: 'search_suppliers'.tr,
    //         onPressedFilter: () {},
    //         onChange: (String? value) {
    //           _globalKey.currentContext!
    //               .read<SuppliersCubit>()
    //               .searchSupplier(searchText: value?.trim() ?? '');
    //         },
    //         isShowFilter: false,
    //       ),

    //       /// Suppliers
    //       Expanded(
    //         child: BlocBuilder<SuppliersCubit, SuppliersState>(
    //             buildWhen: (previous, current) =>
    //                 previous.data!.status != current.data!.status,
    //             builder: (context, state) {
    //               final _suppliers = state.data?.suppliers ?? [];
    //               switch (state.data!.status) {
    //                 case StatusType.loading:
    //                   return const AppLoadingWidget(
    //                     widget: null,
    //                     text: 'Loading...',
    //                   );
    //                 case StatusType.loaded:
    //                   return _suppliers.isNotEmpty
    //                       ? ListView.separated(
    //                           itemBuilder: (context, index) => ContactWidget(
    //                             index: index + 1,
    //                             contact: _suppliers.elementAt(index),
    //                             onPressed: (ContactModel? contact) => navigator!
    //                                 .pushNamed(
    //                               RouteGenerator.detailContactScreen,
    //                               arguments: {
    //                                 'ADD_CONTACT_TYPE':
    //                                     AddContactType.SUPPPLIER,
    //                                 'CONTACT_MODEL': contact,
    //                               },
    //                             ).whenComplete(() => _globalKey.currentContext!
    //                                     .read<SuppliersCubit>()
    //                                     .getContacts()),
    //                             onDelete: () => _globalKey.currentContext!
    //                                 .read<SuppliersCubit>()
    //                                 .delete(_suppliers.elementAt(index).id!),
    //                           ),
    //                           separatorBuilder: (context, index) =>
    //                               const SizedBox.shrink(),
    //                           itemCount: _suppliers.length,
    //                         )
    //                       : const NoDataWidget();
    //                 case StatusType.error:
    //                   return const Error404Widget();
    //                 default:
    //                   return const SizedBox.shrink();
    //               }
    //             }),
    //       )
    //     ],
    //   ),
    // );
  }
}
