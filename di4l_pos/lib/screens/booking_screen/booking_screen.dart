import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/screens/booking_screen/cubit/booking_cubit.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/calendar_booking_screen/calendar_booking_screen.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/widget/customer_picker.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/order_screen/widgets/custom_tabbar.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'sub_screen/all_booking_screen/all_booking_tab.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookingCubit(),
        ),
        BlocProvider(
          create: (context) => BusinessCubit(),
        ),
      ],
      child: const BookingScreen(),
    );
  }

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> with AfterLayoutMixin {
  int tabIndex = 0;
  BusinessLocation businessLocation =
      BusinessLocation(name: 'all'.tr, id: null);
  List<BusinessLocation> businessLocationList = [];
  final dateStartController = TextEditingController();
  final dateEndController = TextEditingController();
  final customerController = TextEditingController();
  DateTime? dateStart;
  DateTime? dateEnd;
  ContactModel? selectedCustomer;
  List<String> dateFilter = [
    'today',
    'yesterday',
    'this_month',
    'last_month',
    'last_30_days',
    'this_year',
    'all',
  ];
  List<String> statusList = [
    'all',
    'waiting',
    'booked',
    'completed',
    'cancelled',
  ];
  String chosenStatusFilter = 'all';
  String chosenDateFilter = 'all';

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<BusinessCubit>().getList().then(
      (value) {
        businessLocationList.clear();
        setState(() {
          businessLocationList.add(businessLocation);
          businessLocationList.addAll(value);
        });
      },
    );
    context.read<BookingCubit>().getBookings();
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
            dateStartController.text = dateStart == null
                ? ''
                : DateFormat('dd-MM-yyyy').format(dateStart!);
            dateEndController.text = dateEnd == null
                ? ''
                : DateFormat('dd-MM-yyyy').format(dateEnd!);
            customerController.text =
                selectedCustomer == null ? '' : selectedCustomer?.name ?? '';
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
                          height: 10,
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
                                width: 20,
                              ),
                              Expanded(
                                child: DropdownButton<BusinessLocation>(
                                  isExpanded: true,
                                  items: businessLocationList
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
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${'date'.tr}:',
                                style: GlobalStyles.robotoRegular(context)
                                    .copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  items: dateFilter
                                      .map<DropdownMenuItem<String>>(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                            e.tr,
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  value: chosenDateFilter,
                                  onChanged: (value) {
                                    setDateFilter(value, stateBuilder);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${'from'.tr}:',
                                style: GlobalStyles.robotoRegular(context)
                                    .copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextFormField(
                                  onTap: () async {
                                    DateTime? choosenDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100),
                                    );
                                    if (choosenDate != null) {
                                      stateBuilder(() {
                                        dateStart = choosenDate;
                                      });
                                    }
                                  },
                                  controller: dateStartController,
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
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${'to'.tr}: ',
                                style: GlobalStyles.robotoRegular(context)
                                    .copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextFormField(
                                  onTap: () async {
                                    DateTime? choosenDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100),
                                    );
                                    if (choosenDate != null) {
                                      stateBuilder(() {
                                        dateEnd = choosenDate;
                                      });
                                    }
                                  },
                                  controller: dateEndController,
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
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${'customer'.tr}:',
                                style: GlobalStyles.robotoRegular(context)
                                    .copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextFormField(
                                  onTap: () async {
                                    ContactModel? customer =
                                        await showModalBottomSheet(
                                      context: context,
                                      builder: (context) =>
                                          CustomerPicker.provider(),
                                    );
                                    if (customer != null) {
                                      stateBuilder(() {
                                        selectedCustomer = customer;
                                      });
                                    }
                                  },
                                  controller: customerController,
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
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${'status'.tr}:',
                                style: GlobalStyles.robotoRegular(context)
                                    .copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  items: statusList
                                      .map<DropdownMenuItem<String>>(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                            GlobalFormatter.formatString(e),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  value: chosenStatusFilter,
                                  onChanged: (value) {
                                    stateBuilder(() {
                                      chosenStatusFilter = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
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

  void setDateFilter(
      String? value, void Function(void Function()) stateSetter) {
    final today = DateTime.now();

    final yesterday = today.subtract(const Duration(days: 1));

    final thisMonthStart = DateTime(today.year, today.month, 1);
    final thisMonthEnd = DateTime(
        today.month == 12 ? today.year + 1 : today.year,
        today.month == 12 ? 1 : today.month + 1,
        0);

    final lastMonthStart = DateTime(
        today.month == 1 ? today.year - 1 : today.year,
        today.month == 1 ? 12 : today.month - 1,
        1);

    final lastMonthEnd = DateTime(
        today.month == 1 ? today.year - 1 : today.year, today.month, 0);

    final lastThirtyDays = today.subtract(const Duration(days: 30));

    final thisYearStart = DateTime(today.year, 1, 1);
    final thisYearEnd = DateTime(today.year + 1, 1, 0);

    if (value == 'all') {
      stateSetter(
        () {
          dateStart = null;
          dateEnd = null;
          chosenDateFilter = value!;
        },
      );
    } else if (value == 'yesterday') {
      stateSetter(() {
        dateStart = yesterday.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        dateEnd = yesterday.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        chosenDateFilter = value!;
      });
    } else if (value == 'this_month') {
      stateSetter(() {
        dateStart = thisMonthStart.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        dateEnd = thisMonthEnd.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        chosenDateFilter = value!;
      });
    } else if (value == 'last_month') {
      stateSetter(() {
        dateStart = lastMonthStart.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        dateEnd = lastMonthEnd.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        chosenDateFilter = value!;
      });
    } else if (value == 'last_30_days') {
      stateSetter(() {
        dateStart = lastThirtyDays.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        dateEnd = today.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        chosenDateFilter = value!;
      });
    } else if (value == 'this_year') {
      stateSetter(() {
        dateStart = thisYearStart.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        dateEnd = thisYearEnd.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        chosenDateFilter = value!;
      });
    } else if (value == 'today') {
      stateSetter(() {
        dateStart = today.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        dateEnd = today.copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        );
        chosenDateFilter = value!;
      });
    }
  }

  ElevatedButton buildApplyButton() {
    return ElevatedButton(
      onPressed: () async {
        await context.read<BookingCubit>().getBookingsByFilter(
              locationId: businessLocation.id,
              dateStart: dateStart,
              dateEnd: dateEnd,
              customerId: selectedCustomer?.id,
              bookingStatus: chosenStatusFilter,
            );
        navigator!.pop();
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
      ),
      child: Text(
        'apply'.tr,
        style: GlobalStyles.robotoBold(context).copyWith(
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: tabIndex,
      child: Scaffold(
        appBar: CustomAppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          title: 'bookings'.tr,
          textColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => showFilter(),
              icon: const Icon(
                Icons.search_rounded,
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: GlobalColors.primaryColor,
            unselectedLabelColor: GlobalColors.kGreyTextColor,
            indicatorColor: GlobalColors.primaryColor,
            isScrollable: true,
            indicatorWeight: 1,
            tabs: [
              CustomTabBar(title: 'booking_list'.tr),
              CustomTabBar(title: 'calendar'.tr),
            ],
          ),
        ),
        backgroundColor: GlobalColors.bgWebColor,
        body: const TabBarView(
          children: [
            AllBookingTab(),
            CalendarBookingScreen(),
          ],
        ),
      ),
    );
  }
}
