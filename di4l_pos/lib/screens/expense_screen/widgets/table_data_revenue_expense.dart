import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/screens/expense_screen/cubit/expense_cubit.dart';

import '../../../models/revenue_expense/response/expense_response.dart';
import 'showbottom_revenue_expense_detail.dart';
import 'package:get/get.dart';

TextStyle thu = const TextStyle(
    color: Color(0xff137644), fontWeight: FontWeight.w600, fontSize: 12);
TextStyle chi = const TextStyle(
    color: Color(0xffC14A2F), fontWeight: FontWeight.w600, fontSize: 12);
TextStyle grey = const TextStyle(color: Color(0xff7B7E82), fontSize: 12);

class TableExpense extends StatefulWidget {
  const TableExpense({Key? key, required this.expenses}) : super(key: key);

  final List<Expense> expenses;

  @override
  State<TableExpense> createState() => _TableExpense();
}

class _TableExpense extends State<TableExpense> {
  @override
  Widget build(BuildContext context) {
    List<DataRow> rows = [
      ...widget.expenses.expand((e) {
        return [
          DataRow(
            onSelectChanged: (value) {
              setState(() {
                e.isSelected = !e.isSelected;
              });
            },
            color: MaterialStateColor.resolveWith(
                (states) => const Color(0xffE8E9EB)),
            cells: [
              DataCell(
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e.refNo!,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3F4045),
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            e.transactionDate!,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff656B70),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              DataCell(
                Text(
                  e.finalTotal!.formatMoney(),
                  style: TextStyle(
                    color: e.paymentStatus == 'paid'
                        ? const Color(0xff15803D)
                        : const Color(0xffB34937),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          if (e.isSelected)
            DataRow(
              onSelectChanged: (value) {
                showModalBottomSheet<void>(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return RevenueExpenseDetail(
                        amount_money: '${e.finalTotal}',
                        createdAt: '${e.createdAt}',
                        paymentStatus: '${e.paymentStatus}',
                        expenseCategory: '${e.expenseCategory!.name}',
                        refNo: '${e.refNo}',
                        id: e.id!,
                      );
                    });
              },
              cells: [
                DataCell(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('notes'.tr, style: grey),
                      Text(
                        e.additionalNotes ?? '',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                DataCell(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('category'.tr, style: grey),
                      Text(
                        '${e.expenseCategory!.name}',
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            )
        ];
      }).toList(),
    ];
    return DataTable(
      showBottomBorder: false,
      showCheckboxColumn: false,
      columnSpacing: 40,
      headingRowHeight: 30,
      dataRowColor: MaterialStateColor.resolveWith(
          (states) => const Color.fromARGB(255, 255, 255, 255)),
      headingTextStyle: grey,
      dividerThickness: 1,
      columns: const [
        DataColumn(label: Text('Thời gian')),
        DataColumn(label: Text('Tổng Cộng'), numeric: true),
      ],
      rows: rows,
    );
  }
}
