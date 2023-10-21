import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/shopinfo/response/TaxResponse.dart';
import 'package:di4l_pos/models/stock_purchases/request/add_stock_purchase_request.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/business_screen/widget/CustomDropMenu.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_text_form_field.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/business_location_settings/cubit/payment_account_cubit.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/sub_screens/add_stock_purchase_screen/cubit/add_stock_purchase_cubit.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/sub_screens/add_stock_purchase_screen/widget/select_supplier_screen.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'widget/select_products_purchase.dart';

class AddStockPurchaseScreen extends StatefulWidget {
  const AddStockPurchaseScreen({Key? key, this.businessLocation})
      : super(key: key);
  final BusinessLocation? businessLocation;

  // static BlocProvider<SuppliersCubit> provider() {
  //   return BlocProvider(
  //     create: (context) => SuppliersCubit(),
  //     child: const AddStockPurchaseScreen(),
  //   );
  // }

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SuppliersCubit>(
          create: (context) => SuppliersCubit(),
        ),
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (context) => BusinessCubit(),
        ),
        BlocProvider<PaymentAccountCubit>(
          create: (context) => PaymentAccountCubit(),
        ),
        BlocProvider<AddStockPurchaseCubit>(
          create: (context) => AddStockPurchaseCubit(),
        ),
      ],
      child: AddStockPurchaseScreen(),
    );
  }

  @override
  State<AddStockPurchaseScreen> createState() => _AddStockPurchaseScreenState();
}

class _AddStockPurchaseScreenState extends State<AddStockPurchaseScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();
  final TextEditingController _txtrefNo = TextEditingController();
  final TextEditingController _txttransactionDate = TextEditingController();
  final TextEditingController _txtPaidOnDate = TextEditingController();
  final TextEditingController _txtadditionalNotes = TextEditingController();
  final TextEditingController _txtPaymentNotes = TextEditingController();

  final TextEditingController _txtPayTerm = TextEditingController();
  final TextEditingController _txtShippingDetails = TextEditingController();
  final TextEditingController _txtShippingCharges = TextEditingController();
  final TextEditingController _txtDiscountAmount = TextEditingController();
  final TextEditingController _txtAmount = TextEditingController();
  final TextEditingController _txtCardNumber = TextEditingController();
  final TextEditingController _txtCardName = TextEditingController();
  final TextEditingController _txtCardTransaction = TextEditingController();
  final TextEditingController _txtMonth = TextEditingController();
  final TextEditingController _txtYear = TextEditingController();
  final TextEditingController _txtCode = TextEditingController();

  final TextEditingController _txtChequeNo = TextEditingController();

  final TextEditingController _txtBankAccountNo = TextEditingController();

  final TextEditingController _txtTransactionNo = TextEditingController();

  final List<TextEditingController?> _txtprice = [];
  final List<TextEditingController> _txtquantity = [];

  int? _locationId;
  int? _contactId;
  dynamic _payTerm;
  dynamic _cardType;
  dynamic _disType;
  dynamic _tax;

  List<Product>? _productsSelected;

  var payTerm = [
        "months",
        "days",
      ],
      disType = [
        "fixed",
        "percentage",
      ],
      cardType = ["credit", "debit", "visa", "masterCard"];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    _txttransactionDate.text =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    _txtPaidOnDate.text =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    _txtDiscountAmount.text = '0';
    _txtAmount.text = '0';
    _txtShippingCharges.text = '0';

    //         context.read<ProductsCubit>().getProducts();
    context.read<BusinessCubit>().getBusinesss();
    context.read<AddStockPurchaseCubit>().getTax();
    context.read<AddStockPurchaseCubit>().getPurchaseCreate();
    context.read<PaymentAccountCubit>().getPaymentsAccount();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _selectDate(
        BuildContext context, TextEditingController controller) async {
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
            final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
            final String formattedDate = formatter.format(combinedDate);
            controller.text = formattedDate;
          });
        }
      }
    }

    return BlocListener<AddStockPurchaseCubit, AddStockPurchaseState>(
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
        key: globalKey,
        backgroundColor: GlobalColors.bgColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text('add_stock_purchase'.tr,
              style: GlobalStyles.titilliumRegular(context).copyWith(
                fontSize: 16,
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: true,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: SingleChildScrollView(
            child: Column(children: [
              buildHeader(_selectDate, context),
              buildSelectProducts(context),
              Container(
                color: Colors.white,
                width: Get.width,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomDropdown(
                            title: 'discount_type'.tr,
                            hint: 'Please Selected',
                            info: null,
                            footIcon: const Icon(Icons.arrow_drop_down,
                                color: Color(0xff434345)),
                            listItem: disType,
                            onChanged: (String? T) {
                              _disType = T!;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: _txtDiscountAmount,
                            // onChanged: (value) => rewardInfo
                            //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                            hintText: 'discount_amount'.tr,
                            title: 'discount_amount'.tr,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            // hintText: '0.00',
                          ),
                        ),
                      ],
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 10),
                    //   child: Text('Discount:(-) 0.00'),
                    // ),
                    BlocBuilder<AddStockPurchaseCubit, AddStockPurchaseState>(
                      builder: (context, state) {
                        state.data!.tax == null
                            ? _tax = null
                            : _tax = state.data!.tax;
                        final valueTax = state.data!.listTax.firstWhereOrNull(
                            (item) => item.id == state.data!.tax?.id);
                        return CustomDropDownWithT<TaxData>(
                            labelText: 'purchase_tax'.tr,
                            items: state.data!.listTax
                                .map<DropdownMenuItem<TaxData>>(
                                  (TaxData value) => DropdownMenuItem<TaxData>(
                                    value: value,
                                    child: Text(value.name!),
                                  ),
                                )
                                .toList(),
                            value: valueTax,
                            onChanged: (dynamic value) => {
                                  context
                                      .read<AddStockPurchaseCubit>()
                                      .getTaxData(value),
                                  // _taxRate = double.parse(value.amount)
                                  // setState(() {
                                  //   // saleInfo?.defaultSalesTax = value.id;
                                  // })
                                });
                      },
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 10),
                    //   child: Text('Purchase Tax:(+) 0.00'),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'additional_notes'.tr,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            maxLines: 3,
                            controller: _txtadditionalNotes,
                            decoration: InputDecoration(
                              hintText: 'additional_notes'.tr,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 10.0,
                              ),
                              filled: true,
                              fillColor: GlobalColors.whiteColor,
                            ),
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                width: Get.width,
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'shipping_details'.tr,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: _txtShippingDetails,
                        decoration: InputDecoration(
                          hintText: 'shipping_details'.tr,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 10.0,
                          ),
                          filled: true,
                          fillColor: GlobalColors.whiteColor,
                        ),
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '(+) ${'additional_shipping_charges'.tr}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: _txtShippingCharges,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: 'shipping_charges'.tr,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 10.0,
                          ),
                          filled: true,
                          fillColor: GlobalColors.whiteColor,
                        ),
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      // const Padding(
                      //   padding: EdgeInsets.symmetric(vertical: 10),
                      //   child: Text('Purchase Total: 0.00 ₫'),
                      // ),
                    ]),
              ),
              BlocBuilder<AddStockPurchaseCubit, AddStockPurchaseState>(
                builder: (context, state) {
                  return Container(
                    color: Colors.white,
                    width: Get.width,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('add_payment'.tr,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Advance Balance: 0'),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _txtAmount,
                            // onChanged: (value) => contractInfo?.defaultCreditLimit = value,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                labelText: 'amount'.tr,
                                // ignore: prefer_const_constructors
                                floatingLabelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff49545C),
                                    fontSize: 18),
                                labelStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff49545C),
                                    fontSize: 18),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xffDFDFDF),
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 3, 162, 85),
                                  ),
                                ),
                                icon: const Icon(Icons.money_sharp,
                                    color: Color(0xff434345)),
                                hintText: "0",
                                hintStyle: const TextStyle(
                                    color: Color(0xff9DA1A4), fontSize: 14),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always),
                            cursorColor: const Color.fromARGB(255, 6, 154, 77),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'paid_on'.tr,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextField(
                                controller: _txtPaidOnDate,
                                onTap: () =>
                                    _selectDate(context, _txtPaidOnDate),
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
                            ],
                          ),
                          BlocBuilder<AddStockPurchaseCubit,
                              AddStockPurchaseState>(
                            builder: (context, state) {
                              final paymentMethod = state
                                  .data!.listPaymentMethod
                                  .firstWhereOrNull(
                                      (item) => item == state.data?.payMethod);
                              return CustomDropDownWithT<String>(
                                  labelText: 'payment_method'.tr,
                                  items: state.data!.listPaymentMethod
                                      .map<DropdownMenuItem<String>>(
                                        (String value) =>
                                            DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value.tr),
                                        ),
                                      )
                                      .toList(),
                                  value: paymentMethod,
                                  onChanged: (dynamic value) => {
                                        context
                                            .read<AddStockPurchaseCubit>()
                                            .getPaymentMethod(value),
                                        // setState(() {
                                        //   // saleInfo?.defaultSalesTax = value.id;
                                        // })
                                      });
                            },
                          ),
                          if (state.data!.payMethod != 'advance')
                            BlocBuilder<PaymentAccountCubit,
                                PaymentAccountState>(
                              builder: (context, state) {
                                final paymentAccount = state
                                    .data!.paymentAccounts
                                    .firstWhereOrNull((item) =>
                                        item.id ==
                                        state.data!.paymentAccount?.id);
                                return CustomDropDownWithT<PaymentAccount>(
                                    labelText: 'payment_account'.tr,
                                    items: state.data!.paymentAccounts
                                        .map<DropdownMenuItem<PaymentAccount>>(
                                          (PaymentAccount value) =>
                                              DropdownMenuItem<PaymentAccount>(
                                            value: value,
                                            child: Text(value.name!),
                                          ),
                                        )
                                        .toList(),
                                    value: paymentAccount,
                                    onChanged: (dynamic value) => {
                                          context
                                              .read<PaymentAccountCubit>()
                                              .getPaymentAccount(value),
                                          setState(() {
                                            // saleInfo?.defaultSalesTax = value.id;
                                          })
                                        });
                              },
                            ),
                          if (state.data!.payMethod == 'card')
                            Column(
                              children: [
                                CustomTextFormField(
                                  controller: _txtCardNumber,
                                  // onChanged: (value) => rewardInfo
                                  //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                                  hintText: 'card_number'.tr,
                                  title: 'card_number'.tr,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  // hintText: '0.00',),
                                ),
                                CustomTextFormField(
                                  controller: _txtCardName,
                                  // onChanged: (value) => rewardInfo
                                  //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                                  hintText: 'card_holder_name'.tr,
                                  title: 'card_holder_name'.tr,
                                  // hintText: '0.00',),
                                ),
                                CustomTextFormField(
                                  controller: _txtCardTransaction,
                                  // onChanged: (value) => rewardInfo
                                  //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                                  hintText: 'card_transaction_no'.tr,
                                  title: 'card_transaction_no'.tr,
                                  // keyboardType: TextInputType.number,
                                  // inputFormatters: [
                                  //   FilteringTextInputFormatter.digitsOnly
                                  // ],

                                  // hintText: '0.00',),
                                ),
                                CustomDropdown(
                                  hint: 'Please Selected',
                                  title: 'card_type'.tr,

                                  info:
                                      // rewardInfo!.redeemPointsSetting!.rpExpiryType ==
                                      //         'month'
                                      cardType[0],
                                  // : listExpiryType[1],
                                  footIcon: const Icon(Icons.arrow_drop_down,
                                      color: Color(0xff434345)),
                                  listItem: cardType,
                                  onChanged: (String? T) {
                                    _cardType = T!;
                                  },
                                ),
                                CustomTextFormField(
                                  controller: _txtMonth,
                                  // onChanged: (value) => rewardInfo
                                  //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                                  hintText: 'month'.tr,
                                  title: 'month'.tr,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                                CustomTextFormField(
                                  controller: _txtYear,
                                  // onChanged: (value) => rewardInfo
                                  //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                                  hintText: 'year'.tr,
                                  title: 'year'.tr,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                                CustomTextFormField(
                                  controller: _txtCode,
                                  // onChanged: (value) => rewardInfo
                                  //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                                  hintText: 'security_code'.tr,
                                  title: 'security_code'.tr,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                )
                              ],
                            ),
                          if (state.data!.payMethod == 'cheque')
                            CustomTextFormField(
                              controller: _txtChequeNo,
                              // onChanged: (value) => rewardInfo
                              //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                              hintText: 'cheque_no'.tr,
                              title: 'cheque_no'.tr,
                            ),
                          if (state.data!.payMethod == 'bank_transfer')
                            CustomTextFormField(
                              controller: _txtBankAccountNo,
                              // onChanged: (value) => rewardInfo
                              //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                              hintText: 'bank_account_no'.tr,
                              title: 'bank_account_no'.tr,
                            ),
                          if (state.data!.payMethod == 'custom_pay_1' ||
                              state.data!.payMethod == 'custom_pay_2' ||
                              state.data!.payMethod == 'custom_pay_3' ||
                              state.data!.payMethod == 'custom_pay_4' ||
                              state.data!.payMethod == 'custom_pay_5' ||
                              state.data!.payMethod == 'custom_pay_6' ||
                              state.data!.payMethod == 'custom_pay_7')
                            CustomTextFormField(
                              controller: _txtTransactionNo,
                              // onChanged: (value) => rewardInfo
                              //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
                              hintText: 'transaction_no'.tr,
                              title: 'transaction_no'.tr,
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'payment_note'.tr,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextFormField(
                                  maxLines: 3,
                                  controller: _txtPaymentNotes,
                                  decoration: InputDecoration(
                                    hintText: 'payment_note'.tr,
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 16.0,
                                      horizontal: 10.0,
                                    ),
                                    filled: true,
                                    fillColor: GlobalColors.whiteColor,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  );
                },
              ),
              // const Divider(),
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 10),
              //   child: const Text('Payment due: 0.00'),
              // ),
            ]),
          ),
        ),
        bottomNavigationBar: buildButtonSave(),
      ),
    );
  }

  Container buildButtonSave() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: () {
          List<PurchaseRequest> pr = [];
          _productsSelected!.map((e) {
            int idx = _productsSelected!.indexOf(e);
            PurchaseRequest productsRequest = PurchaseRequest(
                productId: '${e.id}',
                variationId:
                    '${e.productVariations?.elementAt(0)?.variations?.elementAt(0)?.id}',
                quantity: _txtquantity.elementAt(idx).text,
                // productUnitId: '${e.unit!.id}',
                // subUnitId: '${e.unit!.id}',
                ppWithoutDiscount:
                    '${e.productVariations?.elementAt(0)?.variations?.elementAt(0)?.defaultPurchasePrice}',
                discountPercent: '0',
                purchasePrice:
                    '${e.productVariations?.elementAt(0)?.variations?.elementAt(0)?.defaultPurchasePrice}',
                purchaseLineTaxId: null,
                itemTax: '0',
                purchasePriceIncTax:
                    '${e.productVariations?.elementAt(0)?.variations?.elementAt(0)?.defaultPurchasePrice}',
                profitPercent: '-100',
                lotNumber: '1',
                mfgDate: null,
                expDate: null);
            pr.add(productsRequest);
          }).toList();
          List<Payment> payment = [];
          Payment paymentRequest = Payment(
              amount: _txtAmount.text,
              paidOn: _txtPaidOnDate.text,
              method: 'cash',
              accountId: null,
              cardNumber: null,
              cardHolderName: null,
              cardTransactionNumber: null,
              cardType: 'credit',
              cardMonth: null,
              cardYear: null,
              cardSecurity: null,
              chequeNumber: null,
              bankAccountNumber: null,
              transactionNo1: null,
              transactionNo2: null,
              transactionNo3: null,
              transactionNo4: null,
              transactionNo5: null,
              transactionNo6: null,
              transactionNo7: null,
              note: _txtPaymentNotes.text);
          payment.add(paymentRequest);

          List allSubTotal = [];
          for (var p in pr) {
            final subTotal =
                double.parse(p.quantity!) * double.parse(p.purchasePrice!);
            allSubTotal.add(subTotal);
          }

          double sum = allSubTotal.fold(
              0, (previousValue, element) => previousValue + element);

          double discount = 0;
          double afterDiscount = 0;
          if (_disType != null) {
            if (_disType == 'fixed') {
              discount = double.parse(_txtDiscountAmount.text);
              afterDiscount = sum - discount;
            } else if (_disType == 'percentage') {
              discount = (sum * double.parse(_txtDiscountAmount.text) / 100);
              afterDiscount = sum - discount;
            }
          } else {
            afterDiscount = sum - discount;
          }

          double afterTax = 0;
          if (_tax != null) {
            afterTax = afterDiscount * _tax.amount / 100;
          } else {
            afterTax = 0;
          }

          double finalTotal = afterDiscount +
              afterTax +
              double.parse(_txtShippingCharges.text) -
              double.parse(_txtAmount.text);

          globalKey.currentContext!
              .read<AddStockPurchaseCubit>()
              .addStockPurchase(
                  contactId: _contactId,
                  refNo: _txtrefNo.text.trim(),
                  transactionDate: _txttransactionDate.text,
                  payTermNumber: _txtPayTerm.text,
                  payTermType: _payTerm,
                  locationId: _locationId!,
                  products: pr,
                  totalBeforeTax: '$sum',
                  discountType: _disType,
                  discountAmount: _txtDiscountAmount.text,
                  taxId: _tax != null ? '${_tax.id}' : null,
                  taxAmount: '$afterTax',
                  additionalNotes: _txtadditionalNotes.text.trim(),
                  shippingDetails: _txtShippingDetails.text,
                  shippingCharges: _txtShippingCharges.text,
                  finalTotal: '$finalTotal',
                  advanceBalance: '0',
                  payment: payment);
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
      ),
    );
  }

  Container buildSelectProducts(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Get.width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('products'.tr,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
        BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            return state.data!.productsSelected.isNotEmpty
                ? ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.data!.productsSelected.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      _txtprice.add(TextEditingController());
                      _txtquantity.add(TextEditingController());
                      _txtprice.elementAt(index)!.text = (state
                                  .data!.productsSelected
                                  .elementAt(index)
                                  .productVariations
                                  ?.elementAt(0)
                                  ?.variations
                                  ?.elementAt(0)
                                  ?.defaultPurchasePrice ??
                              '')
                          .toString();
                      // .formatMoney();
                      _txtquantity.elementAt(index).text = '1';
                      // _txtSubTotal.add(TextEditingController());
                      // _txtSubTotal
                      //     .elementAt(index)
                      //     .text = (double.parse(
                      //             _txtquantity.elementAt(index).text) *
                      //         double.parse(
                      //             _txtprice.elementAt(index)!.text))
                      //     .toString()
                      //     .formatMoney();
                      // double sum = _txtSubTotal.fold(
                      //     0,
                      //     (previousValue, element) =>
                      //         previousValue +
                      //         double.parse(element.text));
                      // _globalKey.currentContext!
                      //     .read<AddStockAdjustmentCubit>()
                      //     .sum('$sum');
                      return Column(
                        children: [
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(5.0),
                                          ),
                                        ),
                                        width: Get.width * 0.13,
                                        height: Get.width * 0.13,
                                        child: CachedNetworkImage(
                                          // width: Get.width * 0.15,
                                          // height: Get.width * 0.15,
                                          fit: BoxFit.cover,
                                          imageUrl: state.data!.productsSelected
                                                  .elementAt(index)
                                                  .imageUrl ??
                                              '',
                                          errorWidget: (context, url, error) =>
                                              const ErrorWidgetImage(),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.data!.productsSelected
                                              .elementAt(index)
                                              .name
                                              .toString(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: Dimensions.PADDING_SIZE_SMALL,
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: GlobalColors.redColor,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            onTap: () {
                              final updateProduct = [
                                ...state.data!.productsSelected
                              ];
                              updateProduct.removeAt(index);
                              globalKey.currentContext!
                                  .read<ProductsCubit>()
                                  .productsSelected(updateProduct);
                              _productsSelected = updateProduct;
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: CustomTextField(
                              controller: _txtquantity.elementAt(index),
                              keyboardKey: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              // hintText: '1'.tr,
                              hintLabel: 'Quantity'.tr,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: CustomTextField(
                              controller: _txtprice.elementAt(index),
                              keyboardKey: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              hintText: state.data!.productsSelected
                                  .elementAt(index)
                                  .productVariations
                                  ?.elementAt(0)
                                  ?.variations
                                  ?.elementAt(0)
                                  ?.defaultPurchasePrice
                                  .toString()
                                  .formatMoney(),
                              hintLabel: 'Unit Price'.tr,
                            ),
                          ),
                          // Padding(
                          //   padding:
                          //       const EdgeInsets.symmetric(vertical: 5),
                          //   child: CustomTextField(
                          //     controller: _txtSubTotal.elementAt(index),
                          //     isEnable: false,
                          //     hintText: 'Sub Total'.tr,
                          //     hintLabel: 'Sub Total'.tr,
                          //   ),
                          // ),
                        ],
                      );
                    },
                  )
                : const SizedBox();
          },
        ),
        Center(
          child: ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: Text('add'.tr),
            style: ElevatedButton.styleFrom(
              backgroundColor: GlobalColors.primaryColor,
            ),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                context: context,
                builder: (context) => BlocProvider(
                  create: (context) => ProductsCubit(),
                  child: SelectProductsPurchase(
                    // selectedItems: state.data!.product != null
                    //     ? [state.data!.product]
                    //     : [],
                    onTap: (List<Product>? p) {
                      globalKey.currentContext!
                          .read<ProductsCubit>()
                          .productsSelected(p);
                      _productsSelected = p;
                      // Assign the first item if the list is not empty
                    },
                  ),
                ),
              );
            },
          ),
        ),
        // Divider(),
        // const Padding(
        //   padding: EdgeInsets.symmetric(vertical: 10),
        //   child: Text('Total Items: 0.00 ₫'),
        // ),
        // const Padding(
        //   padding: EdgeInsets.symmetric(vertical: 10),
        //   child: Text('Net Total Amount: 0.00 ₫'),
        // ),
      ]),
    );
  }

  Container buildHeader(
      Future<void> _selectDate(
          BuildContext context, TextEditingController controller),
      BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          buildSelectSupplier(),
          buildRefNo(),
          buildDatePurchase(_selectDate, context),
          buildBusinessLocations(),
          const SizedBox(
            height: 10,
          ),
          buildPayTerm(),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  Row buildPayTerm() {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            controller: _txtPayTerm,
            // onChanged: (value) => rewardInfo
            //     ?.redeemPointsSetting!.rpExpiryPeriod = value,
            hintText: 'pay_term'.tr,
            title: 'pay_term'.tr,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            // hintText: '0.00',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: CustomDropdown(
            hint: 'Please Selected',
            info: null,
            footIcon:
                const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
            listItem: payTerm,
            onChanged: (String? T) {
              _payTerm = T!;
            },
          ),
        ),
      ],
    );
  }

  BlocBuilder<BusinessCubit, BusinessState> buildBusinessLocations() {
    return BlocBuilder<BusinessCubit, BusinessState>(
      builder: (context, state) {
        state.data!.business == null
            ? _locationId = 1
            : _locationId = state.data!.business!.id!;

        final value = state.data!.business ??
            state.data!.businesss.firstWhereOrNull(
                (item) => item.id == widget.businessLocation?.businessId);

        return CustomDropDownWithT<BusinessLocation>(
          labelText: 'business_location'.tr,
          items: state.data!.businesss
              .map<DropdownMenuItem<BusinessLocation>>(
                  (BusinessLocation value) =>
                      DropdownMenuItem<BusinessLocation>(
                        value: value,
                        child: Text(value.name!),
                      ))
              .toList(),
          value: value,
          onChanged: (dynamic value) => globalKey.currentContext!
              .read<BusinessCubit>()
              .getBusiness(value),
        );
      },
    );
  }

  Column buildDatePurchase(
      Future<void> _selectDate(
          BuildContext context, TextEditingController controller),
      BuildContext context) {
    return Column(
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
          onTap: () => _selectDate(context, _txttransactionDate),
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
      ],
    );
  }

  Column buildRefNo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            'reference_no'.tr,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextFormField(
          controller: _txtrefNo,
          decoration: InputDecoration(
            hintText: 'reference_no'.tr,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 10.0,
            ),
            filled: true,
            fillColor: GlobalColors.whiteColor,
          ),
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  BlocBuilder<SuppliersCubit, SuppliersState> buildSelectSupplier() {
    return BlocBuilder<SuppliersCubit, SuppliersState>(
      builder: (context, state) {
        state.data!.contactModel == null
            ? _contactId = 1
            : _contactId = state.data!.contactModel!.id;
        return state.data!.contactModel == null
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalColors.primaryColor),
                child: Text('choose_a_supplier'.tr),
                onPressed: () => showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    context: context,
                    builder: (context) => BlocProvider(
                        create: (context) => SuppliersCubit(),
                        child: SelectSupplierScreen(
                          onTap: (selectedSupplier) => globalKey.currentContext!
                              .read<SuppliersCubit>()
                              .getSupplier(selectedSupplier),
                        ))),
              )
            : ListTile(
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: GlobalColors.redColor),
                  onPressed: () {
                    globalKey.currentContext!
                        .read<SuppliersCubit>()
                        .getSupplier(null);
                  },
                ),
                title: Text(state.data!.contactModel!.name!),
                subtitle: Text(state.data!.contactModel!.email!),
                onTap: () => showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => BlocProvider(
                        create: (context) => SuppliersCubit(),
                        child: SelectSupplierScreen(
                          onTap: (selectedSupplier) => globalKey.currentContext!
                              .read<SuppliersCubit>()
                              .getSupplier(selectedSupplier),
                        ))),
              );
      },
    );
  }
}

// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField({
//     Key? key,
//     required this.controller,
//     this.keyboardType,
//     this.inputFormatters,
//     required this.labelText,
//   }) : super(key: key);

//   final TextEditingController controller;
//   final TextInputType? keyboardType;
//   final List<TextInputFormatter>? inputFormatters;
//   final String labelText;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       // onChanged: (value) => contractInfo?.defaultCreditLimit = value,
//       keyboardType: keyboardType,
//       inputFormatters: inputFormatters,
//       decoration: InputDecoration(
//           labelText: labelText,
//           // ignore: prefer_const_constructors
//           floatingLabelStyle: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: const Color(0xff49545C),
//               fontSize: 18),
//           labelStyle: const TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Color(0xff49545C),
//               fontSize: 18),
//           enabledBorder: const UnderlineInputBorder(
//             borderSide: BorderSide(
//               width: 1,
//               color: Color(0xffDFDFDF),
//             ),
//           ),
//           focusedBorder: const UnderlineInputBorder(
//             borderSide: BorderSide(
//               width: 1,
//               color: Color.fromARGB(255, 3, 162, 85),
//             ),
//           ),
//           hintText: "",
//           hintStyle: const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
//           floatingLabelBehavior: FloatingLabelBehavior.always),
//       cursorColor: const Color.fromARGB(255, 6, 154, 77),
//     );
//   }
// }
