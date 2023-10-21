import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/sell_report_screen/cubit/sell_report_cubit.dart';
import 'package:di4l_pos/screens/reports_screen/widget/by_products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/utils.dart';
import 'package:intl/intl.dart';
import 'package:radio_grouped_buttons/radio_grouped_buttons.dart';

class ByProducts extends StatefulWidget {
  const ByProducts({Key? key}) : super(key: key);
  static BlocProvider<SellReportCubit> provider() {
    return BlocProvider(
      create: (context) => SellReportCubit(),
      child: const ByProducts(),
    );
  }

  @override
  State<ByProducts> createState() => _ByProductsState();
}

class _ByProductsState extends State<ByProducts> with AfterLayoutMixin {
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
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<SellReportCubit>().getSellReport();
  }

  void setupScrollController(context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          BlocProvider.of<SellReportCubit>(context).getSellReport();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Scaffold(
        backgroundColor: GlobalColors.bgColor,
        body: Column(
          children: [
            buildFilter(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('products'.tr),
                  Text('qty'.tr),
                  Text('total_sale'.tr)
                ],
              ),
            ),
            buildHistory()
            // Expanded(
            //   child: Container(
            //       margin: const EdgeInsets.symmetric(vertical: 5),
            //       padding: const EdgeInsets.symmetric(vertical: 10),
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(5),
            //       ),
            //       child: ListView.builder(
            //         // shrinkWrap: true,
            //         // physics: NeverScrollableScrollPhysics(),
            //         itemCount: 10,
            //         itemBuilder: (context, index) => Card(
            //           child: Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 10),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Column(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   children: [
            //                     const Text('30/10/00'),
            //                     const Text('8:00')
            //                   ],
            //                 ),
            //                 Container(
            //                   margin: const EdgeInsets.symmetric(vertical: 5),
            //                   padding: const EdgeInsets.symmetric(
            //                       horizontal: 10, vertical: 15),
            //                   child: const Text('jjjjjjjjjjjjjjj'),
            //                 ),
            //                 Container(
            //                   margin: const EdgeInsets.symmetric(vertical: 5),
            //                   padding: const EdgeInsets.symmetric(
            //                       horizontal: 10, vertical: 15),
            //                   child: const Text('jjjjjjjjjjjjjjj'),
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //       )),
            // ),
          ],
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  BlocBuilder<SellReportCubit, SellReportState> buildBottomNavigationBar() {
    return BlocBuilder<SellReportCubit, SellReportState>(
      builder: (context, state) {
        List totalQty = [];
        List totalSale = [];
        for (int i = 0; i < state.data!.sellReports.length; i++) {
          totalQty += [state.data!.sellReports[i].sellQty];
          totalSale += [state.data!.sellReports[i].subtotal];
        }
        double sumTotalQty = totalQty.fold(0,
            (previousValue, element) => previousValue + double.parse(element));
        double sumTotalSale = totalSale.fold(0,
            (previousValue, element) => previousValue + double.parse(element));

        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('total_amount'.tr),
              Text(GlobalFormatter.formatNumber(source: '$sumTotalQty')),
              Text(GlobalFormatter.formatNumber(source: '$sumTotalSale')),
            ],
          ),
        );
      },
    );
  }

  Container buildFilter() {
    return Container(
        width: double.infinity,
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
                  .read<SellReportCubit>()
                  .getSellReportByFilter(
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

  Widget buildHistory() {
    return BlocBuilder<SellReportCubit, SellReportState>(
        builder: (context, state) {
      final sellReports = state.data!.sellReports;
      return sellReports.isNotEmpty
          ? Expanded(
              child: Container(
                // margin: EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.separated(
                    controller: _scrollController,
                    shrinkWrap: true,
                    // physics: const BouncingScrollPhysics(),
                    itemCount: state.data!.sellReports.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      if (index < sellReports.length) {
                        return ByProductWidget.provider(
                          sellReport: sellReports.elementAt(index),
                        );
                      } else {
                        Future.delayed(const Duration(seconds: 5), () {
                          _scrollController.jumpTo(
                              _scrollController.position.maxScrollExtent);
                          // isLoading = true;
                        });
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                    }),
              ),
            )
          : _buildProductEmpty(context);
    });
  }

  Container _buildProductEmpty(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 30),
      // height: Get.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          GlobalImages.orderEmpty,
          width: MediaQuery.of(context).size.width / 2,
        ),
        const Text(
          'Không có sản phẩm',
          style: TextStyle(
            fontSize: Dimensions.FONT_SIZE_LARGE,
          ),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
