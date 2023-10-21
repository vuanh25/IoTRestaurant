import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/contact_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class AllCustomers extends StatefulWidget {
  const AllCustomers({
    Key? key,
    required GlobalKey<ScaffoldState> globalKey,
  })  : _globalKey = globalKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _globalKey;

  @override
  State<AllCustomers> createState() => _AllCustomersState();
}

class _AllCustomersState extends State<AllCustomers> with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CustomersCubit>().getContacts();
  }

  void setupScrollController(context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          BlocProvider.of<CustomersCubit>(context).getContacts();
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
        child: BlocBuilder<CustomersCubit, CustomersState>(
            buildWhen: (previous, current) =>
                previous.data!.status != current.data!.status,
            builder: (context, state) {
              final _customers = state.data?.customers ?? [];
              // bool isLoading = false;
              switch (state.data!.status) {
                case StatusType.loading:
                // isLoading = true;
                // return Container(
                //   color: Colors.transparent,
                // );
                // isLoading = true;
                // return Container();
                // isLoading = true;
                // return SizedBox.shrink();
                // break;
                // return Center(
                //   child: CircularProgressIndicator(),
                // );
                // return const AppLoadingWidget(
                //   widget: null,
                //   text: 'Loading...',
                // );
                case StatusType.loaded:
                  // isLoading = true;
                  return _customers.isNotEmpty
                      ? ListView.separated(
                          controller: _scrollController,
                          itemBuilder: (context, index) {
                            if (index < _customers.length) {
                              return ContactWidget(
                                index: index + 1,
                                contact: _customers.elementAt(index),
                                onPressed: (ContactModel? contact) => navigator!
                                    .pushNamed(
                                  RouteGenerator.detailContactScreen,
                                  arguments: {
                                    'ADD_CONTACT_TYPE':
                                        AddContactType.UPDATE_CUSTOMER,
                                    'CONTACT_MODEL': contact,
                                  },
                                ).whenComplete(() => widget
                                        ._globalKey.currentContext!
                                        .read<CustomersCubit>()
                                        .loadContact()),
                              );
                            } else {
                              Future.delayed(const Duration(seconds: 5), () {
                                _scrollController.jumpTo(
                                    _scrollController.position.maxScrollExtent);
                                // isLoading = true;
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
                          itemCount: _customers.length,
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
        text: 'add_customer'.tr,
        iconData: Icons.person_add_alt_1,
        scrollController: _scrollController,
        onPress: () {
          navigator!.pushNamed(
            RouteGenerator.addContactScreen,
            arguments: {
              'ADD_CONTACT_TYPE': AddContactType.CUSTOMER,
            },
          ).whenComplete(() => widget._globalKey.currentContext!
              .read<CustomersCubit>()
              .loadContact());

          // IconButton(
          //         onPressed: () => navigator!.pushNamed(
          //           RouteGenerator.addCustomerGroupScreen,
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
        },
      ),
    );
  }
}
