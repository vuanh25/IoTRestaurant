import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/expense_screen/cubit/expense_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'table_data_revenue_expense.dart';

class RevenueExpenseDetail extends StatelessWidget {
  const RevenueExpenseDetail({
    Key? key,
    required this.amount_money,
    required this.createdAt,
    required this.paymentStatus,
    required this.expenseCategory,
    required this.refNo,
    required this.id,
  }) : super(key: key);
  final String amount_money, createdAt, paymentStatus, expenseCategory, refNo;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
      height: MediaQuery.of(context).size.height / 2.5,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.7,
              ),
              Expanded(
                child: Text(refNo),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  icon: const Icon(Icons.clear))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            padding: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.grey))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  spacing: 8.0, // gap between adjacent chips
                  runSpacing: 4.0, // gap between lines
                  children: <Widget>[
                    Icon(
                      Icons.payment_outlined,
                      color: paymentStatus == 'due'
                          ? Color(0xffEF4444)
                          : Color(0xff30AF49),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            createdAt,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ]),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'total_amount'.tr,
                      style: paymentStatus == 'due' ? chi : thu,
                    ),
                    Text(
                      '${amount_money.formatMoney()} ₫',
                      style: paymentStatus == 'due' ? chi : thu,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'expense_category'.tr,
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  expenseCategory != null
                      ? Text(expenseCategory)
                      : const Text(''),
                  Text(
                    'payment_status'.tr,
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  paymentStatus != null
                      ? Text(paymentStatus.tr)
                      : const Text(''),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration:
                BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 2.25,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 26, 87, 28)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton.icon(
                        style: TextButton.styleFrom(
                            primary: const Color.fromARGB(255, 26, 87, 28)),
                        onPressed: () {
                          context.read<ExpenseCubit>().delete(id);
                        },
                        icon: const Icon(Icons.delete_outline),
                        label: Text('delete'.tr))),
                Container(
                    width: MediaQuery.of(context).size.width / 2.25,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 26, 87, 28)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton.icon(
                        style: TextButton.styleFrom(
                            primary: const Color.fromARGB(255, 26, 87, 28)),
                        onPressed: () {
                          navigator!.pushNamed(RouteGenerator.editExpense);
                        },
                        icon: const Icon(
                            Icons.drive_file_rename_outline_outlined),
                        label: Text('edit'.tr))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
