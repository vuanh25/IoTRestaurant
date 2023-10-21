// ignore_for_file: sized_box_for_whitespace, prefer_adjacent_string_concatenation, avoid_print, non_constant_identifier_names, unnecessary_string_interpolations

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/text_avatar.dart';
import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/enums/add_debt_value.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/contacts/response/ledger_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/detail_screen/legder_book_screen/cubit/ledger_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/contact_transaction_debt_widget.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/button_with_icon.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/calculator/calculator_bloc/calculator_bloc.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/calculator/keyboard.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/check_box_custom.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/custom_appbar_with_icon.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/custom_card_debt.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/custom_card_funds.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/custom_radio_list_tile.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DetailLedgersScreen extends StatefulWidget {
  // static BlocProvider<CalculatorBloc> provider() {
  //   return BlocProvider(
  //     create: (context) => CalculatorBloc(),
  //     child: const DetailDebtsScreen(),
  //   );
  // }

  final AddContactType? addContactType;
  final ContactModel? contactModel;

  static MultiBlocProvider provider({
    AddContactType? addContactType,
    ContactModel? contactModel,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalculatorBloc>(
          create: (context) => CalculatorBloc(),
        ),
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
      child: DetailLedgersScreen(
        addContactType: addContactType,
        contactModel: contactModel,
      ),
    );
  }

  const DetailLedgersScreen({Key? key, this.addContactType, this.contactModel})
      : super(key: key);

  @override
  State<DetailLedgersScreen> createState() => _DetailLedgersScreenState();
}

class _DetailLedgersScreenState extends State<DetailLedgersScreen>
    with AfterLayoutMixin {
  int _value = 0;
  bool _isSelected = false;
  bool _savedCus = false;
  final TextEditingController _txtFunds = TextEditingController();

  final _txtMoney = MoneyMaskedTextController(
    thousandSeparator: '.',
    precision: 0,
    decimalSeparator: '',
  );

  final List<String> _products =
      List.generate(100, (index) => "Fund ${index.toString()}");

  void onPressed(String command) {
    setState(() {
      context.read<CalculatorBloc>().add(CalculatorEvent(command: command));
    });
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<LedgerCubit>().getLedgers(id: widget.contactModel!.id!);

    _txtFunds.text = '  ';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: GlobalColors.bgColor,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildInfoDebt(),
          _buildFeatureButton(),
          _buildTitleListView(),
          _buildHistory()
        ],
      ),
      bottomSheet: _buildBottomSheet(),
    );
  }

  Container _buildBottomSheet() {
    return Container(
      color: GlobalColors.bgColor,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppButtonWithIcon(
              title: 'Tôi đã đưa',
              icon: const Icon(Icons.remove_circle_outline),
              color: GlobalColors.debtColor,
              onPressed: () {
                navigator!.pushNamed(RouteGenerator.addDebtScreen, arguments: {
                  'ADD_TYPE': AddType.NEW,
                  'ADD_VALUE': AddDebtValue.GIVE
                });
              }),
          AppButtonWithIcon(
              title: 'Tôi đã nhận',
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () {
                navigator!.pushNamed(RouteGenerator.addDebtScreen, arguments: {
                  'ADD_TYPE': AddType.NEW,
                  'ADD_VALUE': AddDebtValue.BORROW
                });
              })
        ],
      ),
    );
  }

  Widget _buildHistory() {
    return BlocBuilder<LedgerCubit, LedgerState>(
      builder: (context, state) {
        final _ledgers = state.data!.ledgers?.ledger ?? [];
        return _ledgers.isNotEmpty
            ? Expanded(
                child: Container(
                  // margin: EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.data!.ledgers!.ledger!.length,
                      separatorBuilder: (context, index) => Container(
                            height: 5,
                            width: double.infinity,
                            color: GlobalColors.bgColor,
                          ),
                      itemBuilder: (context, index) => ContactTransactionDebt(
                            ledger: state.data!.ledgers!.ledger![index],
                            onPressed: (Ledger? ledger) {
                              _buildModalBottomSheetTransactionDebt(
                                  context, ledger);
                            },
                          )),
                ),
              )
            : Container();

        // return Container(
        //   margin: const EdgeInsets.symmetric(horizontal: 10),
        //   height: 250,
        //   child: ListView.builder(
        //     // shrinkWrap: true,
        //     // physics: BouncingScrollPhysics(),
        //     itemCount: 50,
        //     itemBuilder: (context, index) => Card(
        //       child: Padding(
        //         padding: const EdgeInsets.symmetric(vertical: 10),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Expanded(
        //                 flex: 2,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: const [Text('04/04/23'), Text('Ghi chú')],
        //                 )),
        //             const Flexible(
        //                 flex: 1,
        //                 child: Text(
        //                   'data',
        //                 )),
        //             const Flexible(flex: 1, child: Text('data')),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // );
      },
    );
  }

  Padding _buildTitleListView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Expanded(
              flex: 2,
              child: Text(
                '1 giao dịch',
                style: TextStyle(
                    color: GlobalColors.kGreyTextColor,
                    fontSize: Dimensions.FONT_SIZE_SMALL),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                'Tôi đã đưa',
                style: TextStyle(
                    color: GlobalColors.kGreyTextColor,
                    fontSize: Dimensions.FONT_SIZE_SMALL),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                'Tôi đã nhận',
                style: TextStyle(
                    color: GlobalColors.kGreyTextColor,
                    fontSize: Dimensions.FONT_SIZE_SMALL),
              ),
            )
          ]),
    );
  }

  CustomAppBarWithIcon _buildAppBar() {
    String? avatar = '${widget.contactModel!.lastName}'.tr;
    String? title = '${widget.contactModel!.name}'.tr;
    String? mobile = '${widget.contactModel!.mobile}'.tr;
    return CustomAppBarWithIcon(
      onTap: () {
        navigator!.pushNamed(RouteGenerator.addContactScreen, arguments: {
          'ADD_CONTACT_TYPE': AddContactType.UPDATE_CUSTOMER,
          'CONTACT_MODEL': widget.contactModel,
        });
      },
      avatar: avatar,
      title: title,
      mobile: mobile,
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                _savedCus = !_savedCus;
              });
            },
            icon: _savedCus
                ? const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )
                : const Icon(Icons.star_border)),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone_forwarded,
            size: Dimensions.ICON_SIZE_DEFAULT,
          ),
        ),
        IconButton(
          onPressed: () {
            _showGuide();
          },
          icon: const Icon(
            Icons.info_outline,
            size: Dimensions.ICON_SIZE_DEFAULT,
          ),
        ),
      ],
    );
  }

  Future<dynamic> _showGuide() {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        )),
        context: context,
        builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                    ),
                    height: 4,
                    width: 50,
                    margin: const EdgeInsets.only(bottom: 10)),
                const Text(
                  'Hướng dẫn sử dụng',
                  style: TextStyle(
                      fontSize: Dimensions.FONT_SIZE_LARGE,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(GlobalImages.hdsd),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            'Khi bạn nhận được khoản trả nợ hoặc bạn đã hoàn thành giao dịch hãy ấn vào nút'),
                        Container(
                          width: 100,
                          height: 50,
                          child: Image.asset(
                            GlobalImages.btPaid,
                          ),
                        ),
                        const Text('Để làm mới lại các giao dịch bạn nhé'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Hỗ trợ viên',
                                  style: TextStyle(
                                      color: GlobalColors.kGreyTextColor),
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  'Đã hiểu',
                                  style: TextStyle(
                                      color: GlobalColors.primaryColor),
                                ))
                          ],
                        )
                      ]),
                )
              ],
            ));
  }

  Flexible _buildFeatureButton() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          childAspectRatio: 0.9,
          children: [
            CustomCardDebt(
              onTap: () {},
              widget: const Icon(
                Icons.file_download_outlined,
                color: GlobalColors.primaryColor,
                size: Dimensions.ICON_SIZE_LARGE,
              ),
              title: 'Tải báo cáo',
            ),
            CustomCardDebt(
              onTap: () {
                _showFeatureDebtReminder();
              },
              widget: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(GlobalImages.logoZalo)),
              title: 'Nhắc nợ qua Zalo',
            ),
            CustomCardDebt(
              onTap: () {
                _showFeatureDebtReminder();
              },
              widget: const Icon(
                Icons.sms_outlined,
                size: Dimensions.ICON_SIZE_LARGE,
                color: GlobalColors.primaryColor,
              ),
              title: 'Nhắc nợ qua SMS',
            ),
            CustomCardDebt(
              onTap: () {
                _showFeatureDebtReminder();
              },
              widget: const Icon(
                Icons.more_horiz,
                size: Dimensions.ICON_SIZE_LARGE,
                color: GlobalColors.kGreyTextColor,
              ),
              title: 'Hình thức khác',
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showFeatureDebtReminder() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        )),
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 0.1))),
                    child: const Text(
                      'Nhắc nợ đến Nhat',
                      style: TextStyle(
                          fontSize: Dimensions.FONT_SIZE_LARGE,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.1),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nhắc nhở thanh toán của bạn',
                            style: TextStyle(
                                fontSize: Dimensions.FONT_SIZE_LARGE,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            '100.000' + ' đ',
                            style: TextStyle(
                                fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                                fontWeight: FontWeight.bold,
                                color: GlobalColors.debtColor),
                          ),
                          Text(
                            DateFormat('dd/MM/yyyy').format(DateTime.now()),
                            style: const TextStyle(
                              fontSize: Dimensions.FONT_SIZE_DEFAULT,
                              color: GlobalColors.kGreyTextColor,
                            ),
                          ),
                          const Text(
                            'Gửi từ 0123456789',
                            style: TextStyle(
                                fontSize: Dimensions.FONT_SIZE_LARGE,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            '0123456789',
                            style: TextStyle(
                              fontSize: Dimensions.FONT_SIZE_DEFAULT,
                              color: GlobalColors.kGreyTextColor,
                            ),
                          ),
                        ]),
                  ),
                  const Divider(
                    thickness: 1,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                color: GlobalColors.primaryColor),
                            backgroundColor: Colors.white,
                            foregroundColor: GlobalColors.primaryColor,
                            fixedSize: const Size(160, 40)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Quay lại',
                          style: TextStyle(
                              fontSize: Dimensions.FONT_SIZE_LARGE,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                color: GlobalColors.primaryColor),
                            backgroundColor: GlobalColors.primaryColor,
                            fixedSize: const Size(160, 40)),
                        onPressed: () {},
                        child: const Text(
                          'Gửi lời nhắc',
                          style: TextStyle(
                              fontSize: Dimensions.FONT_SIZE_LARGE,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ));
  }

  Padding _buildInfoDebt() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 0.1))),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Tôi phải thu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.FONT_SIZE_LARGE,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('100.000' + ' đ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                              color: GlobalColors.debtColor))
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: GlobalColors.primaryColor),
                      backgroundColor: GlobalColors.primaryColor,
                    ),
                    onPressed: () {
                      //_showPayScreen
                      _showPayScreen();
                    },
                    child: const Text(
                      'Thanh toán',
                      style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month_outlined),
              minLeadingWidth: 0,
              horizontalTitleGap: 8,
              title: const Text(
                'Đặt lịch nhắc nợ tự động',
                style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
              ),
              trailing: const Text(
                'Thay đổi',
                style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_SMALL,
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryColor),
              ),
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              dense: true,
              onTap: () {
                //_showDebtReminder
                showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10.0),
                    )),
                    context: context,
                    builder: (context) =>
                        StatefulBuilder(builder: (context, setState) {
                          final now = DateTime.now();
                          final tomorrow = DateFormat('dd/MM/yyyy')
                              .format(now.add(const Duration(days: 1)));
                          final next_week = DateFormat('dd/MM/yyyy')
                              .format(now.add(const Duration(days: 7)));

                          final this_month_end = DateFormat('dd/MM/yyyy')
                              .format(DateTime(now.year, now.month + 1, 0));

                          final next_30_day = DateFormat('dd/MM/yyyy')
                              .format(now.add(const Duration(days: 30)));
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                  ),
                                  height: 4,
                                  width: 50,
                                  margin: const EdgeInsets.only(bottom: 10)),
                              const Text(
                                'Chọn lịch nhắc nhanh: Nhat',
                                style: TextStyle(
                                    fontSize: Dimensions.FONT_SIZE_LARGE,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Column(children: [
                                  // RadioListTile<dynamic>(
                                  //   shape: Border(
                                  //       bottom: BorderSide(
                                  //           color:
                                  //               Colors.grey.withOpacity(0.5))),
                                  //   contentPadding: EdgeInsets.zero,
                                  //   controlAffinity:
                                  //       ListTileControlAffinity.trailing,
                                  //   title: Text.rich(
                                  //     TextSpan(
                                  //       children: [
                                  //         TextSpan(
                                  //           text: 'Ngày mai',
                                  //         ),
                                  //         WidgetSpan(
                                  //           child: SizedBox(width: 10),
                                  //         ),
                                  //         WidgetSpan(
                                  //           child: Icon(
                                  //             Icons.calendar_month,
                                  //             size: Dimensions.ICON_SIZE_SMALL,
                                  //           ),
                                  //         ),
                                  //         TextSpan(
                                  //           text: '05/04/23',
                                  //         )
                                  //       ],
                                  //     ),
                                  //   ),
                                  //   value: 1,
                                  //   groupValue: _value,
                                  //   onChanged: (value) {
                                  //     setState(() {
                                  //       // _value = value;
                                  //     });
                                  //   },
                                  // ),
                                  CustomRadioListTile<int>(
                                    title: 'Ngày mai',
                                    date: '$tomorrow',
                                    value: 1,
                                    groupValue: _value,
                                    // title:
                                    onChanged: (value) =>
                                        setState(() => _value = value!),
                                  ),
                                  CustomRadioListTile<int>(
                                    title: 'Tuần sau',
                                    date: '$next_week',
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (value) =>
                                        setState(() => _value = value!),
                                  ),
                                  CustomRadioListTile<int>(
                                    title: 'Cuối tháng',
                                    date: '$this_month_end',
                                    value: 3,
                                    groupValue: _value,
                                    onChanged: (value) =>
                                        setState(() => _value = value!),
                                  ),
                                  CustomRadioListTile<int>(
                                    title: 'Tháng sau',
                                    date: '$next_30_day',
                                    value: 4,
                                    groupValue: _value,
                                    onChanged: (value) =>
                                        setState(() => _value = value!),
                                  ),
                                  RadioListTile<int>(
                                    contentPadding: EdgeInsets.zero,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    title: const Text('Chọn ngày'),
                                    value: 5,
                                    groupValue: _value,
                                    onChanged: (value) async {
                                      setState(() {
                                        _value = value!;
                                      });
                                      await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1970),
                                          lastDate: DateTime(2101));
                                    },
                                  ),
                                  CustomButton(
                                    type: ButtonType.BUTTON_TEXT_CUSTOM,
                                    label: 'Đặt lịch',
                                    onPressed: () {},
                                  )
                                ]),
                              ),
                            ],
                          );
                        }));
              },
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showPayScreen() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        )),
        context: context,
        builder: (context) => PayScreen.provider());
    // StatefulBuilder(builder: (context, setState) {
    //   return Padding(
    //     padding: EdgeInsets.symmetric(
    //         horizontal: 10, vertical: 10),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Container(
    //           padding: EdgeInsets.only(bottom: 10),
    //           alignment: Alignment.center,
    //           width:
    //               MediaQuery.of(context).size.width,
    //           decoration: const BoxDecoration(
    //               border: Border(
    //                   bottom:
    //                       BorderSide(width: 0.1))),
    //           child: Text(
    //             'Thanh toán nợ cho khách',
    //             style: TextStyle(
    //                 fontSize:
    //                     Dimensions.FONT_SIZE_LARGE,
    //                 fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         Container(
    //           margin:
    //               EdgeInsets.symmetric(vertical: 10),
    //           padding: EdgeInsets.symmetric(
    //               horizontal: 15),
    //           // color: Colors.red,
    //           width:
    //               MediaQuery.of(context).size.width,
    //           // height: 200,
    //           child: Column(
    //               crossAxisAlignment:
    //                   CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   'Nhập số tiền',
    //                   style: TextStyle(
    //                       fontSize: Dimensions
    //                           .FONT_SIZE_LARGE,
    //                       color: GlobalColors
    //                           .primaryColor),
    //                 ),
    //                 TextFormField(
    //                   // enabled: false,
    //                   // autofocus: true,
    //                   controller: _txtMoney,
    //                 ),
    //                 SizedBox(
    //                   height: 10,
    //                 ),
    //               ]),
    //         ),
    //         LabeledCheckbox(
    //             label:
    //                 'Ghi lại giao dịch vào thu/chi',
    //             value: _isSelected,
    //             onChanged: (bool newValue) {
    //               setState(() {
    //                 _isSelected = newValue;
    //               });
    //             }),
    //         _isSelected
    //             ? Container(
    //                 margin: EdgeInsets.symmetric(
    //                     vertical: 10),
    //                 padding: EdgeInsets.symmetric(
    //                     horizontal: 15),
    //                 child: Column(
    //                   children: [
    //                     TextField(
    //                       controller: _txtFunds,
    //                       onTap: () {
    //                         _showFunds(context);
    //                       },
    //                       readOnly: true,
    //                       enabled: true,
    //                       // autofocus: true,
    //                       decoration: InputDecoration(
    //                         isDense: true,
    //                         enabledBorder:
    //                             OutlineInputBorder(
    //                           borderSide: BorderSide(
    //                             color: GlobalColors
    //                                 .kGreyTextColor,
    //                           ),
    //                         ),
    //                         focusedBorder:
    //                             OutlineInputBorder(
    //                           borderSide: BorderSide(
    //                             color: Colors.black,
    //                           ),
    //                         ),
    //                         // label: Text('Nguồn tiền'),
    //                         labelText: 'Nguồn tiền',
    //                         labelStyle: TextStyle(
    //                             color: GlobalColors
    //                                 .kGreyTextColor),
    //                         suffixIcon: Icon(
    //                           Icons.arrow_drop_down,
    //                           color: GlobalColors
    //                               .kGreyTextColor,
    //                         ),
    //                       ),
    //                     ),
    //                     Row(
    //                       children: [
    //                         TextButton(
    //                             onPressed: () {},
    //                             child:
    //                                 Text('Tiền mặt')),
    //                         TextButton(
    //                             onPressed: () {},
    //                             child: Text(
    //                                 'Ví điện tử'))
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               )
    //             : Container(),
    //         Padding(
    //           padding: EdgeInsets.symmetric(
    //               horizontal: 10),
    //           child: Column(
    //             children: [
    //               Row(
    //                 mainAxisAlignment:
    //                     MainAxisAlignment
    //                         .spaceBetween,
    //                 children: [
    //                   ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                         side: BorderSide(
    //                             color: GlobalColors
    //                                 .primaryColor),
    //                         backgroundColor:
    //                             Colors.white,
    //                         foregroundColor:
    //                             GlobalColors
    //                                 .primaryColor,
    //                         fixedSize: Size(150, 50)),
    //                     onPressed: () {
    //                       Navigator.of(context).pop();
    //                     },
    //                     child: Text(
    //                       'Quay lại',
    //                       style: TextStyle(
    //                           fontSize: Dimensions
    //                               .FONT_SIZE_LARGE,
    //                           fontWeight:
    //                               FontWeight.bold),
    //                     ),
    //                   ),
    //                   ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                         side: BorderSide(
    //                             color: GlobalColors
    //                                 .primaryColor),
    //                         backgroundColor:
    //                             GlobalColors
    //                                 .primaryColor,
    //                         fixedSize: Size(150, 50)),
    //                     onPressed: () {},
    //                     child: Text(
    //                       'Thanh toán',
    //                       style: TextStyle(
    //                           fontSize: Dimensions
    //                               .FONT_SIZE_LARGE,
    //                           fontWeight:
    //                               FontWeight.bold),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               Keyboard(onPressed)
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }));
  }

  Future<dynamic> _showFunds(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        )),
        context: context,
        builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  height: 4,
                  width: 50,
                ),
                ListTile(
                  dense: true,
                  leading: TextButton.icon(
                      onPressed: () {
                        _showEditFunds(context);
                      },
                      icon: const Icon(Icons.drive_file_rename_outline_rounded),
                      label: const Text('Chỉnh sửa')),
                  title: const Text(
                    'Nguồn tiền',
                    style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                isDense: true,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: GlobalColors.kGreyTextColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: GlobalColors.primaryColor,
                                  ),
                                ),
                                hintText: 'Tìm tên nguồn tiền',
                                labelStyle: TextStyle(
                                    color: GlobalColors.kGreyTextColor),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: GlobalColors.flButtonColor,
                                  foregroundColor: Colors.white,
                                  fixedSize: const Size(40, 50)),
                              onPressed: () {
                                _showCreateFund(context);
                              },
                              child: const Icon(Icons.add))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Danh sách nguồn tiền',
                        style: TextStyle(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      crossAxisCount: 3,
                      childAspectRatio: 1.5,
                      children: const [
                        CustomCardFund(title: 'Chưa phân loại'),
                        CustomCardFund(title: 'Tiền mặt'),
                        CustomCardFund(title: 'Ví điện tử'),
                        CustomCardFund(title: 'Ngân hàng'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ));
  }

  Future<dynamic> _showEditFunds(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        )),
        context: context,
        builder: (context) => Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Center(
                      child: Text(
                    'Chỉnh sửa',
                    style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold),
                  )),
                  trailing: IconButton(
                    alignment: Alignment.centerRight,
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                isDense: true,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: GlobalColors.kGreyTextColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: GlobalColors.primaryColor,
                                  ),
                                ),
                                hintText: 'Tìm tên nguồn tiền',
                                labelStyle: TextStyle(
                                    color: GlobalColors.kGreyTextColor),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: GlobalColors.flButtonColor,
                                  foregroundColor: Colors.white,
                                  fixedSize: const Size(40, 50)),
                              onPressed: () {
                                _showCreateFund(context);
                              },
                              child: const Icon(Icons.add))
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ReorderableListView.builder(
                      itemCount: _products.length,
                      itemBuilder: (context, index) {
                        final String productName = _products[index];
                        return Card(
                          key: ValueKey(productName),
                          elevation: 1,
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            // contentPadding: const EdgeInsets.all(25)
                            leading: const Icon(Icons.remove_circle),
                            title: Text(
                              productName,
                              style: const TextStyle(fontSize: 18),
                            ),
                            trailing: const Icon(
                              FontAwesomeIcons.upDownLeftRight,
                            ),
                            onTap: () {/* Do something else */},
                          ),
                        );
                      },
                      // The reorder function
                      onReorder: (oldIndex, newIndex) {
                        setState(() {
                          if (newIndex > oldIndex) {
                            newIndex = newIndex - 1;
                          }
                          final element = _products.removeAt(oldIndex);
                          _products.insert(newIndex, element);
                        });
                      }),
                )
              ],
            ));
  }

  Future<dynamic> _showCreateFund(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        )),
        context: context,
        builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text(
                    'Tạo nguồn tiền mới',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  trailing: IconButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerRight,
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Tên nguồn tiền',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const TextField(
                        decoration:
                            InputDecoration(hintText: 'Ví dụ: Thẻ tín dụng'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Số dư ban đầu',
                        style: TextStyle(
                            color: GlobalColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        initialValue: '0',
                        decoration: const InputDecoration(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      color: GlobalColors.kGreyTextColor),
                                  backgroundColor: Colors.white,
                                  foregroundColor: GlobalColors.kGreyTextColor,
                                  fixedSize: const Size(160, 45)),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Quay lại',
                                style: TextStyle(
                                    fontSize: Dimensions.FONT_SIZE_LARGE,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      color: GlobalColors.primaryColor),
                                  backgroundColor: GlobalColors.primaryColor,
                                  fixedSize: const Size(160, 45)),
                              onPressed: () {},
                              child: const Text(
                                'Thanh toán',
                                style: TextStyle(
                                    fontSize: Dimensions.FONT_SIZE_LARGE,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Keyboard(onPressed)
                    ],
                  ),
                ),
              ],
            ));
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
                  label: const Text('Xóa'),
                ),
                title: const Text(
                  'Chi tiết giao dịch',
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
                        '${ledger.debit}' + ' đ',
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
                        '${ledger.credit}' + ' đ',
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
}

class PayScreen extends StatefulWidget {
  static BlocProvider<CalculatorBloc> provider() {
    return BlocProvider(
      create: (context) => CalculatorBloc(),
      child: PayScreen(),
    );
  }

  const PayScreen({Key? key}) : super(key: key);

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> with AfterLayoutMixin {
  final TextEditingController _txtFunds = TextEditingController();

  final _txtMoney = MoneyMaskedTextController(
    thousandSeparator: '.',
    precision: 0,
    decimalSeparator: '',
  );

  bool _isSelected = false;

  final List<String> _products =
      List.generate(100, (index) => "Fund ${index.toString()}");

  void onPressed(String command) {
    setState(() {
      context.read<CalculatorBloc>().add(CalculatorEvent(command: command));
    });
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 0.1))),
            child: Text(
              'Thanh toán nợ cho khách',
              style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_LARGE,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 15),
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            // height: 200,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Nhập số tiền',
                style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    color: GlobalColors.primaryColor),
              ),
              BlocBuilder<CalculatorBloc, CalculatorState>(
                builder: (_, state) {
                  _txtMoney.text = state.value;
                  return TextFormField(
                    enabled: false,
                    // autofocus: true,
                    controller: _txtMoney,
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
          LabeledCheckbox(
              label: 'Ghi lại giao dịch vào thu/chi',
              value: _isSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected = newValue;
                });
              }),
          _isSelected
              ? Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      TextField(
                        controller: _txtFunds,
                        onTap: () {
                          // _showFunds(context);
                        },
                        readOnly: true,
                        enabled: true,
                        // autofocus: true,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalColors.kGreyTextColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          // label: Text('Nguồn tiền'),
                          labelText: 'Nguồn tiền',
                          labelStyle:
                              TextStyle(color: GlobalColors.kGreyTextColor),
                          suffixIcon: Icon(
                            Icons.arrow_drop_down,
                            color: GlobalColors.kGreyTextColor,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(onPressed: () {}, child: Text('Tiền mặt')),
                          TextButton(
                              onPressed: () {}, child: Text('Ví điện tử'))
                        ],
                      )
                    ],
                  ),
                )
              : Container(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: GlobalColors.primaryColor),
                          backgroundColor: Colors.white,
                          foregroundColor: GlobalColors.primaryColor,
                          fixedSize: Size(150, 50)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Quay lại',
                        style: TextStyle(
                            fontSize: Dimensions.FONT_SIZE_LARGE,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: GlobalColors.primaryColor),
                          backgroundColor: GlobalColors.primaryColor,
                          fixedSize: Size(150, 50)),
                      onPressed: () {},
                      child: Text(
                        'Thanh toán',
                        style: TextStyle(
                            fontSize: Dimensions.FONT_SIZE_LARGE,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Keyboard(onPressed)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
