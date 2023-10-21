// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_print, avoid_unnecessary_containers, deprecated_member_use, sized_box_for_whitespace, prefer_adjacent_string_concatenation, unused_element

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/common/text_avatar.dart';
import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/contacts/response/ledger_response.dart';
import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/add_contact_screen/cubit/add_contact_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/detail_screen/legder_book_screen/cubit/ledger_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/contact_transaction_debt_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/contact_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:radio_grouped_buttons/radio_grouped_buttons.dart';

class LedgerBook extends StatefulWidget {
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
        BlocProvider<LedgerCubit>(
          create: (context) => LedgerCubit(),
        ),
      ],
      child: LedgerBook(
        contactModel: contactModel,
      ),
    );
  }

  const LedgerBook({
    Key? key,
    this.contactModel,
  }) : super(key: key);

  @override
  State<LedgerBook> createState() => _LedgerBookState();
}

class _LedgerBookState extends State<LedgerBook> with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _txtDateStart = TextEditingController();
  final TextEditingController _txtDateEnd = TextEditingController();

  // List<Object> buttonList = [
  //   {"today": "Hôm nay"},
  //   {"yesterday": "Hôm qua"},
  //   {"this_month": "Tháng này"},
  //   {"last_month": "Tháng trước"},
  //   {"last_30_days": "30 ngày"},
  //   {"this_year": "Năm nay"},
  //   {"all": "Tất cả"}
  // ];

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
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<LedgerCubit>().getLedgers(
          id: widget.contactModel!.id!,
          // startDate: '2023-04-19',
          // endDate: '2023-04-20'
        );
  }

  // @override
  // void dispose() {
  //   _txtDateStart.clear();
  //   _txtDateEnd.clear();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            buildInfoDebt(),
            buildFilter(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                'detailed_history'.tr,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'transaction_details'.tr,
                      style: TextStyle(
                          color: GlobalColors.kGreyTextColor, fontSize: 13),
                    ),
                    Text(
                      'debit'.tr,
                      style: TextStyle(
                          color: GlobalColors.kGreyTextColor, fontSize: 13),
                    ),
                    Text(
                      'credit'.tr,
                      style: TextStyle(
                          color: GlobalColors.kGreyTextColor, fontSize: 13),
                    )
                  ]),
            ),
            buildHistory()
          ],
        ),
        // floatingActionButton: ScrollingFabAnimatedCustom(
        //   height: 48,
        //   iconData: Icons.add,
        //   scrollController: _scrollController,
        //   text: 'Tạo giao dịch',
        //   onPress: () {
        //     navigator!.pushNamed(
        //       RouteGenerator.detailDebtsScreen,
        //       arguments: {
        //         'CONTACT_MODEL': widget.contactModel,
        //       },
        //     );
        //   },
        // )
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

  Container buildInfoDebt() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: BlocBuilder<LedgerCubit, LedgerState>(
        builder: (context, state) {
          final _ledger = state.data?.ledgers;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.monetization_on_outlined,
                        color: GlobalColors.primaryColor,
                        size: Dimensions.ICON_SIZE_SMALL,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'total_invoice'.tr,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w500
                            // fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${GlobalFormatter.formatNumber(source: '${_ledger?.totalInvoice}')} đ',
                    // '${_ledger?.totalInvoice}' + ' đ',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.primaryColor
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.monetization_on_outlined,
                        color: GlobalColors.primaryColor,
                        size: Dimensions.ICON_SIZE_SMALL,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'total_paid'.tr,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w500
                            // fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${GlobalFormatter.formatNumber(source: '${_ledger?.totalPaid}')} đ',
                    // '${_ledger?.totalInvoice}' + ' đ',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.primaryColor
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ],
          );
        },
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
                  .read<LedgerCubit>()
                  .getLedgers(
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

  ButtonsTabBar buildButtonTabBar() {
    return ButtonsTabBar(
      backgroundColor: Colors.white,
      // unselectedBackgroundColor: Colors.transparent,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      labelStyle: const TextStyle(color: GlobalColors.primaryColor),
      tabs: const <Widget>[
        Tab(
          text: 'Hôm nay',
        ),
        Tab(
          text: 'Tháng này',
        ),
        Tab(
          text: 'Tháng trước',
        ),
      ],
    );
  }

  Widget buildHistory() {
    return BlocBuilder<LedgerCubit, LedgerState>(builder: (context, state) {
      final _ledger = state.data!.ledgers;
      final _ledgers = state.data!.ledgers?.ledger ?? [];
      return _ledgers.isNotEmpty
          ? Flexible(
              child: Container(
                // margin: EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.separated(
                    reverse: true,
                    controller: _scrollController,
                    shrinkWrap: true,
                    // physics: const BouncingScrollPhysics(),
                    itemCount: state.data!.ledgers!.ledger!.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) =>
                        // ContactTransactionWidget(
                        //     transaction:
                        //         state.data!.transactionsDebt[index]),
                        ContactTransactionDebt(
                          ledger: state.data!.ledgers!.ledger![index],
                          onPressed: (Ledger? ledger) {
                            _buildModalBottomSheetTransactionDebt(
                                context, ledger);
                          },
                        )),
              ),
            )
          : _builDebtEmpty(context);
    });
  }

  Future<dynamic> _buildModalBottomSheetTransactionDebt(
      BuildContext context, Ledger? ledger) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        )),
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                dense: true,
                leading: TextButton.icon(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.orange,
                      padding: const EdgeInsets.all(0)),
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  label: Text('delete'.tr),
                ),
                title: Text(
                  'transaction_details'.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.clear)),
              ),
              ledger!.type == 'Bán hàng'
                  ? ListTile(
                      minLeadingWidth: 0,
                      dense: true,
                      leading: const Icon(
                        Icons.add_circle_outline,
                        color: GlobalColors.primaryColor,
                      ),
                      title: const Text(
                        'Tôi đã nhận',
                        style: TextStyle(
                            fontSize: Dimensions.FONT_SIZE_LARGE,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        DateFormat('hh:mm - dd/MM/yy')
                            .format(DateTime.parse('${ledger.date}')),
                      ),
                      trailing: Text(
                        '${GlobalFormatter.formatNumber(source: '${ledger.debit}')} đ',

                        // '${ledger.debit}' + ' đ',
                        style: const TextStyle(
                            fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                            fontWeight: FontWeight.bold,
                            color: GlobalColors.primaryColor),
                      ),
                    )
                  : ListTile(
                      minLeadingWidth: 0,
                      dense: true,
                      leading: const Icon(
                        Icons.add_circle_outline,
                        color: GlobalColors.debtColor,
                      ),
                      title: const Text(
                        'Tôi ghi nợ',
                        style: TextStyle(
                            fontSize: Dimensions.FONT_SIZE_LARGE,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        DateFormat('hh:mm - dd/MM/yy')
                            .format(DateTime.parse('${ledger.date}')),
                      ),
                      trailing: Text(
                        '${GlobalFormatter.formatNumber(source: '${ledger.credit}')} đ',
                        // '${ledger.credit}' + ' đ',
                        style: const TextStyle(
                            fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                            fontWeight: FontWeight.bold,
                            color: GlobalColors.debtColor),
                      ),
                    ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Divider(
                      thickness: 1,
                    ),
                    Text('Khách hàng'),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                leading: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.1),
                    child: Text(
                      TextAvatar.getInitials(
                          '${widget.contactModel?.firstName}'),
                      style: const TextStyle(
                          color: GlobalColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                title: Text('${widget.contactModel?.name}',
                    style: const TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold)),
                subtitle: Text('${widget.contactModel?.mobile}'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: const Divider(
                  thickness: 1,
                  // height: 50,
                ),
              ),
              ListTile(
                dense: true,

                title: const Text(
                  'Cho phép thanh toán online',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // title: null,
                trailing: TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: GlobalColors.flButtonColor),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Cài đặt'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: Dimensions.ICON_SIZE_EXTRA_SMALL,
                        )
                      ],
                    )),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: const Divider(
                  thickness: 1,
                  // height: 50,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side:
                            const BorderSide(color: GlobalColors.primaryColor),
                        backgroundColor: Colors.white,
                        foregroundColor: GlobalColors.primaryColor,
                      ),
                      onPressed: () {},
                      child:
                          const Icon(Icons.drive_file_rename_outline_rounded),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              color: GlobalColors.primaryColor),
                          backgroundColor: Colors.white,
                          foregroundColor: GlobalColors.primaryColor,
                        ),
                        onPressed: () {},
                        child: Row(
                          // mainAxisAlignment:
                          //     MainAxisAlignment
                          //         .spaceEvenly,
                          children: const [
                            Icon(Icons.telegram),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Gửi xác nhận',
                              style: TextStyle(
                                  fontSize: Dimensions.FONT_SIZE_LARGE),
                            ),
                          ],
                        )),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side:
                            const BorderSide(color: GlobalColors.primaryColor),
                        backgroundColor: GlobalColors.primaryColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Thanh toán',
                        style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  Container _builDebtEmpty(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      // padding: EdgeInsets.only(bottom: 50),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          GlobalImages.debtEmpty,
          width: MediaQuery.of(context).size.width / 2,
        ),
        const Text(
          'Tạo giao dịch ngay bây giờ, SoBanHang sẽ giúp bạn ghi nhớ mọi thứ',
          style: TextStyle(
            fontSize: Dimensions.FONT_SIZE_LARGE,
          ),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }

  Column _buildDebtItems() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Người giao dịch',
                  style: TextStyle(
                      color: GlobalColors.kGreyTextColor, fontSize: 13),
                ),
                Text(
                  'Đã đưa',
                  style: TextStyle(
                      color: GlobalColors.kGreyTextColor, fontSize: 13),
                ),
                Text(
                  'Đã nhận',
                  style: TextStyle(
                      color: GlobalColors.kGreyTextColor, fontSize: 13),
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
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index) => Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [Text('30/10/00'), Text('8:00')],
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
}
