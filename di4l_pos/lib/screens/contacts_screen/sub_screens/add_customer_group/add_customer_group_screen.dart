// ignore_for_file: unnecessary_this

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/customer-group/response/customer_group_response.dart';
import 'package:di4l_pos/models/price/response/price_response.dart';
import 'package:di4l_pos/screens/contacts_screen/customer_group/cubit/customer_group_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/add_customer_group/cubit/add_customer_group_cubit.dart';
import 'package:di4l_pos/screens/price_screen/cubit/price_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddCustomerGroupScreen extends StatefulWidget {
  /// MARK: - Initials;
  final AddType? addCustomerGroupType;
  final CustomerGroupModel? customerGroupModel;

  static MultiBlocProvider provider(
      {AddType? addCustomerGroupType, CustomerGroupModel? customerGroupModel}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddCustomerGroupCubit>(
          create: (BuildContext context) => AddCustomerGroupCubit(),
        ),
        BlocProvider<CustomerGroupCubit>(
          create: (BuildContext context) => CustomerGroupCubit(),
        ),
        BlocProvider<PriceCubit>(
          create: (BuildContext context) => PriceCubit(),
        ),
      ],
      child: AddCustomerGroupScreen(
        addCustomerGroupType: addCustomerGroupType,
        customerGroupModel: customerGroupModel,
      ),
    );
  }

  const AddCustomerGroupScreen({
    Key? key,
    this.addCustomerGroupType,
    this.customerGroupModel,
  }) : super(key: key);

  @override
  State<AddCustomerGroupScreen> createState() => _AddCustomerGroupScreenState();
}

class _AddCustomerGroupScreenState extends State<AddCustomerGroupScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final TextEditingController _txtName = TextEditingController();
  final TextEditingController _txtAmount = TextEditingController();
  int? _priceGroupId;
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<PriceCubit>().getPrices();
    if (widget.addCustomerGroupType == AddType.UPDATE) {
      this._txtName.text = widget.customerGroupModel!.name ?? '';
      this._txtAmount.text = widget.customerGroupModel!.amount.toString();
      context.read<AddCustomerGroupCubit>().getType(
          widget.customerGroupModel!.priceCalculationType! ==
                  'selling_price_group'
              ? 'Selling Price Group'
              : 'Percentage');
    }
  }

  @override
  void dispose() {
    _txtName.dispose();
    _txtAmount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddCustomerGroupCubit, AddCustomerGroupState>(
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
        key: _globalKey,
        appBar: AppBar(
          title: Text(
            widget.addCustomerGroupType == AddType.NEW
                ? 'add_customer_group'.tr
                : 'update_customer_group'.tr,
            style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
          ),
          backgroundColor: GlobalColors.primaryColor,
          elevation: 0,
          leading: IconButton(
              iconSize: Dimensions.ICON_SIZE_SMALL,
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.PADDING_SIZE_DEFAULT,
              vertical: Dimensions.PADDING_SIZE_DEFAULT),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Name
                CustomTextField(
                  controller: _txtName,
                  hintLabel: 'group_name'.tr,
                ),

                ///
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                BlocBuilder<AddCustomerGroupCubit, AddCustomerGroupState>(
                  builder: (context, state) => Column(
                    children: [
                      CustomDropDown(
                        labelText: 'customer_group_type'.tr,
                        items: GlobalConstants.customerGroupTypes,
                        value: state.data!.type,
                        onChanged: (dynamic value) => _globalKey.currentContext!
                            .read<AddCustomerGroupCubit>()
                            .getType(value),
                      ),

                      /// Description
                      const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                      state.data!.type == 'Percentage'
                          ? CustomTextField(
                              hintText: '0',
                              controller: _txtAmount,
                              hintLabel: 'percentage'.tr,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d+\.?\d{0,3}')),
                              ],
                              keyboardKey:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                            )
                          : BlocBuilder<PriceCubit, PriceState>(
                              builder: (context, state) {
                                state.data!.price == null
                                    ? _priceGroupId = null
                                    : _priceGroupId = state.data!.price!.id!;
                                final value = state.data!.price ??
                                    state.data!.prices.firstWhereOrNull(
                                        (item) =>
                                            item.name ==
                                            widget.customerGroupModel
                                                ?.sellingPriceGroup);
                                return CustomDropDownWithT<Price>(
                                  labelText: 'selling_price_group'.tr,
                                  items: state.data!.prices
                                      .map<DropdownMenuItem<Price>>(
                                        (Price value) =>
                                            DropdownMenuItem<Price>(
                                          value: value,
                                          child: Text(value.name!),
                                        ),
                                      )
                                      .toList(),
                                  value: value,
                                  onChanged: (dynamic value) => context
                                      .read<PriceCubit>()
                                      .getPrice(value),
                                );
                              },
                            ),
                    ],
                  ),
                ),

                /// Save
              ],
            ),
          ),
        ),
        bottomNavigationBar: (widget.addCustomerGroupType == AddType.UPDATE)
            ? SizedBox(
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            fixedSize: const Size(160, 45)),
                        onPressed: () => _globalKey.currentContext!
                            .read<CustomerGroupCubit>()
                            .delete(widget.customerGroupModel!.id!),
                        child: const Text(
                          'Xóa nhóm khách hàng',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                color: GlobalColors.primaryColor),
                            backgroundColor: GlobalColors.primaryColor,
                            fixedSize: const Size(160, 45)),
                        onPressed: () {
                          _globalKey.currentContext!
                              .read<AddCustomerGroupCubit>()
                              .updateCustomerGroup(
                                customerGroupId: widget.customerGroupModel!.id!,
                                name: _txtName.text.trim(),
                                amount: _txtAmount.text.trim(),
                                sellingPriceGroupId: _priceGroupId,
                              );
                        },
                        child: const Text(
                          'Cập nhật',
                          style:
                              TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                        ))
                  ],
                ),
              )
            : SizedBox(
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              color: GlobalColors.primaryColor),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: GlobalColors.primaryColor,
                          fixedSize: Size(Get.width - 50, 45)),
                      onPressed: () {
                        _globalKey.currentContext!
                            .read<AddCustomerGroupCubit>()
                            .addCustomerGroup(
                              name: _txtName.text.trim(),
                              amount: _txtAmount.text.trim(),
                              sellingPriceGroupId: _priceGroupId,
                            );
                      },
                      child: const Text(
                        'Tạo mới',
                        style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
