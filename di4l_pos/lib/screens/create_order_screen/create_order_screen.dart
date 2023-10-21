// ignore_for_file: no_leading_underscores_for_local_identifiers, iterable_contains_unrelated_type

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/products/response/variation.dart';
import 'package:di4l_pos/models/sell/request/add_sell_request.dart';
import 'package:di4l_pos/models/unit/response/unit_response.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/create_order_screen/cubit/create_order_cubit.dart';
import 'package:di4l_pos/screens/create_order_screen/widgets/payment_card.dart';
import 'package:di4l_pos/screens/create_order_screen/widgets/product_card.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/unit_screen/cubit/unit_cubit.dart';
import 'package:di4l_pos/common/extensions/limit_value_textfield.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';

class CreateOrderScreen extends StatefulWidget {
  /// MARK: - Initials;
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
        BlocProvider<CreateOrderCubit>(
          create: (BuildContext context) => CreateOrderCubit(),
        ),
        BlocProvider<CustomersCubit>(
          create: (BuildContext context) => CustomersCubit(),
        ),
        BlocProvider<UnitCubit>(
          create: (BuildContext context) => UnitCubit(),
        ),
      ],
      child: const CreateOrderScreen(),
    );
  }

  const CreateOrderScreen({Key? key}) : super(key: key);

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formKey = GlobalKey<FormState>();

  final List<VariantionItem> _vars = [];
  final List<PaymentItem> _payments = [];
  final _appPrefs = getIt<AppPref>();

  var _statusValue = GlobalConstants.orderStatus.first;
  var _discountType = GlobalConstants.discountTypes.first;
  var _shipping = GlobalConstants.orderShippings.first;
  var _recur = GlobalConstants.orderRecurs.first;
  var isQuotation = false;
  var isRecurring = false;
  int? _contactId;

  final _sellDiscountC = TextEditingController();
  final _sellNoteC = TextEditingController();
  final _staffNoteC = TextEditingController();
  final _recurIntervalC = TextEditingController();
  final _subscriptionRepeatOnC = TextEditingController();
  final _subscriptionNoC = TextEditingController();
  final _recurRepetitionsC = TextEditingController();
  final _shippingDetailC = TextEditingController();
  final _shippingAddressC = TextEditingController();
  final _deliveredToC = TextEditingController();
  final _shippingChargesC = TextEditingController();
  final _packingChargeC = TextEditingController();
  final _exchangeRateC = TextEditingController();
  final _taxRateC = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ProductsCubit>().getProducts();
    context.read<CustomersCubit>().getContacts();
    context.read<UnitCubit>().getUnits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        title: 'create_order'.tr,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<CustomersCubit, CustomersState>(
                      builder: (context, state) {
                        final _data = state.data!.customers;
                        if (state is GetCustomers) {
                          _contactId = _data.first.id;
                          return CustomDropDownWithT<ContactModel>(
                            labelText: 'customers'.tr,
                            items: _data.map<DropdownMenuItem<ContactModel>>(
                                (ContactModel value) {
                              return DropdownMenuItem<ContactModel>(
                                value: value,
                                child: Text(value.getFullName()),
                              );
                            }).toList(),
                            value: _data.first,
                            onChanged: (dynamic value) => _globalKey
                                .currentContext!
                                .read<CustomersCubit>()
                                .getCustomer(value),
                          );
                        } else if (state is GetCustomer) {
                          _contactId = state.data!.contactModel!.id;
                          return CustomDropDownWithT<ContactModel>(
                            labelText: 'customers'.tr,
                            items: _data.map<DropdownMenuItem<ContactModel>>(
                                (ContactModel value) {
                              return DropdownMenuItem<ContactModel>(
                                value: value,
                                child: Text(value.getFullName()),
                              );
                            }).toList(),
                            value: state.data!.contactModel!,
                            onChanged: (dynamic value) => _globalKey
                                .currentContext!
                                .read<CustomersCubit>()
                                .getCustomer(value),
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _taxRateC,
                      hintLabel: 'tax_rate'.tr,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: _sellDiscountC,
                            keyboardKey: const TextInputType.numberWithOptions(
                                decimal: true),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d+\.?\d{0,2}'))
                            ],
                            hintLabel: 'discount_amount'.tr,
                            validator: (value) {
                              if (value?.trim().isEmpty ?? true) {
                                return 'field_is_required'.tr;
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomDropDown(
                            labelText: 'discount_type'.tr,
                            value: _discountType,
                            items: GlobalConstants.discountTypes,
                            onChanged: (String? value) =>
                                setState(() => _discountType = value!),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: const EdgeInsets.all(0),
                      title: Text("is_quotation".tr),
                      value: isQuotation,
                      onChanged: (value) =>
                          setState(() => isQuotation = value!),
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _sellNoteC,
                      hintLabel: 'sell_note'.tr,
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _staffNoteC,
                      hintLabel: 'staff_note'.tr,
                    ),
                    const SizedBox(height: 12),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: const EdgeInsets.all(0),
                      title: Text("is_recurring".tr),
                      value: isRecurring,
                      onChanged: (value) =>
                          setState(() => isRecurring = value!),
                    ),
                  ],
                ),
              ),

              /// invoice
              if (isRecurring == true) ...[
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              controller: _recurIntervalC,
                              hintLabel: 'recur_interval'.tr,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CustomDropDown(
                              labelText: 'recur_interval_type'.tr,
                              value: _recur,
                              items: GlobalConstants.orderRecurs,
                              onChanged: (String? value) =>
                                  setState(() => _recur = value!),
                            ),
                          ),
                        ],
                      ),
                      if (_recur == 'months') ...[
                        const SizedBox(height: 12),
                        CustomTextField(
                          controller: _subscriptionRepeatOnC,
                          hintLabel: 'subscription_repeat_on'.tr,
                          keyboardKey: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(2),
                            LimitRange(1, 30),
                          ],
                        ),
                      ],
                      const SizedBox(height: 12),
                      CustomTextField(
                        controller: _subscriptionNoC,
                        hintLabel: 'subscription_no'.tr,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        controller: _recurRepetitionsC,
                        hintLabel: 'recur_repetitions'.tr,
                      ),
                    ],
                  ),
                )
              ],

              /// Products and payments
              const SizedBox(height: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<ProductsCubit, ProductsState>(
                      builder: (context, state) {
                        final _data = state.data!.products;
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalColors.primaryColor,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text('Select Product'),
                              SizedBox(width: 10),
                              Icon(
                                Icons.turn_right,
                                color: Colors.white,
                                size: 16,
                              ),
                            ],
                          ),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Choose Product'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: _data
                                          .map((item) => CheckboxListTile(
                                                value: _vars.contains(item),
                                                title: Text(item.name!),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                onChanged: (isChecked) {
                                                  final qty =
                                                      TextEditingController();
                                                  final unitPrice =
                                                      TextEditingController();
                                                  final taxRate =
                                                      TextEditingController();
                                                  final discountAmount =
                                                      TextEditingController();

                                                  TextEditingController();
                                                  final note =
                                                      TextEditingController();
                                                  final variant = VariantionItem(
                                                      item,
                                                      item
                                                          .productVariations!
                                                          .first!
                                                          .variations!
                                                          .first!,
                                                      qty,
                                                      unitPrice,
                                                      taxRate,
                                                      discountAmount,
                                                      '',
                                                      0,
                                                      note);
                                                  setState(() {
                                                    _vars.add(variant);
                                                  });
                                                },
                                              ))
                                          .toList(),
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('Close'),
                                      onPressed: () => navigator!.pop(),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 12),
                    Column(
                      children: List.generate(
                          _vars.length, (index) => _buildProduct(index)),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: GlobalColors.primaryColor,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text('Select Payment'),
                          SizedBox(width: 10),
                          Icon(
                            Icons.turn_right,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                      onPressed: () async {
                        final _businessLocation = await _appPrefs.getBusiness();
                        await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Choose Payment method'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: _businessLocation!.payMethods!
                                      .map(
                                        (item) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              foregroundColor:
                                                  const Color.fromARGB(
                                                      255, 84, 179, 243),
                                            ),
                                            onPressed: () => setState(
                                              () => _payments.add(PaymentItem(
                                                  TextEditingController(),
                                                  item)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 8),
                                              child: Text(
                                                item.label!,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('Close'),
                                  onPressed: () => navigator!.pop(),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 12),
                    Column(
                      children: List.generate(
                        _payments.length,
                        (index) => PaymentCard(
                          method: _payments[index].payMethod.label!,
                          amount: _payments[index].amount,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Shipping
              const SizedBox(height: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomDropDown(
                            labelText: 'status',
                            value: _statusValue,
                            items: GlobalConstants.orderStatus,
                            onChanged: (String? value) =>
                                setState(() => _statusValue = value!),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomDropDown(
                            labelText: 'shipping_status'.tr,
                            value: _shipping,
                            items: GlobalConstants.orderShippings,
                            onChanged: (String? value) =>
                                setState(() => _shipping = value!),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _shippingDetailC,
                      hintLabel: 'shipping_details'.tr,
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _shippingAddressC,
                      hintLabel: 'shipping_address'.tr,
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _deliveredToC,
                      hintLabel: 'delivered_to'.tr,
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _shippingChargesC,
                      hintLabel: 'shipping_charges'.tr,
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _packingChargeC,
                      hintLabel: 'packing_charge'.tr,
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _exchangeRateC,
                      hintLabel: 'exchange_rate'.tr,
                      keyboardKey:
                          const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^\d+\.?\d{0,2}'))
                      ],
                    ),
                  ],
                ),
              ),

              /// Submit
              const SizedBox(height: 16),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(
                    height: 44, width: double.infinity),
                child: ElevatedButton.icon(
                  onPressed: () {
                    List<SellProductRequest> _productRs = [];
                    for (var i = 0; i < _vars.length; i++) {
                      SellProductRequest _sellProduct = SellProductRequest(
                        productId: _vars[i].product.id,
                        variantionId: _vars[i].variantion.id,
                        quantity: int.parse(_vars[i].qty.text),
                        unitPrice: double.parse(_vars[i].unitPrice.text),
                        taxRateId: '',
                        discountAmount:
                            double.parse(_vars[i].discountAmount.text),
                        discountType: _vars[i].discountType,
                        subUnitId: _vars[i].subUnit,
                        note: _vars[i].note.text,
                      );
                      _productRs.add(_sellProduct);
                    }
                    List<SellPaymentRequest> _paymentRs = [];
                    for (var i = 0; i < _payments.length; i++) {
                      SellPaymentRequest _paymentR = SellPaymentRequest(
                        amount: double.parse(_payments[i].amount.text),
                        accountId: _payments[i].payMethod.accountId == null
                            ? null
                            : int.parse(_payments[i].payMethod.accountId!),
                        method: _payments[i].payMethod.name,
                      );
                      _paymentRs.add(_paymentR);
                    }
                    if (_formKey.currentState!.validate()) {
                      _globalKey.currentContext!
                          .read<CreateOrderCubit>()
                          .addSell(
                            contactId: _contactId,
                            discountAmount: double.parse(
                                _sellDiscountC.text.isEmpty
                                    ? '0'
                                    : _sellDiscountC.text),
                            discountType: _discountType,
                            isQuotation: isQuotation,
                            staffNote: _staffNoteC.text,
                            saleNote: _sellNoteC.text,
                            isRecurring: isRecurring ? 1 : 0,
                            recurInterval: int.parse(
                                _recurIntervalC.text.isEmpty
                                    ? '0'
                                    : _recurIntervalC.text),
                            recurIntervalType: _recur,
                            subscriptionNo: _subscriptionNoC.text,
                            recurRepetitions: int.parse(
                                _recurRepetitionsC.text.isEmpty
                                    ? '0'
                                    : _recurRepetitionsC.text),
                            status: _statusValue,
                            shippingStatus: _shipping,
                            shippingDetails: _shippingDetailC.text,
                            shippingAddress: _shippingAddressC.text,
                            deliveredTo: _deliveredToC.text,
                            shippingCharges: double.parse(
                                _shippingChargesC.text.isEmpty
                                    ? '0'
                                    : _shippingChargesC.text),
                            packingCharge: double.parse(
                                _packingChargeC.text.isEmpty
                                    ? '0'
                                    : _packingChargeC.text),
                            exchangeRate: double.parse(
                                _exchangeRateC.text.isEmpty
                                    ? '0'
                                    : _exchangeRateC.text),
                            products: _productRs,
                            payments: _paymentRs,
                          );
                    }
                  },
                  icon: const Icon(
                    Icons.save,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalColors.primaryColor,
                  ),
                  label: Text(
                    'save'.tr,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProduct(index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _vars[index].product.name!,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        VariantionCard(
          widget: CustomDropDownWithT<Variation?>(
            labelText: 'variantion'.tr,
            items: _vars[index]
                .product
                .productVariations!
                .first!
                .variations!
                .map<DropdownMenuItem<Variation?>>((Variation? value) {
              return DropdownMenuItem<Variation?>(
                value: value,
                child: Text(value!.name!),
              );
            }).toList(),
            value: _vars[index].variantion,
            onChanged: (dynamic value) {
              setState(() {
                _vars[index].variantion = value;
              });
            },
          ),
          qty: _vars[index].qty,
          unitPrice: _vars[index].unitPrice,
          taxRate: _vars[index].taxRate,
          discountAmount: _vars[index].discountAmount,
          discountWidget: BlocBuilder<CreateOrderCubit, CreateOrderState>(
            builder: (context, state) => CustomDropDown(
              labelText: 'discount_type'.tr,
              items: GlobalConstants.discountTypes,
              value: state.data!.discountType,
              onChanged: (dynamic value) => _globalKey.currentContext!
                  .read<CreateOrderCubit>()
                  .getType(value),
            ),
          ),
          unitWidget: BlocBuilder<UnitCubit, UnitState>(
            builder: (context, state) {
              final _data = state.data!.units;
              if (state is GetUnits) {
                _vars[index].subUnit = _data.first.id!;
                return CustomDropDownWithT<Unit>(
                  labelText: 'unit'.tr,
                  items: _data.map<DropdownMenuItem<Unit>>((Unit value) {
                    return DropdownMenuItem<Unit>(
                      value: value,
                      child: Text(value.actualName!),
                    );
                  }).toList(),
                  value: _data.first,
                  onChanged: (dynamic value) => _globalKey.currentContext!
                      .read<UnitCubit>()
                      .getUnit(value),
                );
              } else if (state is GetUnit) {
                _vars[index].subUnit = state.data!.unit!.id!;
                return CustomDropDownWithT<Unit>(
                  labelText: 'unit'.tr,
                  items: _data.map<DropdownMenuItem<Unit>>((Unit value) {
                    return DropdownMenuItem<Unit>(
                      value: value,
                      child: Text(value.actualName!),
                    );
                  }).toList(),
                  value: state.data!.unit!,
                  onChanged: (dynamic value) => _globalKey.currentContext!
                      .read<UnitCubit>()
                      .getUnit(value),
                );
              }
              return const SizedBox();
            },
          ),
          note: _vars[index].note,
        ),
      ],
    );
  }
}
