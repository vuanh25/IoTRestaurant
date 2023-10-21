// ignore_for_file: unnecessary_this

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/enums/customer_type.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/customer-group/response/customer_group_response.dart';
import 'package:di4l_pos/screens/contacts_screen/customer_group/cubit/customer_group_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/add_contact_screen/cubit/add_contact_cubit.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddContactScreen extends StatefulWidget {
  /// MARK: - Initials;
  final AddContactType? addContactType;
  final ContactModel? contactModel;

  static MultiBlocProvider provider({
    AddContactType? addContactType,
    ContactModel? contactModel,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddContactCubit>(
          create: (context) => AddContactCubit(),
        ),
        BlocProvider<CustomersCubit>(
          create: (context) => CustomersCubit(),
        ),
        BlocProvider<CustomerGroupCubit>(
          create: (context) => CustomerGroupCubit(),
        ),
      ],
      child: AddContactScreen(
        addContactType: addContactType,
        contactModel: contactModel,
      ),
    );
  }

  const AddContactScreen({
    Key? key,
    this.addContactType,
    this.contactModel,
  }) : super(key: key);

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;

  int? _customerGroupId;
  final TextEditingController _txtFirstName = TextEditingController();
  final TextEditingController _txtLastName = TextEditingController();
  final TextEditingController _txtSupplierName = TextEditingController();
  final TextEditingController _txtPhoneNumber = TextEditingController();
  final TextEditingController _txtEmail = TextEditingController();

  ///Custommer
  final TextEditingController _txtDOB = TextEditingController();
  final TextEditingController _txtTaxNumber = TextEditingController();
  final TextEditingController _txtOpeningBalance = TextEditingController();
  final TextEditingController _txtPaytermNumber = TextEditingController();
  final TextEditingController _txtCreditLimit = TextEditingController();
  final TextEditingController _txtAddressLine1 = TextEditingController();
  final TextEditingController _txtShippingAdress = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // context.read<CustomerGroupCubit>().getCustomerGroups();
    if (widget.addContactType == AddContactType.UPDATE_CUSTOMER ||
        widget.addContactType == AddContactType.UPDATE_SUPPLIER) {
      this._txtFirstName.text = widget.contactModel?.firstName ?? '';
      this._txtLastName.text = widget.contactModel?.lastName ?? '';
      this._txtSupplierName.text =
          widget.contactModel?.supplierBusinessName ?? '';
      this._txtPhoneNumber.text = widget.contactModel?.mobile ?? '';
      this._txtEmail.text = widget.contactModel?.email ?? '';
      this._txtDOB.text = widget.contactModel?.dob ?? '';
      this._txtAddressLine1.text = widget.contactModel?.addressLine1 ?? '';
      if (widget.addContactType == AddContactType.UPDATE_CUSTOMER) {
        this._txtTaxNumber.text = widget.contactModel?.taxNumber ?? '';
        this._txtOpeningBalance.text =
            widget.contactModel?.openingBalance.toString() ?? '';
        this._txtPaytermNumber.text =
            widget.contactModel?.payTermNumber.toString() ?? '';
        this._txtCreditLimit.text = widget.contactModel?.creditLimit ?? '';
        this._txtShippingAdress.text =
            widget.contactModel?.shippingAddress ?? '';
      }
    }
  }

  AppBar _buildAppBar() {
    String? title = 'add_customer'.tr;
    if (widget.addContactType == AddContactType.SUPPLIER) {
      title = 'add_supplier'.tr;
    } else if (widget.addContactType == AddContactType.UPDATE_CUSTOMER) {
      title = 'update_customer'.tr;
    } else if (widget.addContactType == AddContactType.UPDATE_SUPPLIER) {
      title = 'update_supplier'.tr;
    }
    return AppBar(
      backgroundColor: GlobalColors.primaryColor,
      title: Text(
        title,
        style: const TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
      ),
      elevation: 0,
      leading: IconButton(
          iconSize: Dimensions.ICON_SIZE_SMALL,
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          }),
      centerTitle: true,
    );
  }

  @override
  void dispose() {
    _txtFirstName.dispose();
    _txtLastName.dispose();
    _txtSupplierName.dispose();
    _txtPhoneNumber.dispose();
    _txtEmail.dispose();
    _txtDOB.dispose();
    _txtTaxNumber.dispose();
    _txtOpeningBalance.dispose();
    _txtPaytermNumber.dispose();
    _txtCreditLimit.dispose();
    _txtAddressLine1.dispose();
    _txtShippingAdress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.read<CustomerGroupCubit>().getCustomerGroups();

    return BlocListener<AddContactCubit, AddContactState>(
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
        appBar: (widget.addContactType == AddContactType.CUSTOMER ||
                widget.addContactType == AddContactType.SUPPLIER)
            ? _buildAppBar()
            : null,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                vertical: Dimensions.PADDING_SIZE_DEFAULT),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.addContactType == AddContactType.CUSTOMER ||
                      widget.addContactType ==
                          AddContactType.UPDATE_CUSTOMER) ...[
                    BlocBuilder<CustomerGroupCubit, CustomerGroupState>(
                      builder: (context, state) {
                        state.data!.customerGroup == null
                            ? _customerGroupId = 1
                            : _customerGroupId = state.data!.customerGroup!.id!;

                        final value = state.data!.customerGroup ??
                            state.data!.customerGroups!.firstWhereOrNull(
                                (item) =>
                                    item.id ==
                                    widget.contactModel?.customerGroupId);

                        return CustomDropDownWithT<CustomerGroupModel>(
                          labelText: 'customer_group'.tr,
                          items: state.data!.customerGroups!
                              .map<DropdownMenuItem<CustomerGroupModel>>(
                                  (CustomerGroupModel value) =>
                                      DropdownMenuItem<CustomerGroupModel>(
                                        value: value,
                                        child: Text(value.name!),
                                      ))
                              .toList(),
                          value: value,
                          onChanged: (dynamic value) => _globalKey
                              .currentContext!
                              .read<CustomerGroupCubit>()
                              .getCustomerGroup(value),
                        );
                      },
                    ),
                  ],

                  BlocBuilder<AddContactCubit, AddContactState>(
                    builder: (context, state) => Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile<TypeCustomer>(
                                title: Text('individual'.tr),
                                value: TypeCustomer.individual,
                                groupValue: state.data!.type,
                                onChanged: (TypeCustomer? value) => _globalKey
                                    .currentContext!
                                    .read<AddContactCubit>()
                                    .changedType(value!),
                              ),
                            ),
                            const SizedBox(
                                width: Dimensions.PADDING_SIZE_SMALL),
                            Expanded(
                              child: RadioListTile<TypeCustomer>(
                                title: Text('business'.tr),
                                value: TypeCustomer.business,
                                groupValue: state.data!.type,
                                onChanged: (TypeCustomer? value) => _globalKey
                                    .currentContext!
                                    .read<AddContactCubit>()
                                    .changedType(value!),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                        state.data!.type == TypeCustomer.individual
                            ? Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextField(
                                          controller: _txtFirstName,
                                          hintLabel: 'first_name'.tr,
                                        ),
                                      ),
                                      const SizedBox(
                                          width: Dimensions.PADDING_SIZE_SMALL),
                                      Expanded(
                                        child: CustomTextField(
                                          controller: _txtLastName,
                                          hintLabel: 'last_name'.tr,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : CustomTextField(
                                controller: _txtSupplierName,
                                hintLabel: 'business_name'.tr,
                              ),
                      ],
                    ),
                  ),

                  /// Phone Number
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  CustomTextField(
                    controller: _txtPhoneNumber,
                    keyboardKey: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    hintLabel: 'phone_number'.tr,
                  ),

                  /// Email
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  CustomTextField(
                    controller: _txtEmail,
                    hintLabel: 'email'.tr,
                    keyboardKey: TextInputType.emailAddress,
                  ),

                  if (widget.addContactType == AddContactType.CUSTOMER ||
                      widget.addContactType ==
                          AddContactType.UPDATE_CUSTOMER) ...[
                    const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                    CustomTextField(
                      controller: _txtDOB,
                      readOnly: true,
                      suffixIcon: const Icon(Icons.calendar_month),
                      onTap: () async {
                        await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          initialEntryMode: DatePickerEntryMode.calendarOnly,
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2200),
                        ).then((selectedDate) {
                          if (selectedDate != null) {
                            _txtDOB.text =
                                DateFormat('dd//MM/yyyy').format(selectedDate);
                          }
                        });
                      },
                      hintLabel: 'dob'.tr,
                    )
                  ],

                  /// Field In Custommer
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  if (widget.addContactType == AddContactType.CUSTOMER ||
                      widget.addContactType ==
                          AddContactType.UPDATE_CUSTOMER) ...[
                    CustomTextField(
                      controller: _txtShippingAdress,
                      hintLabel: 'shipping_address'.tr,
                    ),
                  ],

                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  if (widget.addContactType == AddContactType.SUPPLIER ||
                      widget.addContactType ==
                          AddContactType.UPDATE_SUPPLIER) ...[
                    CustomTextField(
                      controller: _txtAddressLine1,
                      hintLabel: 'address_line1'.tr,
                    ),
                  ]
                ],
              ),
            ),
          ),
        ),

        /// Save
        bottomNavigationBar: (widget.addContactType ==
                    AddContactType.UPDATE_CUSTOMER ||
                widget.addContactType == AddContactType.UPDATE_SUPPLIER)
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
                            .read<CustomersCubit>()
                            .delete(widget.contactModel!.id!),
                        child: Text(
                          (widget.addContactType ==
                                  AddContactType.UPDATE_CUSTOMER)
                              ? 'delete_customer'.tr
                              : 'delete_supplier'.tr,
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
                          if (widget.addContactType ==
                              AddContactType.UPDATE_CUSTOMER) {
                            _globalKey.currentContext!
                                .read<AddContactCubit>()
                                .updateCustomer(
                                    contactId: widget.contactModel!.id!,
                                    customerGroupId: _customerGroupId!,
                                    firstName: _txtFirstName.text.trim(),
                                    lastName: _txtLastName.text.trim(),
                                    supplierBusinessName:
                                        _txtSupplierName.text.trim(),
                                    phoneNumber: _txtPhoneNumber.text.trim(),
                                    email: _txtEmail.text.trim(),
                                    dob: _txtDOB.text.trim(),
                                    // taxNumber: _txtTaxNumber.text.trim(),
                                    // openingBalance: _txtOpeningBalance.text.trim(),
                                    // payTermNumber: _txtPaytermNumber.text.trim(),
                                    // addressLine1: _txtAddressLine1.text.trim(),
                                    shippingAddress:
                                        _txtShippingAdress.text.trim());
                          } else if (widget.addContactType ==
                              AddContactType.UPDATE_SUPPLIER) {
                            _globalKey.currentContext!
                                .read<AddContactCubit>()
                                .updateSupplier(
                                  contactId: widget.contactModel!.id!,
                                  firstName: _txtFirstName.text.trim(),
                                  lastName: _txtLastName.text.trim(),
                                  supplierBusinessName:
                                      _txtSupplierName.text.trim(),
                                  phoneNumber: _txtPhoneNumber.text.trim(),
                                  email: _txtEmail.text.trim(),
                                  addressLine1: _txtAddressLine1.text.trim(),
                                );
                          }
                        },
                        child: Text(
                          'update'.tr,
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
                          if (widget.addContactType ==
                              AddContactType.CUSTOMER) {
                            _globalKey.currentContext!
                                .read<AddContactCubit>()
                                .addCustomer(
                                    customerGroupId: _customerGroupId!,
                                    firstName: _txtFirstName.text.trim(),
                                    lastName: _txtLastName.text.trim(),
                                    supplierBusinessName:
                                        _txtSupplierName.text.trim(),
                                    phoneNumber: _txtPhoneNumber.text.trim(),
                                    email: _txtEmail.text.trim(),
                                    dob: _txtDOB.text.trim(),
                                    // taxNumber: _txtTaxNumber.text.trim(),
                                    // openingBalance: _txtOpeningBalance.text.trim(),
                                    // payTermNumber: _txtOpeningBalance.text.trim(),
                                    // addressLine1: _txtAddressLine1.text.trim(),
                                    shippingAddress:
                                        _txtShippingAdress.text.trim());
                          } else if (widget.addContactType ==
                              AddContactType.SUPPLIER) {
                            _globalKey.currentContext!
                                .read<AddContactCubit>()
                                .addSupplier(
                                  firstName: _txtFirstName.text.trim(),
                                  lastName: _txtLastName.text.trim(),
                                  supplierBusinessName:
                                      _txtSupplierName.text.trim(),
                                  phoneNumber: _txtPhoneNumber.text.trim(),
                                  email: _txtEmail.text.trim(),
                                  addressLine1: _txtAddressLine1.text.trim(),
                                );
                          }
                        },
                        child: Text(
                          'create'.tr,
                          style:
                              TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                        ))
                  ],
                ),
              ),
      ),
    );
  }
}
