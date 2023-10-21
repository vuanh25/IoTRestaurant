import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/enums/add_debt_value.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/add_appbar_with_icon.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/calculator/calculator_bloc/calculator_bloc.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/calculator/keyboard.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/custom_radio_list_tile copy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';

class AddDebtScreen extends StatefulWidget {
  /// MARK: - Initials;
  final AddType? addType;
  late final AddDebtValue? addValue;
  // final ContactModel? contactModel;
  static BlocProvider<CalculatorBloc> provider(
      {AddType? addType, AddDebtValue? addValue}) {
    return BlocProvider(
      create: (context) => CalculatorBloc(),
      child: AddDebtScreen(
        addType: addType,
        addValue: addValue,
      ),
    );
  }

  AddDebtScreen({
    Key? key,
    this.addType,
    this.addValue,
    // this.addContactType,
    // this.contactModel,
  }) : super(key: key);

  @override
  State<AddDebtScreen> createState() => _AddDebtScreenState();
}

class _AddDebtScreenState extends State<AddDebtScreen> with AfterLayoutMixin {
  /// MARK: - Initials;

  // final TextEditingController _txtFirstName = TextEditingController();
  // final TextEditingController _txtLastName = TextEditingController();
  // final TextEditingController _txtSupplierName = TextEditingController();
  // final TextEditingController _txtPhoneNumber = TextEditingController();
  // final TextEditingController _txtEmail = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  final _txtMoney = MoneyMaskedTextController(
    thousandSeparator: '.',
    precision: 0,
    decimalSeparator: '',
  );
  final TextEditingController _txtDate = TextEditingController();

  _onPressed(String command) {
    setState(() {
      context.read<CalculatorBloc>().add(CalculatorEvent(command: command));
    });
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    _txtDate.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
  }

  AddAppBarWithIcon _buildAppBar() {
    String? title = 'Hello';
    // if (widget.addContactType == AddContactType.SUPPPLIER) {
    //   title = 'add_supplier'.tr;
    // } else if (widget.addContactType == AddContactType.UPDATE_CUSTOMER) {
    //   title = 'update_customer'.tr;
    // } else if (widget.addContactType == AddContactType.UPDATE_SUPPLIER) {
    //   title = 'update_supplier'.tr;
    // }
    return AddAppBarWithIcon(
      // backgroundColor: GlobalColors.primaryColor,
      title: title,
      leading: IconButton(
          iconSize: Dimensions.ICON_SIZE_SMALL,
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          }),
      actions: [
        IconButton(
            onPressed: () {
              _showGuide();
            },
            icon: const Icon(Icons.info_outline))
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
                      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
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
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(GlobalImages.hdsd1),
                          const Text(
                              'Gạt ngay nỗi lo thất thoát tiền, hoặc quên các khoản nhắc mượn nợ theo hướng dẫn ở dưới bạn nhé'),
                          const Text(
                              'Khi bạn cho người khác mượn nợ hoặc bạn trả nợ cho người khác thì ấn vào nút'),
                          SizedBox(
                            height: 40,
                            child: Image.asset(GlobalImages.debthdsd),
                          ),
                          const Text('Còn khi dùng'),
                          SizedBox(
                            height: 40,
                            child: Image.asset(GlobalImages.debthdsd1),
                          ),
                          const Text(
                              'là lúc bạn đã nhận được khoản tiền trả từ người khác, hoặc bạn nhận tiền mượn nợ từ người khác.'),
                          const Text(
                              'Ngoài ra bạn nhớ chụp lại hóa đơn, giấy chuyển tiền và đặt lịch nhắc nợ để không lo thất thoát nhé'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Hỗ trợ viên',
                            style:
                                TextStyle(color: GlobalColors.kGreyTextColor),
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
                            style: TextStyle(color: GlobalColors.primaryColor),
                          ))
                    ],
                  ),
                )
              ],
            ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  // AddDebtValue? _debtValue = AddDebtValue.BORROW;

  @override
  Widget build(BuildContext context) {
    AddDebtValue? debtValue = widget.addValue;
    // if (widget.addValue == AddDebtValue.GIVE) {
    //   _debtValue = AddDebtValue.GIVE;
    // } else if (widget.addValue == AddDebtValue.BORROW) {
    //   _debtValue = AddDebtValue.BORROW;
    // }

    return Scaffold(
        backgroundColor: GlobalColors.bgColor,
        key: _globalKey,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(color: Colors.white),
                child: Form(
                  key: _formKey,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          color: GlobalColors.bgColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomRadioListTile<AddDebtValue>(
                              backgroundColor: Colors.white,
                              color: GlobalColors.debtColor,
                              icon: Icons.remove_circle_outline,
                              value: AddDebtValue.GIVE,
                              groupValue: debtValue,
                              title: 'Tôi đã đưa',
                              onChanged: (AddDebtValue? value) =>
                                  setState(() => debtValue = value!),
                            ),
                            CustomRadioListTile<AddDebtValue>(
                              backgroundColor: Colors.white,
                              color: GlobalColors.primaryColor,
                              icon: Icons.add_circle_outline,
                              value: AddDebtValue.BORROW,
                              groupValue: debtValue,
                              title: 'Tôi đã nhận',
                              onChanged: (AddDebtValue? value) =>
                                  setState(() => debtValue = value!),
                            )
                          ],
                        ),
                      ),
                      const Text('Nhập số tiền'),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('Còn phải thu'), Text('100.000đ')],
                      )
                    ],
                    // ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(children: [
                  TextFormField(
                    controller: _txtDate,
                    onTap: () async {
                      DateTime? dateTime = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1970),
                          lastDate: DateTime(2101));
                      if (dateTime != null) {
                        print(
                            dateTime); //dateTime output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('dd/MM/yyyy').format(dateTime);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          _txtDate.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                    readOnly: true,
                    decoration: InputDecoration(
                      isDense: true,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: GlobalColors.kGreyTextColor,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: GlobalColors.kGreyTextColor,
                        ),
                      ),
                      labelText: widget.addValue == AddDebtValue.BORROW
                          ? 'Ngày nhận tiền'
                          : 'Ngày chi tiền',
                      labelStyle: const TextStyle(color: GlobalColors.kGreyTextColor),
                      suffixIcon: const Icon(
                        Icons.calendar_month,
                        color: GlobalColors.kGreyTextColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      // enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: GlobalColors.kGreyTextColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: GlobalColors.kGreyTextColor,
                        ),
                      ),
                      hintText: 'Ghi chú',
                      labelStyle: TextStyle(color: GlobalColors.kGreyTextColor),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),

        /// Save
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          // height: 80,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            color: (widget.addValue == AddDebtValue.GIVE)
                                ? GlobalColors.debtColor
                                : GlobalColors.primaryColor),
                        backgroundColor: Colors.white,
                        foregroundColor: (widget.addValue == AddDebtValue.GIVE)
                            ? GlobalColors.debtColor
                            : GlobalColors.primaryColor,
                        fixedSize: const Size.fromHeight(45),
                      ),
                      onPressed: () {},
                      child: const Icon(Icons.image),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 4,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              color: (widget.addValue == AddDebtValue.GIVE)
                                  ? GlobalColors.debtColor
                                  : GlobalColors.primaryColor),
                          backgroundColor:
                              (widget.addValue == AddDebtValue.GIVE)
                                  ? GlobalColors.debtColor
                                  : GlobalColors.primaryColor,
                          fixedSize: const Size.fromHeight(45),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Tạo',
                          style:
                              TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                        )),
                  )
                ],
              ),
              Keyboard(_onPressed),
            ],
          ),
        )
        // ?? Container(
        //     height: 75,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         ElevatedButton(
        //             style: ElevatedButton.styleFrom(
        //                 side: BorderSide(color: GlobalColors.primaryColor),
        //                 shape: RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.circular(10)),
        //                 backgroundColor: GlobalColors.primaryColor,
        //                 fixedSize: Size(Get.width - 50, 45)),
        //             onPressed: () {},
        //             child: Text(
        //               'Tạo mới',
        //               style:
        //                   TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
        //             ))
        //       ],
        //     ),
        //   ),
        );
  }
}
