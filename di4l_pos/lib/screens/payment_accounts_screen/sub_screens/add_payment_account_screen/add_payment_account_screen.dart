import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/payment_accounts/request/add_payment_account_request.dart';
import 'package:di4l_pos/models/payment_accounts/response/account_type_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_text_form_field.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_textfield.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/cubit/payment_accounts_cubit.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/sub_screens/add_payment_account_screen/cubit/add_payment_account_cubit.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddPaymentAccountScreen extends StatefulWidget {
  final AddType? addType;
  final PaymentAccount? paymentAccount;

  const AddPaymentAccountScreen({Key? key, this.addType, this.paymentAccount})
      : super(key: key);

  static MultiBlocProvider provider({
    AddType? addType,
    PaymentAccount? paymentAccount,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddPaymentAccountCubit>(
          create: (context) => AddPaymentAccountCubit(),
        ),
        BlocProvider<PaymentAccountsCubit>(
          create: (context) => PaymentAccountsCubit(),
        ),
        // BlocProvider<CustomerGroupCubit>(
        //   create: (context) => CustomerGroupCubit(),
        // ),
      ],
      child: AddPaymentAccountScreen(
        addType: addType,
        paymentAccount: paymentAccount,
      ),
    );
  }

  @override
  State<AddPaymentAccountScreen> createState() =>
      _AddPaymentAccountScreenState();
}

class _AddPaymentAccountScreenState extends State<AddPaymentAccountScreen>
    with AfterLayoutMixin {
  final TextEditingController _txtName = TextEditingController();
  final TextEditingController _txtAccountNumber = TextEditingController();
  final TextEditingController _txtOpeningBalance = TextEditingController();
  final TextEditingController _txtNote = TextEditingController();

  final List<TextEditingController?> _txtLabel = [];
  final List<TextEditingController?> _txtValue = [];

  int? _accountTypeId;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<PaymentAccountsCubit>().getAccountTypes();
    if (widget.addType == AddType.UPDATE) {
      _txtName.text = widget.paymentAccount!.name ?? '';
      _txtAccountNumber.text = widget.paymentAccount!.accountNumber ?? '';
      _txtNote.text = widget.paymentAccount!.note ?? '';
    } else {
      _txtOpeningBalance.text = '0';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddPaymentAccountCubit, AddPaymentAccountState>(
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
        backgroundColor: GlobalColors.bgColor,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  title: 'name'.tr,
                  controller: _txtName,
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                CustomTextFormField(
                  title: 'account_number'.tr,
                  controller: _txtAccountNumber,
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                BlocBuilder<PaymentAccountsCubit, PaymentAccountsState>(
                  builder: (context, state) {
                    state.data!.accountType == null
                        ? _accountTypeId = 0
                        : _accountTypeId = state.data!.accountType!.id!;

                    final value = state.data!.accountType ??
                        state.data!.accountTypes.firstWhereOrNull((item) =>
                            item.id == widget.paymentAccount?.accountTypeId);

                    return CustomDropDownWithT<AccType>(
                      labelText: 'account_type'.tr,
                      items: state.data!.accountTypes
                          .map<DropdownMenuItem<AccType>>(
                              (AccType value) => DropdownMenuItem<AccType>(
                                    value: value,
                                    child: Text(value.name!),
                                  ))
                          .toList(),
                      value: value,
                      onChanged: (dynamic value) => context
                          .read<PaymentAccountsCubit>()
                          .getAccountType(value),
                    );
                  },
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                if (widget.addType == AddType.NEW)
                  CustomTextFormField(
                    title: 'opening_balance'.tr,
                    controller: _txtOpeningBalance,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                Text('account_details'.tr,
                    style: GlobalStyles.titilliumRegular(context).copyWith(
                      fontSize: 16,
                    )),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.addType == AddType.UPDATE
                      ? widget.paymentAccount!.accountDetails!.length
                      : 6,
                  itemBuilder: (context, index) {
                    final accountDetails = widget.addType == AddType.UPDATE
                        ? widget.paymentAccount?.accountDetails
                        : [];
                    _txtLabel.add(TextEditingController());
                    _txtValue.add(TextEditingController());
                    _txtLabel.elementAt(index)?.text =
                        widget.addType == AddType.UPDATE
                            ? accountDetails?.elementAt(index).label ?? ''
                            : '';
                    _txtValue.elementAt(index)?.text =
                        widget.addType == AddType.UPDATE
                            ? accountDetails?.elementAt(index).value ?? ''
                            : '';
                    return Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            title: 'label'.tr,
                            controller: _txtLabel.elementAt(index),
                          ),
                        ),
                        const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                        Expanded(
                          child: CustomTextFormField(
                            title: 'value'.tr,
                            controller: _txtValue.elementAt(index),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox.shrink(),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                CustomTextFormField(
                  title: 'note'.tr,
                  controller: _txtNote,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: widget.addType == AddType.NEW
              ? ElevatedButton(
                  onPressed: () {
                    List<AccountDetail>? accountDetails = [];
                    for (int i = 0; i <= 5; i++) {
                      AccountDetail accountDetail = AccountDetail(
                          label: _txtLabel.elementAt(i)?.text.trim(),
                          value: _txtValue.elementAt(i)?.text.trim());
                      accountDetails.add(accountDetail);
                    }

                    context.read<AddPaymentAccountCubit>().addPaymentAccount(
                        name: _txtName.text.trim(),
                        accountNumber: _txtAccountNumber.text.trim(),
                        note: _txtNote.text.trim(),
                        openingBalance: _txtOpeningBalance.text.trim(),
                        accountDetails: accountDetails,
                        accountTypeId: _accountTypeId.toString());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalColors.primaryColor,
                  ),
                  child: Text(
                    'save'.tr,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : ElevatedButton(
                  onPressed: () {
                    List<AccountDetail>? accountDetails = [];
                    widget.paymentAccount!.accountDetails!.map((e) {
                      int idx =
                          widget.paymentAccount!.accountDetails!.indexOf(e);
                      AccountDetail accountDetail = AccountDetail(
                          label: _txtLabel.elementAt(idx)?.text,
                          value: _txtValue.elementAt(idx)?.text);
                      accountDetails.add(accountDetail);
                    }).toList();

                    context.read<AddPaymentAccountCubit>().updatePaymentAccount(
                        paymentAccountId: widget.paymentAccount!.id!,
                        name: _txtName.text.trim(),
                        accountNumber: _txtAccountNumber.text.trim(),
                        accountTypeId: _accountTypeId.toString(),
                        accountDetails: accountDetails,
                        note: _txtNote.text.trim());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalColors.primaryColor,
                  ),
                  child: Text(
                    'update'.tr,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    String? title = 'add_payment_account'.tr;
    if (widget.addType == AddType.NEW) {
      title = 'add_payment_account'.tr;
    } else if (widget.addType == AddType.UPDATE) {
      title = 'edit_payment_account'.tr;
    }
    return AppBar(
      backgroundColor: GlobalColors.primaryColor,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      elevation: 0,
      centerTitle: true,
    );
  }
}
