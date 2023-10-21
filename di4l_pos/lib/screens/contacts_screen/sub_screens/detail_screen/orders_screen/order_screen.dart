// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps, prefer_adjacent_string_concatenation, avoid_print, deprecated_member_use, sized_box_for_whitespace, non_constant_identifier_names, unused_element
import 'dart:async';
import 'dart:convert';

import 'package:after_layout/after_layout.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
// import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
// import 'package:di4l_pos/screens/contacts_screen/sub_screens/add_contact_screen/cubit/add_contact_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/contact_transaction_order_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:radio_grouped_buttons/radio_grouped_buttons.dart';

class OrdersCustomer extends StatefulWidget {
  final ContactModel? contactModel;

  static MultiBlocProvider provider({
    final ContactModel? contactModel,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomersCubit>(
          create: (context) => CustomersCubit(),
        ),
        BlocProvider<SuppliersCubit>(
          create: (context) => SuppliersCubit(),
        ),
      ],
      child: OrdersCustomer(
        contactModel: contactModel,
      ),
    );
  }

  const OrdersCustomer({Key? key, this.contactModel}) : super(key: key);

  @override
  State<OrdersCustomer> createState() => _OrdersCustomerState();
}

class _OrdersCustomerState extends State<OrdersCustomer> with AfterLayoutMixin {
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
    context.read<CustomersCubit>().getOrdersById(id: widget.contactModel!.id!);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                height: 12,
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              buildFilter(),
              buildInfoOrder(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  'detailed_history'.tr,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'day'.tr,
                        style: const TextStyle(
                            color: GlobalColors.kGreyTextColor, fontSize: 13),
                      ),
                      Text(
                        'order_details'.tr,
                        style: const TextStyle(
                            color: GlobalColors.kGreyTextColor, fontSize: 13),
                      )
                    ]),
              ),
              // Expanded(
              //   child: TabBarView(
              //     children: <Widget>[
              //       _buildOrderEmpty(context),
              //       buildHistory(),
              //       buildHistory(),
              //     ],
              //   ),
              // ),
              buildHistory(),
            ],
          ),
          floatingActionButton: ScrollingFabAnimatedCustom(
            height: 48,
            iconData: Icons.add,
            scrollController: _scrollController,
            text: widget.contactModel!.type! == 'supplier'
                ? 'purchases'.tr
                : 'create_order'.tr,
            onPress: () {
              widget.contactModel!.type == 'supplier'
                  ? navigator!.pushNamed(RouteGenerator.addStockPurchaseScreen)
                  : navigator!.pushNamed(RouteGenerator.selectPorductForOrder);
            },
          )),
    );
  }

  Container _buildOrderEmpty(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 30),
      // height: Get.height,
      width: Get.width,
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
          'Bạn chưa có đơn hàng nào với khách hàng này',
          style: TextStyle(
            fontSize: Dimensions.FONT_SIZE_LARGE,
          ),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }

  // Expanded _buidOderItem() {
  //   return Expanded(
  //     child: Column(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
  //           child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Text(
  //                   'Ngày',
  //                   style: TextStyle(
  //                       color: GlobalColors.kGreyTextColor, fontSize: 13),
  //                 ),
  //                 Text(
  //                   'Chi tiết đơn hàng',
  //                   style: TextStyle(
  //                       color: GlobalColors.kGreyTextColor, fontSize: 13),
  //                 )
  //               ]),
  //         ),
  //         Expanded(
  //           child: SingleChildScrollView(
  //             controller: _scrollController,
  //             child: Container(
  //                 margin: const EdgeInsets.symmetric(vertical: 5),
  //                 padding: const EdgeInsets.symmetric(vertical: 10),
  //                 decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(5),
  //                 ),
  //                 child: ListView.builder(
  //                   shrinkWrap: true,
  //                   physics: NeverScrollableScrollPhysics(),
  //                   itemCount: 10,
  //                   itemBuilder: (context, index) => Container(
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                       children: [
  //                         Column(
  //                           mainAxisAlignment: MainAxisAlignment.start,
  //                           children: [Text('30/10/00'), Text('8:00')],
  //                         ),
  //                         Container(
  //                           height: 50,
  //                           width: 1,
  //                           color: Colors.grey.withOpacity(0.5),
  //                         ),
  //                         Container(
  //                             width: MediaQuery.of(context).size.width - 120,
  //                             margin: const EdgeInsets.symmetric(vertical: 5),
  //                             padding: const EdgeInsets.symmetric(
  //                                 horizontal: 10, vertical: 10),
  //                             decoration: BoxDecoration(
  //                               color: Colors.grey.withOpacity(0.2),
  //                               borderRadius: BorderRadius.circular(5),
  //                             ),
  //                             child: Row(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceBetween,
  //                               children: [
  //                                 Column(
  //                                   children: [
  //                                     Container(
  //                                       padding:
  //                                           EdgeInsets.symmetric(horizontal: 3),
  //                                       decoration: BoxDecoration(
  //                                         color: GlobalColors.primaryColor
  //                                             .withOpacity(0.2),
  //                                         borderRadius:
  //                                             BorderRadius.circular(5),
  //                                       ),
  //                                       child: Text('Đã giao'),
  //                                     ),
  //                                     SizedBox(
  //                                       height: 10,
  //                                     ),
  //                                     Text('#')
  //                                   ],
  //                                 ),
  //                                 Column(
  //                                   children: [
  //                                     Text('1 sản phẩm'),
  //                                     SizedBox(
  //                                       height: 10,
  //                                     ),
  //                                     Text('#')
  //                                   ],
  //                                 )
  //                               ],
  //                             ))
  //                       ],
  //                     ),
  //                   ),
  //                 )),
  Container buildInfoOrder() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: BlocBuilder<CustomersCubit, CustomersState>(
        builder: (context, state) {
          List total = [];
          for (int i = 0; i < state.data!.orders.length; i++) {
            total += [state.data!.orders[i].finalTotal];
          }
          double sum = total.fold(
              0,
              (previousValue, element) =>
                  previousValue + double.parse(element));
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.monetization_on_outlined,
                          size: Dimensions.ICON_SIZE_SMALL,
                        ),
                        const SizedBox(width: 5),
                        Text('total_sale'.tr),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      '${GlobalFormatter.formatNumber(source: '${sum}')} đ',
                      // '${sum}' + ' đ',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 1,
                color: Colors.grey.withOpacity(0.5),
              ),
              Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.fact_check_outlined,
                          size: Dimensions.ICON_SIZE_SMALL,
                        ),
                        const SizedBox(width: 5),
                        Text('orders'.tr),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      '${state.data!.orders.length}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Container buildFilter() {
    return Container(
        width: Get.width,
        margin: const EdgeInsets.symmetric(vertical: 4),
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
                                                                    'dd/MM/yyyy')
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
                                                  style: TextStyle(
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
                                                                      'dd/MM/yyyy')
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
                  .read<CustomersCubit>()
                  .getOrdersById(
                      id: widget.contactModel!.id!,
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

  ButtonsTabBar buildButtonTabBar() {
    return ButtonsTabBar(
      backgroundColor: Colors.white,
      // unselectedBackgroundColor: Colors.transparent,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      labelStyle: const TextStyle(color: GlobalColors.primaryColor),
      tabs: <Widget>[
        const Tab(
          text: 'Hôm nay',
        ),
        const Tab(
          text: 'Tháng này',
        ),
        const Tab(
          text: 'Tháng trước',
        ),
      ],
    );
  }

  Column _builDebtItems() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Người giao dịch',
              style:
                  TextStyle(color: GlobalColors.kGreyTextColor, fontSize: 13),
            ),
            const Text(
              'Đã đưa',
              style:
                  TextStyle(color: GlobalColors.kGreyTextColor, fontSize: 13),
            ),
            const Text(
              'Đã nhận',
              style:
                  TextStyle(color: GlobalColors.kGreyTextColor, fontSize: 13),
            )
          ]),
        ),
        Expanded(
          child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListView.builder(
                // shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [const Text('30/10/00'), const Text('8:00')],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: const Text('jjjjjjjjjjjjjjj'),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: const Text('jjjjjjjjjjjjjjj'),
                      )
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }

  Widget buildHistory() {
    return BlocBuilder<CustomersCubit, CustomersState>(
      builder: (context, state) => state.data!.orders.isNotEmpty
          ? Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.builder(
                    reverse: true,
                    controller: _scrollController,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.data!.orders.length,
                    itemBuilder: (context, index) => ContactTransactionOrder(
                        sells: state.data!.orders[index],
                        onPressed: (SellData? sellData) => navigator!.pushNamed(
                              RouteGenerator.detailOrderScreen,
                              arguments: {
                                'SELL_DATA': sellData,
                              },
                            ))),
              ),
            )
          : _buildOrderEmpty(context),
    );
  }
}
