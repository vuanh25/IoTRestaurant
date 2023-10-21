import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';
import 'package:get/get.dart';

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/screens/expense_screen/cubit/expense_cubit.dart';
import 'package:di4l_pos/screens/expense_screen/widgets/table_data_revenue_expense.dart';
import 'package:di4l_pos/screens/expense_screen/widgets/total_expense.dart';
import 'package:intl/intl.dart';
import 'package:radio_grouped_buttons/custom_buttons/custom_radio_buttons_group.dart';

import '../../common/global_styles.dart';

class RevenueExpensePage extends StatefulWidget {
  const RevenueExpensePage({Key? key}) : super(key: key);

  static BlocProvider<ExpenseCubit> provider() {
    return BlocProvider(
      create: (context) => ExpenseCubit(),
      child: const RevenueExpensePage(),
    );
  }

  @override
  State<RevenueExpensePage> createState() => _RevenueExpensePage();
}

class _RevenueExpensePage extends State<RevenueExpensePage>
    with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _txtDateStart = TextEditingController();
  final TextEditingController _txtDateEnd = TextEditingController();
  List<String> buttonList = [
    "today".tr,
    "yesterday".tr,
    "this_month".tr,
    "last_month".tr,
    "last_30_days".tr,
    "this_year".tr,
    "all".tr,
  ];
  List<String> buttonValue = [
    "today",
    "yesterday",
    "this_month",
    "last_month",
    "last_30_days",
    "this_year",
    "all",
  ];

  late String? titleButton = "all".tr;
  double surplus = 0;
  double totalExpense = 0;
  double totalRevenue = 0;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ExpenseCubit>().getExpenses();
  }

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text(
          'expense'.tr,
          style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
        ),
        backgroundColor: GlobalColors.primaryColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          BlocBuilder<ExpenseCubit, ExpenseState>(
            builder: (context, state) {
              surplus = -state.data!.totalExpense + state.data!.totalRevenue;
              totalRevenue = state.data!.totalRevenue;
              totalExpense = state.data!.totalExpense;
              return buildHeaderContent(context);
            },
          ),
          buildBodyContent(),
        ],
      ),
      floatingActionButton: buildFooterContent(),
    );
  }

  Container buildHeaderContent(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(top: 10, left: 10, right: 5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                          minWidth: 20,
                          maxWidth: 40,
                          minHeight: 20,
                          maxHeight: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE8E9EE),
                      ),
                      child: IconButton(
                        onPressed: () {
                          _txtDateStart.clear();
                          _txtDateEnd.clear();
                          showModalBottomSheet<void>(
                            constraints: BoxConstraints(
                                maxHeight:
                                    MediaQuery.of(context).size.height - 120),
                            enableDrag: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10.0),
                            )),
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            isDismissible: true,
                            context: context,
                            builder: (context) {
                              // return Filter.provider();
                              return Column(
                                children: [
                                  Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                      ),
                                      height: 4,
                                      width: 35,
                                      margin:
                                          const EdgeInsets.only(bottom: 10)),
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(10.0),
                                          )),
                                      width: double.infinity,
                                      child: Scaffold(
                                          backgroundColor: Colors.transparent,
                                          appBar: AppBar(
                                            toolbarHeight: 50,
                                            title: Text('filter'.tr,
                                                style: GlobalStyles
                                                        .titilliumRegular(
                                                            context)
                                                    .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                            backgroundColor: Colors.white,
                                            foregroundColor: Colors.black,
                                            automaticallyImplyLeading: false,
                                            centerTitle: true,
                                            elevation: 0.7,
                                            shape: const RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                              top: Radius.circular(10.0),
                                            )),
                                            actions: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  icon: const Icon(
                                                    Icons.clear,
                                                    // size: Dimensions
                                                    //     .ICON_SIZE_DEFAULT,
                                                  ))
                                            ],
                                          ),
                                          body: Container(
                                            padding: const EdgeInsets.all(15),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                buildRadioButton(context),
                                                const SizedBox(height: 20),
                                                Text('custom_time'.tr),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Row(
                                                    // crossAxisAlignment:
                                                    //     CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        'from'.tr,
                                                        style: const TextStyle(
                                                          color: GlobalColors
                                                              .kGreyTextColor,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Flexible(
                                                        child: TextField(
                                                          controller:
                                                              _txtDateStart,
                                                          readOnly: true,
                                                          onTap: () async {
                                                            DateTime? dateTime =
                                                                await showDatePicker(
                                                                    context:
                                                                        context,
                                                                    initialDate:
                                                                        DateTime
                                                                            .now(),
                                                                    firstDate:
                                                                        DateTime(
                                                                            1970),
                                                                    lastDate:
                                                                        DateTime(
                                                                            2101));
                                                            if (dateTime !=
                                                                null) {
                                                              print(
                                                                  dateTime); //dateTime output format => 2021-03-10 00:00:00.000
                                                              String
                                                                  formattedDate =
                                                                  DateFormat(
                                                                          'yyyy-MM-dd')
                                                                      .format(
                                                                          dateTime);
                                                              print(
                                                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                                                              //you can implement different kind of Date Format here according to your requirement

                                                              setState(() {
                                                                _txtDateStart
                                                                        .text =
                                                                    formattedDate; //set output date to TextField value.
                                                              });
                                                            } else {
                                                              print(
                                                                  "Date is not selected");
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'to'.tr,
                                                        style: const TextStyle(
                                                          color: GlobalColors
                                                              .kGreyTextColor,
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Container(
                                                        child: Flexible(
                                                          child: TextFormField(
                                                            controller:
                                                                _txtDateEnd,
                                                            readOnly: true,
                                                            onTap: () async {
                                                              DateTime? dateTime = await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate:
                                                                      DateTime
                                                                          .now(),
                                                                  firstDate:
                                                                      DateTime(
                                                                          1970),
                                                                  lastDate:
                                                                      DateTime(
                                                                          2101));
                                                              if (dateTime !=
                                                                  null) {
                                                                print(
                                                                    dateTime); //dateTime output format => 2021-03-10 00:00:00.000
                                                                String
                                                                    formattedDate =
                                                                    DateFormat(
                                                                            'yyyy-MM-dd')
                                                                        .format(
                                                                            dateTime);
                                                                print(
                                                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                                                //you can implement different kind of Date Format here according to your requirement

                                                                setState(() {
                                                                  _txtDateEnd
                                                                          .text =
                                                                      formattedDate; //set output date to TextField value.
                                                                });
                                                              } else {
                                                                print(
                                                                    "Date is not selected");
                                                              }
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          bottomNavigationBar:
                                              buildButtonBottomSheet()),
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.calendar_month,
                          color: Color(0xff1C2125),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:
                            // buildButtonTabBar(),

                            TextButton(
                          style: TextButton.styleFrom(
                              primary: GlobalColors.primaryColor,
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(titleButton!),
                        )),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    navigator!.pushNamed(RouteGenerator.searchExpense);
                  },
                  icon: Image.asset(
                    GlobalImages.search,
                    color: GlobalColors.blackColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${'surplus'.tr}: ',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff212224),
                          ),
                        ),
                        Text(
                          surplus.toString().formatMoney(),
                          style: TextStyle(
                            color: surplus > 0
                                ? const Color(0xff15803D)
                                : const Color(0xffB34937),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => navigator!.pushNamed(
                        RouteGenerator.reportScreen,
                        arguments: 3,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.signal_cellular_alt_outlined,
                            size: 16,
                            color: Color(0xff15803D),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'reports'.tr,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff15803D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExpenseChild(
                      total: totalExpense.toString(),
                      title: 'totalExpense'.tr,
                      color: const Color(0xffB34937),
                    ),
                    ExpenseChild(
                      total: totalRevenue.toString(),
                      title: 'totalRevenue'.tr,
                      color: const Color(0xff15803D),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBodyContent() {
    return BlocBuilder<ExpenseCubit, ExpenseState>(
      builder: (context, state) {
        return Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 10),
            child: TableExpense(expenses: state.data!.expenses),
          ),
        );
      },
    );
  }

  Widget buildFooterContent() {
    return ScrollingFabAnimatedCustom(
      width: 50,
      height: 48,
      iconData: Icons.add,
      text: '',
      onPress: () => navigator!.pushNamed(RouteGenerator.addExpense).then(
          (value) =>
              _globalKey.currentContext!.read<ExpenseCubit>().getExpenses()),
      scrollController: _scrollController,
    );
  }

  Container buildButtonBottomSheet() {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 1, color: Colors.black.withOpacity(0.1)))),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  fixedSize: const Size(160, 45)),
              onPressed: () {
                _txtDateStart.text = '';
                _txtDateEnd.text = '';
              },
              child: Text(
                'reset'.tr,
                style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: GlobalColors.primaryColor),
                backgroundColor: GlobalColors.primaryColor,
                fixedSize: const Size(160, 45)),
            onPressed: () {
              context
                  .read<ExpenseCubit>()
                  .getExpenses(
                      startDate: _txtDateStart.text, endDate: _txtDateEnd.text)
                  .whenComplete(() => Navigator.pop(context));
            },
            child: Text(
              'apply'.tr,
              style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
            ),
          )
        ],
      ),
    );
  }

  Container buildRadioButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: CustomRadioButton(
        elevation: 0.1,
        fontSize: Dimensions.FONT_SIZE_DEFAULT,
        textColor: GlobalColors.kGreyTextColor,
        selectedTextColor: GlobalColors.flButtonColor,
        buttonBorderColor: GlobalColors.flButtonColor,
        buttonLables: buttonList,
        buttonValues: buttonValue,
        radioButtonValue: (value, index) {
          var now = DateTime.now();

          var today = DateFormat('yyyy-MM-dd').format(now);

          var yesterday = DateFormat('yyyy-MM-dd')
              .format(now.subtract(const Duration(days: 1)));

          var last30Day = DateFormat('yyyy-MM-dd')
              .format(now.subtract(const Duration(days: 30)));

          var thisMonthStart =
              DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month, 1));
          var thisMonthEnd = DateFormat('yyyy-MM-dd')
              .format(DateTime(now.year, now.month + 1, 0));

          var lastMonthStart = DateFormat('yyyy-MM-dd')
              .format(DateTime(now.year, now.month - 1, 1));
          var lastMonthEnd =
              DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month, 0));

          var thisYearStart =
              DateFormat('yyyy-MM-dd').format(DateTime(now.year, 1, 1));
          var thisYearEnd =
              DateFormat('yyyy-MM-dd').format(DateTime(now.year + 1, 1, 0));

          if (value == 'all') {
            _txtDateStart.text = '';
            _txtDateEnd.text = '';
            setState(() {
              titleButton = "all".tr;
            });
          } else if (value == 'today') {
            _txtDateStart.text = today;
            _txtDateEnd.text = today;

            setState(() {
              titleButton = "today".tr;
            });
          } else if (value == 'yesterday') {
            _txtDateStart.text = yesterday;
            _txtDateEnd.text = yesterday;
            setState(() {
              titleButton = "yesterday".tr;
            });
          } else if (value == 'this_month') {
            _txtDateStart.text = thisMonthStart;
            _txtDateEnd.text = thisMonthEnd;
            setState(() {
              titleButton = "this_month".tr;
            });
          } else if (value == 'last_month') {
            _txtDateStart.text = lastMonthStart;
            _txtDateEnd.text = lastMonthEnd;
            setState(() {
              titleButton = "last_month".tr;
            });
          } else if (value == 'last_30_days') {
            _txtDateStart.text = last30Day;
            _txtDateEnd.text = today;
            setState(() {
              titleButton = "last_30_days".tr;
            });
          } else if (value == 'this_year') {
            _txtDateStart.text = thisYearStart;
            _txtDateEnd.text = thisYearEnd;
            setState(() {
              titleButton = "this_year".tr;
            });
          }
        },
        horizontal: true,
        buttonSpace: 10,
        initialSelection: 6,
        buttonColor: GlobalColors.bgColor,
        selectedColor: GlobalColors.bgColor,
        buttonWidth: 150,
      ),
    );
  }
}
