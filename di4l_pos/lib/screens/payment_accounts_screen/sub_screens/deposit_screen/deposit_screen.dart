import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_text_form_field.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/cubit/payment_accounts_cubit.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DepositScreen extends StatefulWidget {
  final PaymentAccount? paymentAccount;
  const DepositScreen({Key? key, this.paymentAccount}) : super(key: key);
  static MultiBlocProvider provider({
    PaymentAccount? paymentAccount,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PaymentAccountsCubit>(
          create: (context) => PaymentAccountsCubit(),
        ),
        // BlocProvider<CustomersCubit>(
        //   create: (context) => CustomersCubit(),
        // ),
        // BlocProvider<CustomerGroupCubit>(
        //   create: (context) => CustomerGroupCubit(),
        // ),
      ],
      child: DepositScreen(
        paymentAccount: paymentAccount,
      ),
    );
  }

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> with AfterLayoutMixin {
  dynamic _paymentAccountFromId;
  dynamic _paymentAccountToId;
  final TextEditingController _txttransactionDate = TextEditingController();
  final TextEditingController _txtAmount = TextEditingController();
  final TextEditingController _txtNote = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<PaymentAccountsCubit>().getPaymentAccounts();
    _txttransactionDate.text =
        DateFormat('MM/dd/yyyy HH:mm').format(DateTime.now());
    _txtAmount.text = '0';
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000, 8),
        lastDate: DateTime(2101),
      );
      if (picked != null) {
        // ignore: use_build_context_synchronously
        final TimeOfDay? pickedTime = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
        if (pickedTime != null) {
          setState(() {
            final DateTime combinedDate = DateTime(
              picked.year,
              picked.month,
              picked.day,
              pickedTime.hour,
              pickedTime.minute,
            );
            final DateFormat formatter = DateFormat('MM/dd/yyyy HH:mm');
            final String formattedDate = formatter.format(combinedDate);
            _txttransactionDate.text = formattedDate;
          });
        }
      }
    }

    return BlocListener<PaymentAccountsCubit, PaymentAccountsState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Required')) {
            UIHelpers.showSnackBar(
                message: state.data!.error, type: SnackBarType.ERROR);
          } else {
            UIHelpers.showDialogDefaultBloc(
              status: state.data!.status,
              text: state.data!.error,
            );
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalColors.primaryColor,
          centerTitle: true,
          title: Text('deposit'.tr,
              style: GlobalStyles.titilliumRegular(context).copyWith(
                fontSize: 16,
              )),
          automaticallyImplyLeading: true,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              BlocBuilder<PaymentAccountsCubit, PaymentAccountsState>(
                builder: (context, state) {
                  state.data!.paymentAccountFrom == null
                      ? _paymentAccountFromId = widget.paymentAccount!.id
                      : _paymentAccountFromId =
                          state.data!.paymentAccountFrom!.id!;

                  final value = state.data!.paymentAccountFrom ??
                      state.data!.paymentAccounts.firstWhereOrNull(
                          (item) => item.id == widget.paymentAccount?.id);

                  return CustomDropDownWithT<PaymentAccount>(
                    labelText: 'deposit_to'.tr,
                    items: state.data!.paymentAccounts
                        .map<DropdownMenuItem<PaymentAccount>>(
                            (PaymentAccount value) =>
                                DropdownMenuItem<PaymentAccount>(
                                  value: value,
                                  child: Text(value.name!),
                                ))
                        .toList(),
                    value: value,
                    onChanged: (dynamic value) => context
                        .read<PaymentAccountsCubit>()
                        .getPaymentAccountFrom(value),
                  );
                },
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              CustomTextFormField(
                title: 'amount'.tr,
                controller: _txtAmount,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              BlocBuilder<PaymentAccountsCubit, PaymentAccountsState>(
                builder: (context, state) {
                  state.data!.paymentAccountTo == null
                      ? _paymentAccountToId = ''
                      : _paymentAccountToId = state.data!.paymentAccountTo!.id!;

                  final value = state.data!.paymentAccountTo;

                  return CustomDropDownWithT<PaymentAccount>(
                    labelText: 'deposit_from'.tr,
                    items: state.data!.paymentAccounts
                        .map<DropdownMenuItem<PaymentAccount>>(
                            (PaymentAccount value) =>
                                DropdownMenuItem<PaymentAccount>(
                                  value: value,
                                  child: Text(value.name!),
                                ))
                        .toList(),
                    value: value,
                    onChanged: (dynamic value) => context
                        .read<PaymentAccountsCubit>()
                        .getPaymentAccountTo(value),
                  );
                },
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'date'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextField(
                    controller: _txttransactionDate,
                    onTap: () => _selectDate(context),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: GlobalColors.kDarkWhite,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(Icons.date_range),
                    ),
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  CustomTextFormField(
                    title: 'note'.tr,
                    controller: _txtNote,
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                context.read<PaymentAccountsCubit>().deposit(
                    accountId: _paymentAccountFromId.toString(),
                    fromAccount: _paymentAccountToId.toString(),
                    amount: _txtAmount.text.trim(),
                    operationDate: _txttransactionDate.text.trim(),
                    note: _txtNote.text.trim());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: GlobalColors.primaryColor,
              ),
              child: Text(
                'submit'.tr,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      ),
    );
  }
}
