import 'dart:async';

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/user/response/user_list_response.dart';
import 'package:di4l_pos/models/user/response/user_response.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/cubit/user_cubit.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/widget/user_picker.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/calendar_screen/sub_screen/calendar_view_screen/calendar_view_screen.dart';
import 'package:di4l_pos/screens/order_screen/widgets/custom_tabbar.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'sub_screen/calendar_listview_screen/calendar_listview_screen.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BusinessCubit(),
        ),
      ],
      child: const CalendarScreen(),
    );
  }

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> with AfterLayoutMixin {
  int initialIndex = 0;
  BusinessLocation businessLocation =
      BusinessLocation(id: null, name: 'all'.tr);
  List<BusinessLocation> businessLocationOptions = [];
  final userController = TextEditingController();
  UserItem? selectedUser;

  Map<String, dynamic> eventOptions = {
    'education': true,
    'schedule': true,
    'todo': true,
    'holiday': true,
    'leaves': true,
    'reminder': true,
  };
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<BusinessCubit>().getList().then(
      (value) {
        businessLocationOptions.clear();
        setState(() {
          businessLocationOptions.add(businessLocation);
          businessLocationOptions.addAll(value);
        });
      },
    );
  }

  Future<void> showFilter() {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
        ),
      ),
      context: context,
      builder: (context) {
        final size = MediaQuery.of(context).size;
        return StatefulBuilder(
          builder: (context, stateBuilder) {
            userController.text = selectedUser?.fullName ?? '';
            return Container(
              height: size.height * 0.8,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.transparent,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 48,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 10,
                                child: IconButton(
                                  onPressed: () {
                                    navigator!.pop();
                                  },
                                  icon: const Icon(
                                    Icons.clear,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'filter'.tr,
                                  style: GlobalStyles.titleHeader(context)
                                      .copyWith(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${'location'.tr}:',
                                style: GlobalStyles.robotoRegular(context)
                                    .copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                              ),
                              Expanded(
                                child: DropdownButton<BusinessLocation>(
                                  isExpanded: true,
                                  items: businessLocationOptions
                                      .map<DropdownMenuItem<BusinessLocation>>(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.name ?? ''),
                                        ),
                                      )
                                      .toList(),
                                  value: businessLocation,
                                  onChanged: (value) {
                                    stateBuilder(() {
                                      businessLocation = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${'user'.tr}:',
                                style: GlobalStyles.robotoRegular(context)
                                    .copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: Dimensions.PADDING_SIZE_LARGE,
                              ),
                              Expanded(
                                child: TextFormField(
                                  onTap: () async {
                                    UserItem? user = await showModalBottomSheet(
                                      context: context,
                                      builder: (context) => UserPicker.provider(
                                        isCorrespondent: false,
                                      ),
                                    );
                                    if (user != null) {
                                      stateBuilder(() {
                                        selectedUser = user;
                                      });
                                    }
                                  },
                                  controller: userController,
                                  readOnly: true,
                                  decoration: const InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.arrow_drop_down,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xffDFDFDF),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: const Text(
                                  'Education',
                                ),
                                value: eventOptions['education'],
                                onChanged: (value) {
                                  stateBuilder(() {
                                    eventOptions['education'] = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: const Text(
                                  'Schedule',
                                ),
                                value: eventOptions['schedule'],
                                onChanged: (value) {
                                  stateBuilder(() {
                                    eventOptions['schedule'] = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: const Text(
                                  'Todo',
                                ),
                                value: eventOptions['todo'],
                                onChanged: (value) {
                                  stateBuilder(() {
                                    eventOptions['todo'] = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: const Text(
                                  'Holiday',
                                ),
                                value: eventOptions['holiday'],
                                onChanged: (value) {
                                  stateBuilder(() {
                                    eventOptions['holiday'] = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: const Text(
                                  'Leaves',
                                ),
                                value: eventOptions['leaves'],
                                onChanged: (value) {
                                  stateBuilder(() {
                                    eventOptions['leaves'] = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: const Text(
                                  'Reminder',
                                ),
                                value: eventOptions['reminder'],
                                onChanged: (value) {
                                  stateBuilder(() {
                                    eventOptions['reminder'] = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    buildApplyButton(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  ElevatedButton buildApplyButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(
          48,
        ),
      ),
      onPressed: () {
        navigator!.pop();
      },
      child: Text('apply'.tr),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialIndex,
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildBody(),
      ),
    );
  }

  CustomAppBar buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: 'calendar'.tr,
      centerTitle: true,
      automaticallyImplyLeading: true,
      textColor: Colors.black,
      actions: [
        IconButton(
          onPressed: () async {
            await showFilter();
          },
          icon: const Icon(
            Icons.search_rounded,
          ),
        ),
      ],
      bottom: TabBar(
        labelColor: GlobalColors.primaryColor,
        indicatorColor: GlobalColors.primaryColor,
        unselectedLabelColor: GlobalColors.kGreyTextColor,
        isScrollable: true,
        indicatorWeight: 1,
        tabs: [
          CustomTabBar(
            title: 'list'.tr,
          ),
          CustomTabBar(
            title: 'calendar'.tr,
          ),
        ],
      ),
      backgroundColor: GlobalColors.bgWebColor,
    );
  }

  TabBarView buildBody() {
    return const TabBarView(
      children: [
        CalendarListViewScreen(),
        CalendarViewScreen(),
      ],
    );
  }
}
