import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/profit_and_loss_screen/cubit/profit_and_loss_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:intl/intl.dart';
import 'package:radio_grouped_buttons/custom_buttons/custom_radio_buttons_group.dart';

class ProfitAndLossScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ProfitAndLossCubit> provide() {
    return BlocProvider(
      create: (context) => ProfitAndLossCubit(),
      child: ProfitAndLossScreen(),
    );
  }

  const ProfitAndLossScreen({Key? key}) : super(key: key);

  @override
  State<ProfitAndLossScreen> createState() => _ProfitAndLossScreenState();
}

class _ProfitAndLossScreenState extends State<ProfitAndLossScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
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
    context.read<ProfitAndLossCubit>().getProfitAndLoss();
    // context
    //     .read<ProfitAndLossCubit>()
    //     .getProfitAndLoss(startDate: '2023-04-27', endDate: '2023-05-03');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      // appBar: CustomAppBar(
      //   title: 'profit_and_loss'.tr,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildFilter(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: Get.width,
              // color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                boxShadow: [
                  BoxShadow(
                    color: GlobalColors.bgSearch,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: BlocBuilder<ProfitAndLossCubit, ProfitAndLossState>(
                builder: (context, state) {
                  final _response = state.data?.profitAndLossResponse;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildContainerReport(
                        index: 1,
                        title: 'open_stock'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response?.data?.openingStock.toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 2,
                        title: 'total_purchase'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: '${_response?.data?.totalPurchase}'),
                      ),
                      _buildContainerReport(
                        index: 3,
                        title: 'total_stock_adjustment'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: '${_response?.data?.totalAdjustment}'),
                      ),
                      _buildContainerReport(
                        index: 4,
                        title: 'total_expense'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response?.data?.totalExpense?.toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 5,
                        title: 'total_purchase_shipping_charge'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response?.data?.totalPurchaseShippingCharge
                                    .toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 6,
                        title: 'purchase_additional_expenses'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response
                                    ?.data?.totalPurchaseAdditionalExpense
                                    .toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 7,
                        title: 'total_transfer_shipping_charge'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response
                                    ?.data?.totalTransferShippingCharges
                                    .toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 8,
                        title: 'total_sell_discount'.tr,
                        value: GlobalFormatter.formatNumber(
                            source:
                                _response?.data?.totalSellDiscount.toString() ??
                                    '0.0'),
                      ),
                      _buildContainerReport(
                        index: 9,
                        title: 'total_customer_reward'.tr,
                        value: GlobalFormatter.formatNumber(
                            source:
                                _response?.data?.totalRewardAmount.toString() ??
                                    '0.0'),
                      ),
                      _buildContainerReport(
                        index: 10,
                        title: 'total_sell_return'.tr,
                        value: GlobalFormatter.formatNumber(
                            source:
                                _response?.data?.totalSellReturn.toString() ??
                                    '0.0'),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              width: Get.width,
              // color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                boxShadow: [
                  BoxShadow(
                    color: GlobalColors.bgSearch,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: BlocBuilder<ProfitAndLossCubit, ProfitAndLossState>(
                builder: (context, state) {
                  final _response = state.data?.profitAndLossResponse;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildContainerReport(
                        index: 1,
                        title: 'close_stock'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response?.data?.closingStock.toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 2,
                        title: 'total_sale'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: '${_response?.data?.totalSell}'),
                      ),
                      _buildContainerReport(
                        index: 3,
                        title: 'total_sell_shipping_charge'.tr,
                        value: GlobalFormatter.formatNumber(
                            source:
                                '${_response?.data?.totalSellShippingCharge}'),
                      ),
                      _buildContainerReport(
                        index: 4,
                        title: 'sell_additional_expenses'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response?.data?.totalSellAdditionalExpense
                                    ?.toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 5,
                        title: 'total_stock_recovered'.tr,
                        value: GlobalFormatter.formatNumber(
                            source:
                                _response?.data?.totalRecovered.toString() ??
                                    '0.0'),
                      ),
                      _buildContainerReport(
                        index: 6,
                        title: 'total_purchase_return'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response?.data?.totalPurchaseReturn
                                    .toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 7,
                        title: 'total_purchase_discount'.tr,
                        value: GlobalFormatter.formatNumber(
                            source: _response?.data?.totalPurchaseDiscount
                                    .toString() ??
                                '0.0'),
                      ),
                      _buildContainerReport(
                        index: 8,
                        title: 'total_sell_round_off'.tr,
                        value: GlobalFormatter.formatNumber(
                            source:
                                _response?.data?.totalSellRoundOff.toString() ??
                                    '0.0'),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildFilter() {
    return Container(
        width: Get.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
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
                style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: GlobalColors.primaryColor),
                backgroundColor: GlobalColors.primaryColor,
                fixedSize: const Size(160, 45)),
            onPressed: () {
              context
                  .read<ProfitAndLossCubit>()
                  .getProfitAndLoss(
                      startDate: _txtDateStart.text, endDate: _txtDateEnd.text)
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

  /// Container Report
  Widget _buildContainerReport({
    required int index,
    required String title,
    required String value,
  }) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(8.0),
      constraints: BoxConstraints(
        minHeight: 44,
      ),
      color: index % 2 != 0
          ? GlobalColors.kGreyTextColor.withOpacity(0.1)
          : Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
