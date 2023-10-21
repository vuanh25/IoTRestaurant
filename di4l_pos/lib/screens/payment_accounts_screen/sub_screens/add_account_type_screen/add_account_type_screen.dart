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
import 'package:di4l_pos/screens/payment_accounts_screen/sub_screens/add_account_type_screen/cubit/add_account_type_cubit.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/sub_screens/add_payment_account_screen/cubit/add_payment_account_cubit.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddAccountTypeScreen extends StatefulWidget {
  final AddType? addType;
  final AccType? accType;

  const AddAccountTypeScreen({Key? key, this.addType, this.accType})
      : super(key: key);

  static MultiBlocProvider provider({
    AddType? addType,
    AccType? accType,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddAccountTypeCubit>(
          create: (context) => AddAccountTypeCubit(),
        ),
        BlocProvider<PaymentAccountsCubit>(
          create: (context) => PaymentAccountsCubit(),
        ),
      ],
      child: AddAccountTypeScreen(
        addType: addType,
        accType: accType,
      ),
    );
  }

  @override
  State<AddAccountTypeScreen> createState() => _AddAccountTypeScreenState();
}

class _AddAccountTypeScreenState extends State<AddAccountTypeScreen>
    with AfterLayoutMixin {
  final TextEditingController _txtName = TextEditingController();

  dynamic _parentAccountTypeId;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<PaymentAccountsCubit>().getAccountTypes();
    if (widget.addType == AddType.UPDATE) {
      _txtName.text = widget.accType!.name ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddAccountTypeCubit, AddAccountTypeState>(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    title: 'name'.tr,
                    controller: _txtName,
                  ),
                  BlocBuilder<PaymentAccountsCubit, PaymentAccountsState>(
                    builder: (context, state) {
                      state.data!.accountType == null
                          ? _parentAccountTypeId = ""
                          : _parentAccountTypeId = state.data!.accountType!.id;

                      final value = state.data!.accountType ??
                          state.data!.accountTypes.firstWhereOrNull((item) =>
                              item.id == widget.accType?.parentAccountTypeId);

                      return CustomDropDownWithT<AccType>(
                        labelText: 'parent_account_type'.tr,
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
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: widget.addType == AddType.NEW
              ? ElevatedButton(
                  onPressed: () {
                    context.read<AddAccountTypeCubit>().addAccountType(
                        name: _txtName.text.trim(),
                        parentAccountTypeId: _parentAccountTypeId);
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
                    context.read<AddAccountTypeCubit>().updateAccountType(
                        accountTypeId: widget.accType!.id!,
                        name: _txtName.text.trim(),
                        parentAccountTypeId: _parentAccountTypeId);
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
    String? title = 'add_account_type'.tr;
    if (widget.addType == AddType.NEW) {
      title = 'add_account_type'.tr;
    } else if (widget.addType == AddType.UPDATE) {
      title = 'edit_account_type'.tr;
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
