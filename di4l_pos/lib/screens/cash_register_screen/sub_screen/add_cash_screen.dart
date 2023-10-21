import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/cash_register_screen/sub_screen/cubit/add_cash_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddCashRegisterScreen extends StatefulWidget {
  /// MARK: - Initials;

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddCashRegisterCubit>(
          create: (context) => AddCashRegisterCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (context) => BusinessCubit(),
        ),
      ],
      child:const AddCashRegisterScreen(),
    );
  }

  const AddCashRegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AddCashRegisterScreen> createState() => _AddCashRegisterScreenState();
}

class _AddCashRegisterScreenState extends State<AddCashRegisterScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;

  dynamic _selectLocationId;
  final TextEditingController _txtClosingNote = TextEditingController();
  final TextEditingController _txtClosingAmount = TextEditingController();
  final TextEditingController _txtTotalCardSlips = TextEditingController();
  final TextEditingController _txtTotalCheques = TextEditingController();
  final TextEditingController _txtInitialAmount = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<BusinessCubit>().getBusinesss();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(title: 'add_cash_register'.tr),
      backgroundColor: const Color.fromARGB(255, 173, 214, 244),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BlocBuilder<AddCashRegisterCubit, AddCashRegisterState>(
                        builder: (context, state) => CustomDropDown(
                          labelText: 'tax_type'.tr,
                          items: GlobalConstants.cashRegisterTypes,
                          value: state.data!.type,
                          onChanged: (dynamic value) => _globalKey
                              .currentContext!
                              .read<AddCashRegisterCubit>()
                              .getType(value),
                        ),
                      ),

                      /// Locaton Id
                      const SizedBox(height: 16),
                      BlocBuilder<BusinessCubit, BusinessState>(
                        builder: (context, state) {
                          // ignore: no_leading_underscores_for_local_identifiers
                          final _businesss = state.data!.businesss;
                          if (state is GetBusinesss) {
                            _selectLocationId = _businesss.elementAt(0).id;
                            return CustomDropDownWithT<BusinessLocation>(
                              labelText: 'business_location'.tr,
                              items: _businesss
                                  .map<DropdownMenuItem<BusinessLocation>>(
                                    (BusinessLocation value) =>
                                        DropdownMenuItem<BusinessLocation>(
                                      value: value,
                                      child: Text(
                                          '${value.name!} (${value.locationId!})'),
                                    ),
                                  )
                                  .toList(),
                              value: _businesss.elementAt(0),
                              onChanged: (dynamic value) => _globalKey
                                  .currentContext!
                                  .read<BusinessCubit>()
                                  .getBusiness(value),
                            );
                          } else if (state is GetBusiness) {
                            _selectLocationId = state.data!.business!.id!;
                            return CustomDropDownWithT<BusinessLocation>(
                              labelText: 'business_location'.tr,
                              items: _businesss
                                  .map<DropdownMenuItem<BusinessLocation>>(
                                      (BusinessLocation value) =>
                                          DropdownMenuItem<BusinessLocation>(
                                            value: value,
                                            child: Text(
                                                '${value.name!} (${value.locationId!})'),
                                          ))
                                  .toList(),
                              value: state.data!.business!,
                              onChanged: (dynamic value) => _globalKey
                                  .currentContext!
                                  .read<BusinessCubit>()
                                  .getBusiness(value),
                            );
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),

                      /// closing note
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: _txtClosingNote,
                        hintLabel: 'closing_note'.tr,
                      ),

                      ///
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          /// closing amount
                          Expanded(
                            flex: 1,
                            child: CustomTextField(
                              controller: _txtClosingAmount,
                              keyboardKey: TextInputType.number,
                              hintLabel: 'closing_amount'.tr,
                            ),
                          ),

                          /// total card slips
                          const SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              controller: _txtTotalCardSlips,
                              keyboardKey: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              hintLabel: 'total_card_slips'.tr,
                            ),
                          ),
                        ],
                      ),

                      /// total cheques
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: _txtTotalCheques,
                        keyboardKey: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        hintLabel: 'total_cheques'.tr,
                      ),

                      /// initial amount
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: _txtInitialAmount,
                        keyboardKey: TextInputType.number,
                        hintLabel: 'initial_amount'.tr,
                      ),
                    ],
                  ),
                ),

                /// Save
                const SizedBox(height: 30),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(
                      height: 44, width: double.infinity),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _globalKey.currentContext!
                            .read<AddCashRegisterCubit>()
                            .addCashRegister(
                              locationId: _selectLocationId,
                              closingNote: _txtClosingNote.text.trim(),
                              closingAmount:
                                  double.parse(_txtClosingAmount.text.trim()),
                              totalCardSlips:
                                  int.parse(_txtTotalCardSlips.text.trim()),
                              totalCheques:
                                  int.parse(_txtTotalCheques.text.trim()),
                              initialAmount:
                                  double.parse(_txtInitialAmount.text.trim()),
                            );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.primaryColor,
                    ),
                    icon: const Icon(Icons.save, color: Colors.white),
                    label: Text(
                      'save'.tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
