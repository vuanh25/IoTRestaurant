import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/business_location/request/update_business_location_request.dart';
import 'package:di4l_pos/models/invoice/response/invoice_layout_response.dart';
import 'package:di4l_pos/models/invoice/response/invoice_schemas_response.dart';
import 'package:di4l_pos/models/location/response/locations_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';
import 'package:di4l_pos/models/price/response/price_response.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/location_screen/cubit/invoice_cubit.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/add_business_location_screen/widget/district_picker.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/add_business_location_screen/widget/province_picker.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/add_business_location_screen/widget/ward_picker.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/business_location_settings/cubit/payment_account_cubit.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/location_details_screen/cubit/invoice_layout_cubit.dart';
import 'package:di4l_pos/screens/location_screen/widget/featured_product.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/screens/price_screen/cubit/price_cubit.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_textfield.dart';

class AddBusinessLocationScreen extends StatefulWidget {
  const AddBusinessLocationScreen({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BusinessCubit(),
        ),
        BlocProvider(
          create: (context) => ProductsCubit(),
        ),
        BlocProvider(
          create: (context) => InvoiceLayoutCubit(),
        ),
        BlocProvider(
          create: (context) => InvoiceCubit(),
        ),
        BlocProvider(
          create: (context) => PriceCubit(),
        ),
        BlocProvider(
          create: (context) => PaymentAccountCubit(),
        ),
      ],
      child: const AddBusinessLocationScreen(),
    );
  }

  @override
  State<AddBusinessLocationScreen> createState() =>
      _AddBusinessLocationScreenState();
}

class _AddBusinessLocationScreenState extends State<AddBusinessLocationScreen>
    with AfterLayoutMixin {
  bool isSearch = false;
  final searchTxt = TextEditingController();

  final nameTxt = TextEditingController();
  final locationIdTxt = TextEditingController();
  final landmarkTxt = TextEditingController();
  final zipCodeTxt = TextEditingController();
  final countryTxt = TextEditingController();
  final stateTxt = TextEditingController();
  final mobileTxt = TextEditingController();
  final alternateMobileTxt = TextEditingController();
  final emailTxt = TextEditingController();
  final websiteTxt = TextEditingController();
  final customField1 = TextEditingController();
  final customField2 = TextEditingController();
  final customField3 = TextEditingController();
  final customField4 = TextEditingController();

  List<dynamic> featuredProducts = [];

  int? invoiceSchemeId;
  int? posInvoiceLayoutId;
  int? saleInvoiceLayoutId;
  int? defaultSellingPriceGroupId;

  int? provinceId;
  String? province;
  int? districtId;
  String? district;
  int? wardId;
  String? ward;

  Map<String, dynamic> defaultPaymentAccounts = {
    'delivery': {
      'label': 'delivery'.tr,
      'is_enabled': null,
      'account': null,
    },
    'cash': {
      'label': 'cash'.tr,
      'is_enabled': null,
      'account': null,
    },
    'card': {
      'label': 'card'.tr,
      'is_enabled': null,
      'account': null,
    },
    'cheque': {
      'label': 'cheque'.tr,
      'is_enabled': null,
      'account': null,
    },
    'bank_transfer': {
      'label': 'bank_transfer'.tr,
      'is_enabled': null,
      'account': null,
    },
    'other': {
      'label': 'other'.tr,
      'is_enabled': null,
      'account': null,
    },
    'cash_on_delivery': {
      'label': 'cash_on_delivery'.tr,
      'is_enabled': null,
      'account': null,
    },
    'custom_pay_1': {
      'label': 'custom_payment_1_label'.tr,
      'is_enabled': null,
      'account': null,
    },
    'custom_pay_2': {
      'label': 'custom_payment_2_label'.tr,
      'is_enabled': null,
      'account': null,
    },
    'custom_pay_3': {
      'label': 'custom_payment_3_label'.tr,
      'is_enabled': null,
      'account': null,
    },
    'custom_pay_4': {
      'label': 'custom_payment_4_label'.tr,
      'is_enabled': null,
      'account': null,
    },
    'custom_pay_5': {
      'label': 'custom_payment_5_label'.tr,
      'is_enabled': null,
      'account': null,
    },
    'custom_pay_6': {
      'label': 'custom_payment_6_label'.tr,
      'is_enabled': null,
      'account': null,
    },
    'custom_pay_7': {
      'label': 'custom_payment_7_label'.tr,
      'is_enabled': null,
      'account': null,
    },
  };
  List<String?> idList = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    for (var item in defaultPaymentAccounts.entries) {
      idList.add(item.value['account']);
    }
    context.read<PaymentAccountCubit>().getPaymentsAccountByList(idList);
    context.read<ProductsCubit>().getProducts();
    context.read<InvoiceCubit>().getInvoices();
    context.read<InvoiceLayoutCubit>().getLayouts();
    context.read<PriceCubit>().getPrices();
    searchTxt.addListener(() {
      context
          .read<ProductsCubit>()
          .searchProductsByVariation(text: searchTxt.text);
    });
  }

  @override
  void dispose() {
    super.dispose();
    nameTxt.dispose();
    locationIdTxt.dispose();
    landmarkTxt.dispose();
    countryTxt.dispose();
    stateTxt.dispose();
    mobileTxt.dispose();
    alternateMobileTxt.dispose();
    emailTxt.dispose();
    websiteTxt.dispose();
    customField1.dispose();
    customField2.dispose();
    customField3.dispose();
    customField4.dispose();
    searchTxt.clear();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          UIHelpers.showDialogDefaultBloc(
            status: state.data!.status,
            text: state.data!.error,
          );
        }
      },
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildBody(),
      ),
    );
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'add_location'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
          fontSize: 18,
          color: GlobalColors.primaryWebColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  SafeArea buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              TextField(
                controller: nameTxt,
                decoration: InputDecoration(labelText: 'location_name'.tr),
              ),
              TextField(
                controller: locationIdTxt,
                decoration: InputDecoration(labelText: 'location_id'.tr),
              ),
              TextField(
                controller: landmarkTxt,
                decoration: InputDecoration(labelText: 'landmark'.tr),
              ),
              CustomTextField(
                title: 'province'.tr,
                hint: 'province'.tr,
                info: province ?? 'none'.tr,
                isReadOnly: true,
                headIcon:
                    const Icon(Icons.location_city, color: Color(0xff434345)),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                onTap: () async {
                  DivisionData data = (await showModalBottomSheet(
                    context: context,
                    builder: (context) => ProvincePicker.provider(),
                  ));
                  setState(() {
                    district = null;
                    districtId = null;
                    ward = null;
                    wardId = null;
                    province = data.fullname;
                    provinceId = data.id;
                  });
                },
              ),
              CustomTextField(
                title: 'district'.tr,
                hint: 'district'.tr,
                info: district ?? 'none'.tr,
                isReadOnly: true,
                headIcon: const Icon(Icons.location_city_rounded,
                    color: Color(0xff434345)),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                onTap: () async {
                  DivisionData data = (await showModalBottomSheet(
                    context: context,
                    builder: (context) => DistrictPicker.provider(
                      parent: provinceId,
                    ),
                  ));
                  setState(() {
                    ward = null;
                    wardId = null;
                    district = data.fullname;
                    districtId = data.id;
                  });
                },
              ),
              CustomTextField(
                title: 'ward'.tr,
                hint: 'ward'.tr,
                info: ward ?? 'none'.tr,
                isReadOnly: true,
                headIcon: const Icon(Icons.location_city_rounded,
                    color: Color(0xff434345)),
                footIcon:
                    const Icon(Icons.arrow_drop_down, color: Color(0xff434345)),
                onTap: () async {
                  DivisionData data = (await showModalBottomSheet(
                    context: context,
                    builder: (context) => WardPicker.provider(
                      parent: districtId,
                    ),
                  ));
                  setState(() {
                    ward = data.fullname;
                    wardId = data.id;
                  });
                },
              ),
              TextField(
                controller: zipCodeTxt,
                decoration: const InputDecoration(labelText: 'Zipcode'),
              ),
              TextField(
                controller: countryTxt,
                decoration: InputDecoration(labelText: 'country'.tr),
              ),
              TextField(
                controller: stateTxt,
                decoration: InputDecoration(labelText: 'location_state'.tr),
              ),
              TextField(
                controller: mobileTxt,
                decoration: InputDecoration(labelText: 'mobile_number'.tr),
              ),
              TextField(
                controller: alternateMobileTxt,
                decoration: InputDecoration(labelText: 'alternative_number'.tr),
              ),
              TextField(
                controller: emailTxt,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: websiteTxt,
                decoration: const InputDecoration(labelText: 'Website'),
              ),
              TextField(
                controller: customField1,
                decoration: InputDecoration(
                    labelText: 'contact_custom_field_1_label'.tr),
              ),
              TextField(
                controller: customField2,
                decoration: InputDecoration(
                    labelText: 'contact_custom_field_2_label'.tr),
              ),
              TextField(
                controller: customField3,
                decoration: InputDecoration(
                    labelText: 'contact_custom_field_3_label'.tr),
              ),
              TextField(
                controller: customField4,
                decoration: InputDecoration(
                    labelText: 'contact_custom_field_4_label'.tr),
              ),
              BlocBuilder<InvoiceCubit, InvoiceState>(
                builder: (context, state) {
                  final invoiceList = state.data!.invoices;
                  return CustomDropDownWithT<InvoiceSchema>(
                    labelText: "invoice_schemes".tr,
                    items: invoiceList
                        .map<DropdownMenuItem<InvoiceSchema>>(
                          (e) => DropdownMenuItem<InvoiceSchema>(
                            value: e,
                            child: Text(e.name ?? ''),
                          ),
                        )
                        .toList(),
                    value: state.data!.invoice,
                    onChanged: (value) {
                      context.read<InvoiceCubit>().setInvoice(value!);
                      invoiceSchemeId = value.id;
                    },
                  );
                },
              ),
              BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
                builder: (context, state) {
                  final invoicesLayoutList = state.data!.invoices;
                  final posInvoiceLayout = state.data!.posInvoice;
                  final saleInvoiceLayout = state.data!.saleInvoice;
                  return Column(
                    children: [
                      CustomDropDownWithT<InvoiceLayout>(
                        labelText: 'pos_layout'.tr,
                        items: invoicesLayoutList
                            .map<DropdownMenuItem<InvoiceLayout>>(
                              (e) => DropdownMenuItem<InvoiceLayout>(
                                value: e,
                                child: Text(e.name ?? ''),
                              ),
                            )
                            .toList(),
                        value: posInvoiceLayout,
                        onChanged: (value) {
                          context
                              .read<InvoiceLayoutCubit>()
                              .setPosLayout(value!);
                          posInvoiceLayoutId = value.id;
                        },
                      ),
                      CustomDropDownWithT<InvoiceLayout>(
                        labelText: 'sale_layout'.tr,
                        items: invoicesLayoutList
                            .map<DropdownMenuItem<InvoiceLayout>>(
                              (e) => DropdownMenuItem<InvoiceLayout>(
                                value: e,
                                child: Text(e.name ?? ''),
                              ),
                            )
                            .toList(),
                        value: saleInvoiceLayout,
                        onChanged: (value) {
                          context
                              .read<InvoiceLayoutCubit>()
                              .setSaleLayout(value!);
                          saleInvoiceLayoutId = value.id;
                        },
                      )
                    ],
                  );
                },
              ),
              BlocBuilder<PriceCubit, PriceState>(
                builder: (context, state) {
                  final priceList = state.data!.prices;
                  final price = state.data!.price;
                  return CustomDropDownWithT<Price>(
                    labelText: 'selling_price_group'.tr,
                    items: priceList
                        .map<DropdownMenuItem<Price>>(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e.name ?? '',
                            ),
                          ),
                        )
                        .toList(),
                    value: price,
                    onChanged: (value) {
                      context.read<PriceCubit>().getPrice(value!);
                      defaultSellingPriceGroupId = value.id;
                    },
                  );
                },
              ),
              SearchWidget(
                prefixIcon: const Icon(
                  Icons.search_outlined,
                ),
                hintText: 'Search for products',
                onTap: () {
                  setState(() {
                    isSearch = true;
                  });
                },
                onSubmitted: (p0) {
                  setState(() {
                    isSearch = false;
                  });
                },
                controller: searchTxt,
              ),
              isSearch
                  ? BlocBuilder<ProductsCubit, ProductsState>(
                      builder: (context, state) {
                        final products = state.data?.products;
                        final pVariations = state.data?.productVariations;
                        final variations = state.data?.variations;
                        return Container(
                          color: Colors.white,
                          padding: const EdgeInsets.fromLTRB(
                            Dimensions.PADDING_SIZE_DEFAULT,
                            Dimensions.PADDING_SIZE_SMALL,
                            Dimensions.PADDING_SIZE_DEFAULT,
                            Dimensions.PADDING_SIZE_DEFAULT,
                          ),
                          child: Column(
                            children: [
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: products!.length,
                                itemBuilder: (context, index) {
                                  final variationId =
                                      variations![index].id.toString();
                                  final productName =
                                      products[index].name ?? '';
                                  String? variationName;
                                  if (pVariations![index]?.isDummy == 1) {
                                    variationName = ' ';
                                  } else {
                                    variationName =
                                        ' - ${variations[index].name ?? ''} - ';
                                  }
                                  final sku = variations[index].subSku;
                                  return ListTile(
                                    subtitle: Text(
                                      '$productName$variationName($sku)',
                                    ),
                                    onTap: () {
                                      if (featuredProducts
                                          .contains(variationId)) {
                                        UIHelpers.showSnackBar(
                                          message:
                                              'Product is already featured',
                                          type: SnackBarType.ERROR,
                                        );
                                      } else {
                                        featuredProducts.add(variationId);
                                        searchTxt.clear();
                                        setState(() {
                                          isSearch = false;
                                        });
                                      }
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  : const SizedBox(),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 0,
                ),
                title: Text(
                  'pos_screen_featured_products'.tr,
                  style: GlobalStyles.titilliumBold(context),
                  textScaleFactor: 1.3,
                ),
                subtitle: Container(
                  padding: const EdgeInsets.all(
                    8,
                  ),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: featuredProducts.length,
                          itemBuilder: (context, index) {
                            final variantId = featuredProducts[index];
                            return FeaturedProduct.provider(
                              variantId: int.parse(variantId),
                              isEditing: true,
                              onTap: () {
                                setState(() {
                                  featuredProducts.remove(variantId);
                                });
                              },
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 10,
                color: Colors.black,
              ),
              const SizedBox(
                height: 5,
              ),
              for (int i = 0; i < defaultPaymentAccounts.entries.length; i++)
                BlocBuilder<PaymentAccountCubit, PaymentAccountState>(
                  builder: (context, state) {
                    final entry = defaultPaymentAccounts.entries.elementAt(i);
                    final businessPaymentsAccount =
                        state.data?.businessPaymentAccountsList;
                    final account = businessPaymentsAccount!.isNotEmpty
                        ? businessPaymentsAccount[i]
                        : null;
                    final paymentAccounts = state.data!.paymentAccounts;
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            entry.value['label'],
                          ),
                          Checkbox(
                            value:
                                entry.value['is_enabled'] == '1' ? true : false,
                            onChanged: (value) {
                              if (value!) {
                                entry.value['is_enabled'] = '1';
                              } else {
                                entry.value['is_enabled'] = null;
                              }
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      subtitle: CustomDropDownWithT<PaymentAccount?>(
                        labelText: 'default_account'.tr,
                        items: paymentAccounts
                            .map<DropdownMenuItem<PaymentAccount>>(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.name ?? ''),
                              ),
                            )
                            .toList(),
                        value: account,
                        onChanged: (value) {
                          final list = [...businessPaymentsAccount];
                          list[i] = value;
                          context
                              .read<PaymentAccountCubit>()
                              .getBusinessPaymentAccountsList(list);
                          final accountValue =
                              (value!.id == null ? null : value.id.toString());
                          entry.value['account'] = accountValue;
                        },
                      ),
                    );
                  },
                ),
              ElevatedButton(
                onPressed: () async {
                  await context.read<BusinessCubit>().createBusinessLocation(
                        nameTxt.text,
                        locationIdTxt.text,
                        landmarkTxt.text,
                        zipCodeTxt.text,
                        stateTxt.text,
                        countryTxt.text,
                        mobileTxt.text,
                        alternateMobileTxt.text,
                        emailTxt.text,
                        websiteTxt.text,
                        featuredProducts,
                        invoiceSchemeId,
                        posInvoiceLayoutId,
                        saleInvoiceLayoutId,
                        defaultSellingPriceGroupId,
                        customField1.text,
                        customField2.text,
                        customField3.text,
                        customField4.text,
                        DefaultPaymentAccounts.fromJson(defaultPaymentAccounts),
                        provinceId,
                        districtId,
                        wardId,
                      );
                },
                child: Text(
                  'save'.tr,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
