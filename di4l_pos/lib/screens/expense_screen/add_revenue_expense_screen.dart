import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' show DateFormat;

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/expense_screen/cubit/expense_cubit.dart';
import 'package:di4l_pos/screens/expense_screen/expense_classify/textfield_classify_funds.dart';
import 'package:di4l_pos/screens/expense_screen/widgets/calendar.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExpenseCubit>(
          create: (context) => ExpenseCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (context) => BusinessCubit(),
        ),
        BlocProvider<CustomersCubit>(
          create: (context) => CustomersCubit(),
        ),
      ],
      child: const AddExpensePage(),
    );
  }

  @override
  State<AddExpensePage> createState() => _AddExpensePage();
}

class _AddExpensePage extends State<AddExpensePage> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  final _currentMonth = DateTime.now();
  void changeName(String myText) {
    setState(() {
      // _currentMonth.to = myText;
    });
  }

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController moneyController = TextEditingController();
  final TextEditingController plController = TextEditingController();
  final TextEditingController customerController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController ntController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  int? categoryExpenseId;
  int? customerId;
  int? locationId;

  @override
  void dispose() {
    moneyController.dispose();
    plController.dispose();
    customerController.dispose();
    locationController.dispose();
    ntController.dispose();
    noteController.dispose();
    super.dispose();
  }

  final FocusNode focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'addExpense'.tr,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffFEFEFE),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16,
            )),
      ),
      body: Container(
        padding: EdgeInsets.zero,
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 64, 124, 206),
                    backgroundColor: const Color(0xffF2F3F5), // Text Color
                  ),
                  onPressed: (() {
                    showModalBottomSheet<void>(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return TableCalendar(onTextInput: changeName);
                        });
                  }),
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.calendar_month),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                            DateFormat('dd/MM/yyyy').format(DateTime.now())),
                      ),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
                Expanded(child: buildContentCenter(context)),
                CustomButton(
                  type: ButtonType.BUTTON_TEXT,
                  color: GlobalColors.primaryColor,
                  label: "save".tr,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.FONT_SIZE_LARGE),
                  borderColor: GlobalColors.primaryColor,
                  onPressed: () async {
                    if (moneyController.text.isNotEmpty) {
                      _globalKey.currentContext!
                          .read<ExpenseCubit>()
                          .addExpense(
                            locationId: locationId,
                            finalTotal: moneyController.text,
                            expenseCategoryId: categoryExpenseId,
                            refNo: '',
                            transactionDate: _currentMonth.toString(),
                            expenseFor: null,
                            contactId: customerId,
                            taxId: null,
                            additionalNotes: noteController.text,
                          );
                      navigator!.pop(context);
                    }
                  },
                ),
                // Expanded(
                //   flex: 0,
                //   child: Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         ButtonTheme(
                //           minWidth: 50,
                //           child: OutlinedButton(
                //             style: OutlinedButton.styleFrom(
                //               backgroundColor: GlobalColors.primaryColor,
                //               side: const BorderSide(
                //                   color: GlobalColors.primaryColor, width: 1),
                //             ),
                //             onPressed: () {},
                //             child: const Icon(
                //               Icons.image,
                //               color: GlobalColors.bgButton,
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: MediaQuery.of(context).size.width - 90,
                //           child: ElevatedButton(
                //             onPressed: () {},
                //             style: ElevatedButton.styleFrom(
                //               backgroundColor: GlobalColors.primaryColor,
                //               foregroundColor:
                //                   const Color.fromARGB(255, 247, 247, 247),
                //             ),
                //             child: const Text('Tạo'),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildContentCenter(BuildContext context) => Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
          width: 10,
          color: Color.fromARGB(255, 240, 240, 240),
        ))),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomTextField(
              controller: moneyController,
              hintLabel: 'Nhập số tiền',
              hintText: '10000',
            ),
            TextFieldClassifyFunds.provider(
              isClassify: true,
              labelText: 'variant_n'.tr,
              hintText: 'Chưa chọn nguồn tiền',
              controller: plController,
              onValueChanged: (value) {
                categoryExpenseId = value;
              },
            ),
            TextFieldClassifyFunds.provider(
              isLocation: true,
              labelText: 'location'.tr,
              hintText: 'Chọn địa điểm',
              controller: locationController,
              onValueChanged: (value) {
                locationId = value;
              },
            ),
            TextFieldClassifyFunds.provider(
              isCustomer: true,
              labelText: 'customers'.tr,
              hintText: 'Chọn khách hàng',
              controller: customerController,
              onValueChanged: (value) {
                customerId = value;
              },
            ),
            TextField(
              controller: noteController,
              decoration: const InputDecoration(
                  labelText: 'Ghi chú',
                  floatingLabelStyle: TextStyle(
                      color: Color(0xff1E7D51),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff49545C),
                      fontSize: 20),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 3, 162, 85),
                    ),
                  ),
                  hintText: 'Ví dụ: Hóa đơn, điện, nước, ...',
                  hintStyle: TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              cursorColor: const Color.fromARGB(255, 6, 154, 77),
            ),
          ],
        ),
      );
}
