import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/cubit/payment_accounts_cubit.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/widgets/payment_detail_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:radio_grouped_buttons/radio_grouped_buttons.dart';

class DetailPaymentAccountScreen extends StatefulWidget {
  final int id;
  static MultiBlocProvider provider({required int id}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PaymentAccountsCubit>(
          create: (BuildContext context) => PaymentAccountsCubit(),
        ),
      ],
      child: DetailPaymentAccountScreen(
        id: id,
      ),
    );
  }

  const DetailPaymentAccountScreen({Key? key, required this.id})
      : super(key: key);

  @override
  State<DetailPaymentAccountScreen> createState() =>
      DetailPaymentAccountScreenState();
}

class DetailPaymentAccountScreenState extends State<DetailPaymentAccountScreen>
    with AfterLayoutMixin {
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

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<PaymentAccountsCubit>().getPaymentAccount(id: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('account_book'.tr,
            style: GlobalStyles.titilliumRegular(context).copyWith(
              fontSize: 16,
            )),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: BlocBuilder<PaymentAccountsCubit, PaymentAccountsState>(
        builder: (context, state) {
          final account = state.data!.acount;
          final paymentDetails = state.data?.paymentDetails ?? [];
          double sum = paymentDetails.fold(
              0,
              (previousValue, element) =>
                  previousValue + double.parse(element.amount!));

          return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'account_name'.tr,
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            account?.name ?? '',
                            style: GlobalStyles.titilliumSemiBold1(context),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'account_type'.tr,
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            account?.accountType?.name ?? '',
                            style: GlobalStyles.titilliumSemiBold1(context),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'account_number'.tr,
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            account?.accountNumber ?? '',
                            style: GlobalStyles.titilliumSemiBold1(context),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'balance'.tr,
                            style: GlobalStyles.titilliumSemiBold1(context),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            GlobalFormatter.formatCurrency(sum),
                            style: GlobalStyles.titilliumSemiBold1(context),
                          )
                        ],
                      )
                    ]),
                  ),
                  buildFilter(),
                  Expanded(
                      child: paymentDetails.isNotEmpty
                          ? ListView.separated(
                              itemCount: paymentDetails.length,
                              itemBuilder: (context, index) =>
                                  PaymentDetailWidget(
                                      paymentDetail:
                                          paymentDetails.elementAt(index)),
                              separatorBuilder: (context, index) =>
                                  const SizedBox.shrink(),
                            )
                          : const NoDataWidget())
                ],
              ));
        },
      ),
    );
  }

  Container buildFilter() {
    return Container(
        width: Get.width,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: TextButton(
                // style: TextButton.styleFrom(
                //   backgroundColor: Colors.grey.withOpacity(0.5),
                // ),
                child: const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {
                  showModalBottomSheet(
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height - 120),
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
                        return Column(
                          children: [
                            Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                ),
                                height: 4,
                                width: 35,
                                margin: const EdgeInsets.only(bottom: 10)),
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
                                          style: GlobalStyles.titilliumRegular(
                                                  context)
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      automaticallyImplyLeading: false,
                                      centerTitle: true,
                                      elevation: 0.7,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
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
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Row(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'to'.tr,
                                                  style: TextStyle(
                                                    color: GlobalColors
                                                        .kGreyTextColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Flexible(
                                                  child: TextField(
                                                    controller: _txtDateStart,
                                                    readOnly: true,
                                                    onTap: () async {
                                                      DateTime? dateTime =
                                                          await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  DateTime
                                                                      .now(),
                                                              firstDate:
                                                                  DateTime(
                                                                      1970),
                                                              lastDate:
                                                                  DateTime(
                                                                      2101));
                                                      if (dateTime != null) {
                                                        print(
                                                            dateTime); //dateTime output format => 2021-03-10 00:00:00.000
                                                        String formattedDate =
                                                            DateFormat(
                                                                    'yyyy-MM-dd')
                                                                .format(
                                                                    dateTime);
                                                        print(
                                                            formattedDate); //formatted date output using intl package =>  2021-03-16
                                                        //you can implement different kind of Date Format here according to your requirement

                                                        setState(() {
                                                          _txtDateStart.text =
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
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'from'.tr,
                                                  style: const TextStyle(
                                                    color: GlobalColors
                                                        .kGreyTextColor,
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Container(
                                                  child: Flexible(
                                                    child: TextFormField(
                                                      controller: _txtDateEnd,
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
                                                        if (dateTime != null) {
                                                          print(
                                                              dateTime); //dateTime output format => 2021-03-10 00:00:00.000
                                                          String formattedDate =
                                                              DateFormat(
                                                                      'yyyy-MM-dd')
                                                                  .format(
                                                                      dateTime);
                                                          print(
                                                              formattedDate); //formatted date output using intl package =>  2021-03-16
                                                          //you can implement different kind of Date Format here according to your requirement

                                                          setState(() {
                                                            _txtDateEnd.text =
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
                      });
                  //
                },
              ),
            ),
            const SizedBox(width: 10),
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
        ));
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
          // String? title;
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
                titleButton = "all".tr;
              },
              child: Text(
                'reset'.tr,
                style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: GlobalColors.primaryColor),
                backgroundColor: GlobalColors.primaryColor,
                fixedSize: const Size(160, 45)),
            onPressed: () {
              context
                  .read<PaymentAccountsCubit>()
                  .getPaymentAccount(
                      id: widget.id,
                      startDate: _txtDateStart.text,
                      endDate: _txtDateEnd.text)
                  .whenComplete(() => Navigator.pop(context));
            },
            child: Text(
              'apply'.tr,
              style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
            ),
          )
        ],
      ),
    );
  }
}
