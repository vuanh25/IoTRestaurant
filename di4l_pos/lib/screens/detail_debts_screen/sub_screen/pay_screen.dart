import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/calculator/calculator_bloc/calculator_bloc.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/calculator/keyboard.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/check_box_custom.dart';
import 'package:di4l_pos/screens/detail_debts_screen/widget/custom_card_funds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PayScreen extends StatefulWidget {
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
              TextFormField(
                // enabled: false,
                // autofocus: true,
                controller: _txtMoney,
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
                          _showFunds(context);
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
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
                      icon: Icon(Icons.drive_file_rename_outline_rounded),
                      label: Text('Chỉnh sửa')),
                  title: Text(
                    'Nguồn tiền',
                    style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.clear),
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
                          Flexible(
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
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: GlobalColors.flButtonColor,
                                  foregroundColor: Colors.white,
                                  fixedSize: Size(40, 50)),
                              onPressed: () {
                                _showCreateFund(context);
                              },
                              child: Icon(Icons.add))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Danh sách nguồn tiền',
                        style: TextStyle(),
                      ),
                      SizedBox(
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
                      physics: ScrollPhysics(),
                      crossAxisCount: 3,
                      childAspectRatio: 1.5,
                      children: [
                        CustomCardFund(title: 'Chưa phân loại'),
                        CustomCardFund(title: 'Tiền mặt'),
                        CustomCardFund(title: 'Ví điện tử'),
                        CustomCardFund(title: 'Ngân hàng'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                  title: Text(
                    'Tạo nguồn tiền mới',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  trailing: IconButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerRight,
                    icon: Icon(Icons.clear),
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
                      Text('Tên nguồn tiền',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextField(
                        decoration:
                            InputDecoration(hintText: 'Ví dụ: Thẻ tín dụng'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Số dư ban đầu',
                        style: TextStyle(
                            color: GlobalColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        initialValue: '0',
                        decoration: InputDecoration(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      color: GlobalColors.kGreyTextColor),
                                  backgroundColor: Colors.white,
                                  foregroundColor: GlobalColors.kGreyTextColor,
                                  fixedSize: Size(160, 45)),
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
                                  side: BorderSide(
                                      color: GlobalColors.primaryColor),
                                  backgroundColor: GlobalColors.primaryColor,
                                  fixedSize: Size(160, 45)),
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
                      ),
                      Keyboard(onPressed)
                    ],
                  ),
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
                  title: Center(
                      child: Text(
                    'Chỉnh sửa',
                    style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold),
                  )),
                  trailing: IconButton(
                    alignment: Alignment.centerRight,
                    icon: Icon(Icons.clear),
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
                          Flexible(
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
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: GlobalColors.flButtonColor,
                                  foregroundColor: Colors.white,
                                  fixedSize: Size(40, 50)),
                              onPressed: () {
                                _showCreateFund(context);
                              },
                              child: Icon(Icons.add))
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
                            leading: Icon(Icons.remove_circle),
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
}
