// ignore_for_file: avoid_unnecessary_containers

import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactTransactionWidget extends StatelessWidget {
  final Transaction transaction;
  const ContactTransactionWidget({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: Get.width * 0.3),
            child: Text(
              transaction.transactionDate ?? '',
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 120,
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        transaction.status ?? 'status',
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text('# ${transaction.id}')
                  ],
                ),
                Column(
                  children: [
                    const Text('1 sản phẩm'),
                    const SizedBox(height: 10),
                    Text(
                      transaction.finalTotal ?? '0.0',
                      style: const TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
