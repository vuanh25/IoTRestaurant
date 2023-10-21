import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:di4l_pos/route_generator.dart';

// class TotalExpenseWidget extends StatelessWidget {
//   final String totalExpense;
//   final String totalRevenue;
//   const TotalExpenseWidget({
//     Key? key,
//     required this.totalExpense,
//     required this.totalRevenue,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final surplus = totalRevenue.parseDouble() - totalExpense.parseDouble();
//     return SizedBox(
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10),
//             color: Colors.white,
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           '${'surplus'.tr}: ',
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xff212224),
//                           ),
//                         ),
//                         Text(
//                           surplus.toString().formatMoney(),
//                           style: TextStyle(
//                             color: surplus > 0
//                                 ? const Color(0xff15803D)
//                                 : const Color(0xffB34937),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ExpenseChild(
//                       total: totalExpense,
//                       title: 'totalExpense'.tr,
//                       color: const Color(0xffB34937),
//                     ),
//                     ExpenseChild(
//                       total: totalRevenue,
//                       title: 'totalRevenue'.tr,
//                       color: const Color(0xff15803D),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ExpenseChild extends StatelessWidget {
  const ExpenseChild({
    Key? key,
    required this.total,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String total;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 2.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffF2F3F5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: <Widget>[
              Icon(
                Icons.payment_outlined,
                color: color,
                size: 16,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    total.formatMoney(),
                    style: TextStyle(
                      fontSize: 13,
                      color: color,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
