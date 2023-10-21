import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';

import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/cubit/payment_accounts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PaymentAccountWidget extends StatelessWidget {
  final PaymentAccount paymentAccount;
  const PaymentAccountWidget({
    Key? key,
    required this.paymentAccount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () => navigator!.pushNamed(
          RouteGenerator.detailPaymentAccountScreen,
          arguments: {'PAYMENT_ACCOUNT_ID': paymentAccount.id!},
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: GlobalColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'name'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${paymentAccount.name}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'account_number'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${paymentAccount.accountNumber}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      paymentAccount.isClosed == 0 ? 'active'.tr : 'closed'.tr,
                      style: TextStyle(
                          fontSize: 16,
                          color: paymentAccount.isClosed == 0
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                // top: 8,
                right: 8,
                child: PopupMenuButton(
                  onSelected: (value) {
                    if (value == 0) {
                      navigator!.pushNamed(
                        RouteGenerator.addPaymentAccountScreen,
                        arguments: {
                          'ADD_PAYMENT_ACCOUNT_TYPE': AddType.UPDATE,
                          'PAYMENT_ACCOUNT_MODEL': paymentAccount
                        },
                      ).whenComplete(() => context
                          .read<PaymentAccountsCubit>()
                          .getPaymentAccounts());
                    }
                    if (value == 1) {
                      navigator!.pushNamed(
                        RouteGenerator.fundTransferScreen,
                        arguments: {'PAYMENT_ACCOUNT_MODEL': paymentAccount},
                      ).whenComplete(() => context
                          .read<PaymentAccountsCubit>()
                          .getPaymentAccounts());
                    }
                    if (value == 2) {
                      navigator!.pushNamed(
                        RouteGenerator.depositScreen,
                        arguments: {'PAYMENT_ACCOUNT_MODEL': paymentAccount},
                      ).whenComplete(() => context
                          .read<PaymentAccountsCubit>()
                          .getPaymentAccounts());
                    }
                    if (value == 3) {
                      paymentAccount.isClosed == 0
                          ? context
                              .read<PaymentAccountsCubit>()
                              .closePaymentAccount(paymentAccount.id!)
                          : context
                              .read<PaymentAccountsCubit>()
                              .activatePaymentAccount(paymentAccount.id!);
                    }
                  },
                  child: Container(
                    color: GlobalColors.bgColor,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Row(children: [
                      const Icon(Icons.add_circle),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('action'.tr)
                    ]),
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 0,
                      child: Text('edit'.tr),
                    ),
                    if (paymentAccount.isClosed == 0)
                      PopupMenuItem(
                        value: 1,
                        child: Text('fund_transfer'.tr),
                      ),
                    if (paymentAccount.isClosed == 0)
                      PopupMenuItem(
                        value: 2,
                        child: Text('deposit'.tr),
                      ),
                    paymentAccount.isClosed == 0
                        ? PopupMenuItem(
                            value: 3,
                            child: Text('close'.tr),
                          )
                        : PopupMenuItem(
                            value: 3,
                            child: Text('activate'.tr),
                          )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
