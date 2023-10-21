import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/staff_management/response/staff_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/staff_management_screen/cubit/staff_management_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/screens/staff_management_screen/widgets/staff_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/enums/staff_detail_type.dart';


class StaffManagementScreenMobile extends StatefulWidget {
  static BlocProvider<StaffManagementCubit> provider() {
    return BlocProvider(
      create: (context) => StaffManagementCubit(),
      child: const StaffManagementScreenMobile(),
    );
  }

  const StaffManagementScreenMobile({Key? key}) : super(key: key);

  @override
  State<StaffManagementScreenMobile> createState() => _StaffManagementScreenMobileState();
}

class _StaffManagementScreenMobileState extends State<StaffManagementScreenMobile> with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _txtSearch = TextEditingController();

  bool _showSearch = false;
  List<Staff> staffList = [];
  List<Staff> staffListFilted = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<StaffManagementCubit>().getStaffs();
  }

  // void setupScrollController(BuildContext context) {
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.atEdge) {
  //       if (_scrollController.position.pixels != 0) {
  //         context.read<StaffManagementCubit>().getStaffs();
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // setupScrollController(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 23),
        elevation: 0.5,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'staff_list'.tr,
            style: GlobalStyles.normalStyle.copyWith(
              color: GlobalColors.primaryWebColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
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
          )
        ],
        
      ),
      backgroundColor: GlobalColors.bgColor,
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<StaffManagementCubit>().getStaffs();
        },
        child: Column(
          children: [
            const SizedBox(height: 8),
            Visibility(
              visible: _showSearch,
              child: Container(
                margin: const EdgeInsets.only(top: 12, bottom: 14),
                child: SearchWidgetContact(
                  controller: _txtSearch,
                  hintText: 'search'.tr,
                  onChange: (String? value) {
                    setState(() {
                      if(value!=null){
                        staffListFilted = staffList.where((e) => e.fullName!.contains(value)).toList();
                      }
                    });
                  },
                ),
              ),
            ),
            BlocBuilder<StaffManagementCubit, StaffManagementState>(
                  buildWhen: (previous, current) =>
                      previous.data!.status != current.data!.status,
                  builder: (context, state) {
                    staffList = state.data?.staffs ?? [];
                    if(_txtSearch.text.isEmpty) staffListFilted = staffList;
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
                        return staffListFilted.isNotEmpty
                            ? Expanded(
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  controller: _scrollController,
                                  itemBuilder: (context, index) {
                                    if (index < staffListFilted.length) {
                                      return StaffWidget(
                                        index: index + 1,
                                        staff: staffListFilted.elementAt(index),
                                        onPressed: (int id) => {
                                          navigator!.pushNamed(
                                            RouteGenerator.staffDetailScreen,
                                            arguments: {
                                              'staffDetailMode': StaffDetailType.UPDATE,
                                              'id': id
                                            },
                                          )
                                        }
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
                                  itemCount: staffListFilted.length,
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
      floatingActionButton: ScrollingFabAnimatedCustom(
        width: 180,
        height: 48,
        text: 'add_staff'.tr,
        iconData: Icons.person_add_alt_1,
        scrollController: _scrollController,
        onPress: () {
         navigator!.pushNamed(
            RouteGenerator.staffDetailScreen,
            arguments: {
              'staffDetailMode': StaffDetailType.ADD,
            },
          );
        },
      ),
    );
  }
}
