import 'dart:async';
import 'dart:convert';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/business_location/request/update_business_location_request.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/business_location/response/business_settings_response.dart';
import 'package:di4l_pos/models/invoice/response/invoice_layout_response.dart';
import 'package:di4l_pos/models/invoice/response/invoice_schemas_response.dart';
import 'package:di4l_pos/models/location/response/locations_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';
import 'package:di4l_pos/models/price/response/price_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_textfield.dart';
import 'package:di4l_pos/screens/location_screen/cubit/invoice_cubit.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/add_business_location_screen/widget/district_picker.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/add_business_location_screen/widget/province_picker.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/add_business_location_screen/widget/ward_picker.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/business_location_settings/cubit/payment_account_cubit.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/location_details_screen/cubit/invoice_layout_cubit.dart';
import 'package:di4l_pos/screens/location_screen/widget/featured_product.dart';
import 'package:di4l_pos/screens/price_screen/cubit/price_cubit.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:get/get.dart';

import '../../../business_screen/cubit/business_cubit.dart';

class LocationDetailsWidget extends StatefulWidget {
  const LocationDetailsWidget({
    Key? key,
    this.businessLocation,
    this.defaultPaymentAccount,
  }) : super(key: key);
  final BusinessLocation? businessLocation;
  final SettingsDefaultPaymentAccounts? defaultPaymentAccount;

  static MultiBlocProvider provider({
    BusinessLocation? businessLocation,
    SettingsDefaultPaymentAccounts? defaultPaymentAccount,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BusinessCubit(),
        ),
        BlocProvider(
          create: (context) => PriceCubit(),
        ),
        BlocProvider(
          create: (context) => InvoiceCubit(),
        ),
        BlocProvider(
          create: (context) => InvoiceLayoutCubit(),
        ),
        BlocProvider(
          create: (context) => ProductsCubit(),
        ),
        BlocProvider(
          create: (context) => PaymentAccountCubit(),
        ),
      ],
      child: LocationDetailsWidget(
        businessLocation: businessLocation,
        defaultPaymentAccount: defaultPaymentAccount,
      ),
    );
  }

  @override
  State<LocationDetailsWidget> createState() => _LocationDetailsWidgetState();
}

class _LocationDetailsWidgetState extends State<LocationDetailsWidget>
    with AfterLayoutMixin {
  bool isEditing = false;
  bool isSearch = false;
  //Text fields
  final txtNameController = TextEditingController();
  final txtLocationController = TextEditingController();
  final txtLandmarkController = TextEditingController();
  final txtZipCodeController = TextEditingController();
  final txtStateController = TextEditingController();
  final txtCountryController = TextEditingController();
  final txtMobileController = TextEditingController();
  final txtAlternativeMobileController = TextEditingController();
  final txtEmailController = TextEditingController();
  final txtWebsiteController = TextEditingController();
  //Invoice scheme
  int? invoiceScheme;
  int? invoiceLayout;
  int? saleInvoiceLayout;
  int? priceGroup;
  //Custom fields
  final txtCustomField1 = TextEditingController();
  final txtCustomField2 = TextEditingController();
  final txtCustomField3 = TextEditingController();
  final txtCustomField4 = TextEditingController();
  // Search TextController
  final searchTxt = TextEditingController();
  List<String?> idList = [];
  Map<String, dynamic>? defaultPaymentAccounts;
  // Payment Method Label
  Map<String, dynamic> label = {
    'delivery': 'delivery'.tr,
    'cash': 'cash'.tr,
    'card': 'card'.tr,
    'cheque': 'cheque'.tr,
    'bank_transfer': 'bank_transfer'.tr,
    'other': 'other'.tr,
    'cash_on_delivery': 'cash_on_delivery'.tr,
    'custom_pay_1': 'custom_payment_1_label'.tr,
    'custom_pay_2': 'custom_payment_2_label'.tr,
    'custom_pay_3': 'custom_payment_3_label'.tr,
    'custom_pay_4': 'custom_payment_4_label'.tr,
    'custom_pay_5': 'custom_payment_5_label'.tr,
    'custom_pay_6': 'custom_payment_6_label'.tr,
    'custom_pay_7': 'custom_payment_7_label'.tr,
  };

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context
        .read<BusinessCubit>()
        .getBusinessLocationById(widget.businessLocation!.id!);
    context
        .read<PriceCubit>()
        .getPriceGroupById(widget.businessLocation!.sellingPriceGroupId);
    context
        .read<InvoiceCubit>()
        .getInvoiceById(widget.businessLocation!.invoiceSchemeId);
    context.read<InvoiceLayoutCubit>()
      ..getPosLayout(widget.businessLocation!.invoiceLayoutId)
      ..getSaleLayout(widget.businessLocation!.saleInvoiceLayoutId);
    context.read<ProductsCubit>().getProducts();
    defaultPaymentAccounts = widget.defaultPaymentAccount?.toJson();
    for (var item in defaultPaymentAccounts!.entries) {
      idList.add(item.value['account']);
    }
    context.read<PaymentAccountCubit>().getPaymentsAccountByList(idList);
    searchTxt.addListener(() {
      context
          .read<ProductsCubit>()
          .searchProductsByVariation(text: searchTxt.text);
    });
  }

  // Province, district and ward
  String? province;
  String? district;
  String? ward;

  @override
  void dispose() {
    super.dispose();
    txtNameController.dispose();
    txtLocationController.dispose();
    txtLandmarkController.dispose();
    txtZipCodeController.dispose();
    txtStateController.dispose();
    txtCountryController.dispose();
    txtMobileController.dispose();
    txtAlternativeMobileController.dispose();
    txtEmailController.dispose();
    txtWebsiteController.dispose();
    txtCustomField1.dispose();
    txtCustomField2.dispose();
    txtCustomField3.dispose();
    txtCustomField4.dispose();
    searchTxt.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BusinessCubit, BusinessState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          UIHelpers.showDialogDefaultBloc(
            status: state.data!.status,
            text: state.data!.error,
          );
        }
      },
      builder: (context, state) {
        final businessLocation = state.data?.business;
        province = businessLocation?.province?.name ?? 'None';
        district = businessLocation?.district?.name ?? 'None';
        ward = businessLocation?.ward?.name ?? 'None';
        txtNameController.text = businessLocation?.name ?? '';
        txtNameController.selection =
            TextSelection.collapsed(offset: txtNameController.text.length);
        txtLocationController.text = businessLocation?.locationId ?? '';
        txtLocationController.selection =
            TextSelection.collapsed(offset: txtLocationController.text.length);
        txtLandmarkController.text = businessLocation?.landmark ?? '';
        txtLandmarkController.selection =
            TextSelection.collapsed(offset: txtLandmarkController.text.length);
        txtZipCodeController.text = businessLocation?.zipCode ?? '';
        txtZipCodeController.selection =
            TextSelection.collapsed(offset: txtZipCodeController.text.length);
        txtStateController.text = businessLocation?.state ?? '';
        txtStateController.selection =
            TextSelection.collapsed(offset: txtStateController.text.length);
        txtCountryController.text = businessLocation?.country ?? '';
        txtCountryController.selection =
            TextSelection.collapsed(offset: txtCountryController.text.length);
        txtMobileController.text = businessLocation?.mobile ?? '';
        txtMobileController.selection =
            TextSelection.collapsed(offset: txtMobileController.text.length);
        txtAlternativeMobileController.text =
            businessLocation?.alternateNumber ?? '';
        txtAlternativeMobileController.selection = TextSelection.collapsed(
            offset: txtAlternativeMobileController.text.length);
        txtEmailController.text = businessLocation?.email ?? '';
        txtEmailController.selection =
            TextSelection.collapsed(offset: txtEmailController.text.length);
        txtWebsiteController.text = businessLocation?.website ?? '';
        txtWebsiteController.selection =
            TextSelection.collapsed(offset: txtWebsiteController.text.length);
        invoiceScheme = businessLocation?.invoiceSchemeId;
        invoiceLayout = businessLocation?.invoiceLayoutId;
        saleInvoiceLayout = businessLocation?.saleInvoiceLayoutId;
        priceGroup = businessLocation?.sellingPriceGroupId;

        txtCustomField1.text = businessLocation?.customField1 ?? '';
        txtCustomField1.selection =
            TextSelection.collapsed(offset: txtCustomField1.text.length);
        txtCustomField2.text = businessLocation?.customField2 ?? '';
        txtCustomField2.selection =
            TextSelection.collapsed(offset: txtCustomField2.text.length);
        txtCustomField3.text = businessLocation?.customField3 ?? '';
        txtCustomField3.selection =
            TextSelection.collapsed(offset: txtCustomField3.text.length);
        txtCustomField4.text = businessLocation?.customField4 ?? '';
        txtCustomField4.selection =
            TextSelection.collapsed(offset: txtCustomField4.text.length);
        try {
          businessLocation?.featuredProducts =
              jsonDecode(businessLocation.featuredProducts);
        } catch (e) {}
        final List<dynamic> itemList = businessLocation?.featuredProducts ?? [];
        switch (state.data?.status) {
          case StatusType.loading:
            return const AppLoadingWidget(
              widget: null,
              text: 'Loading...',
            );
          case StatusType.loaded:
            return state.data?.business != null
                ? Column(
                    children: [
                      ToggleSwitch(
                        minWidth: 90.0,
                        initialLabelIndex:
                            (businessLocation!.isActive! + 1) % 2,
                        cornerRadius: 20.0,
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        totalSwitches: 2,
                        labels: ['on'.tr, 'off'.tr],
                        activeBgColors: const [
                          [Color.fromRGBO(14, 135, 64, 1)],
                          [Color.fromRGBO(255, 0, 0, 1)]
                        ],
                        onToggle: (index) {
                          if ((businessLocation.isActive! + 1) % 2 != index) {
                            context.read<BusinessCubit>().activeBusiness(
                                  int.parse(
                                    businessLocation.id.toString(),
                                  ),
                                );
                          }
                          businessLocation.isActive = (index! + 1) % 2;
                        },
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isEditing ? 8 : 0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      isEditing = !isEditing;
                                    });
                                  },
                                  child:
                                      Text(isEditing ? 'view'.tr : 'edit'.tr),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    navigator!.pushNamed(
                                      RouteGenerator
                                          .businessLocationSettingsScreen,
                                      arguments: {
                                        'businessLocation': businessLocation,
                                      },
                                    );
                                  },
                                  child: Text('business_location_prefix'.tr),
                                ),
                              ],
                            ),
                            if (isEditing) ...[
                              // Giao diện chỉnh sửa thuộc tính
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'location_name'.tr,
                                ),
                                controller: txtNameController,
                                onChanged: (value) {
                                  // Update the business name
                                  businessLocation.name = value;
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'location_id'.tr,
                                ),
                                controller: txtLocationController,
                                onChanged: (value) {
                                  // Update the business location ID
                                  businessLocation.locationId = value;
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'landmark'.tr,
                                ),
                                controller: txtLandmarkController,
                                onChanged: (value) {
                                  businessLocation.landmark = value;
                                },
                              ),
                              CustomTextField(
                                title: 'province'.tr,
                                hint: 'Choose a province',
                                info: province ?? 'None',
                                isReadOnly: true,
                                headIcon: const Icon(Icons.location_city,
                                    color: Color(0xff434345)),
                                footIcon: const Icon(Icons.arrow_drop_down,
                                    color: Color(0xff434345)),
                                onTap: () async {
                                  DivisionData data =
                                      (await showModalBottomSheet(
                                    context: context,
                                    builder: (context) =>
                                        ProvincePicker.provider(),
                                  ));
                                  businessLocation.provinceId = data.id;
                                  businessLocation.province?.name =
                                      data.fullname;
                                  businessLocation.districtId = null;
                                  businessLocation.district?.name = null;
                                  businessLocation.wardId = null;
                                  businessLocation.ward?.name = null;
                                  setState(() {});
                                },
                              ),
                              CustomTextField(
                                title: 'district'.tr,
                                hint: 'Choose a district',
                                info: district ?? 'None',
                                isReadOnly: true,
                                headIcon: const Icon(
                                    Icons.location_city_rounded,
                                    color: Color(0xff434345)),
                                footIcon: const Icon(Icons.arrow_drop_down,
                                    color: Color(0xff434345)),
                                onTap: () async {
                                  DivisionData data =
                                      (await showModalBottomSheet(
                                    context: context,
                                    builder: (context) =>
                                        DistrictPicker.provider(
                                      parent: businessLocation.provinceId,
                                    ),
                                  ));
                                  businessLocation.districtId = data.id;
                                  businessLocation.district?.name =
                                      data.fullname;
                                  businessLocation.ward?.name = null;
                                  businessLocation.wardId = null;
                                  setState(() {});
                                },
                              ),
                              CustomTextField(
                                title: 'ward'.tr,
                                hint: 'Choose a ward',
                                info: ward ?? 'None',
                                isReadOnly: true,
                                headIcon: const Icon(
                                    Icons.location_city_rounded,
                                    color: Color(0xff434345)),
                                footIcon: const Icon(Icons.arrow_drop_down,
                                    color: Color(0xff434345)),
                                onTap: () async {
                                  DivisionData data =
                                      (await showModalBottomSheet(
                                    context: context,
                                    builder: (context) => WardPicker.provider(
                                      parent: businessLocation.districtId,
                                    ),
                                  ));
                                  businessLocation.wardId = data.id;
                                  businessLocation.ward?.name = data.fullname;
                                  setState(() {});
                                },
                              ),
                              TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Zipcode',
                                ),
                                controller: txtZipCodeController,
                                onChanged: (value) {
                                  businessLocation.zipCode = value;
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'location_state'.tr,
                                ),
                                controller: txtStateController,
                                onChanged: (value) {
                                  businessLocation.state = value;
                                },
                              ),
                              TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Country',
                                ),
                                controller: txtCountryController,
                                onChanged: (value) {
                                  businessLocation.country = value;
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'mobile_number'.tr,
                                ),
                                controller: txtMobileController,
                                onChanged: (value) {
                                  businessLocation.mobile = value;
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'alternative_number'.tr,
                                ),
                                controller: txtAlternativeMobileController,
                                onChanged: (value) {
                                  businessLocation.alternateNumber = value;
                                },
                              ),
                              TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                ),
                                controller: txtEmailController,
                                onChanged: (value) {
                                  businessLocation.email = value;
                                },
                              ),
                              TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Website',
                                ),
                                controller: txtWebsiteController,
                                onChanged: (value) {
                                  businessLocation.website = value;
                                },
                              ),
                              BlocBuilder<InvoiceCubit, InvoiceState>(
                                builder: (context, state) {
                                  final invoiceList = state.data!.invoices;
                                  return CustomDropDownWithT<InvoiceSchema>(
                                    labelText: 'invoice_schemes'.tr,
                                    items: invoiceList
                                        .map<DropdownMenuItem<InvoiceSchema>>(
                                          (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(
                                              e.name ?? '',
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    value: state.data!.invoice,
                                    onChanged: (value) {
                                      context
                                          .read<InvoiceCubit>()
                                          .setInvoice(value!);
                                      businessLocation.invoiceSchemeId =
                                          value.id;
                                    },
                                  );
                                },
                              ),
                              BlocBuilder<InvoiceLayoutCubit,
                                  InvoiceLayoutState>(
                                builder: (context, state) {
                                  final invoiceLayoutList =
                                      state.data!.invoices;
                                  final posLayout = state.data!.posInvoice;
                                  final saleLayout = state.data!.saleInvoice;
                                  return Column(
                                    children: [
                                      CustomDropDownWithT<InvoiceLayout>(
                                        labelText: 'pos_layout'.tr,
                                        items: invoiceLayoutList
                                            .map<
                                                DropdownMenuItem<
                                                    InvoiceLayout>>(
                                              (e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(e.name ?? ''),
                                              ),
                                            )
                                            .toList(),
                                        value: posLayout,
                                        onChanged: (value) {
                                          context
                                              .read<InvoiceLayoutCubit>()
                                              .setPosLayout(value!);
                                          businessLocation.invoiceLayoutId =
                                              value.id;
                                        },
                                      ),
                                      CustomDropDownWithT<InvoiceLayout>(
                                        labelText: 'sale_layout'.tr,
                                        items: invoiceLayoutList
                                            .map<
                                                DropdownMenuItem<
                                                    InvoiceLayout>>(
                                              (e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(e.name ?? ''),
                                              ),
                                            )
                                            .toList(),
                                        value: saleLayout,
                                        onChanged: (value) {
                                          context
                                              .read<InvoiceLayoutCubit>()
                                              .setSaleLayout(value!);
                                          businessLocation.saleInvoiceLayoutId =
                                              value.id;
                                        },
                                      ),
                                    ],
                                  );
                                },
                              ),
                              BlocBuilder<PriceCubit, PriceState>(
                                builder: (context, state) {
                                  final priceList = state.data!.prices;
                                  return CustomDropDownWithT<Price>(
                                    labelText: 'selling_price_group'.tr,
                                    items: priceList
                                        .map<DropdownMenuItem<Price>>(
                                          (e) => DropdownMenuItem<Price>(
                                            value: e,
                                            child: Text(e.name ?? ''),
                                          ),
                                        )
                                        .toList(),
                                    value: state.data!.price,
                                    onChanged: (value) {
                                      context
                                          .read<PriceCubit>()
                                          .getPrice(value!);
                                      businessLocation.sellingPriceGroupId =
                                          value.id;
                                    },
                                  );
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'contact_custom_field_1_label'.tr,
                                ),
                                controller: txtCustomField1,
                                onChanged: (value) {
                                  businessLocation.customField1 = value;
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'contact_custom_field_2_label'.tr,
                                ),
                                controller: txtCustomField2,
                                onChanged: (value) {
                                  businessLocation.customField2 = value;
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'contact_custom_field_3_label'.tr,
                                ),
                                controller: txtCustomField3,
                                onChanged: (value) {
                                  businessLocation.customField3 = value;
                                },
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'contact_custom_field_4_label'.tr,
                                ),
                                controller: txtCustomField4,
                                onChanged: (value) {
                                  businessLocation.customField4 = value;
                                },
                              ),
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
                                  height: 80,
                                  padding: const EdgeInsets.all(
                                    8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: itemList.length,
                                          itemBuilder: (context, index) {
                                            final variantId = itemList[index];
                                            return FeaturedProduct.provider(
                                              variantId: int.parse(variantId),
                                              isEditing: isEditing,
                                              onTap: () {
                                                itemList.remove(variantId);
                                                final business =
                                                    businessLocation.copyWith(
                                                        featuredProducts:
                                                            itemList);
                                                context
                                                    .read<BusinessCubit>()
                                                    .getBusiness(business);
                                              },
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(
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
                              isSearch
                                  ? BlocBuilder<ProductsCubit, ProductsState>(
                                      builder: (context, state) {
                                        final products = state.data?.products;
                                        final pVariations =
                                            state.data?.productVariations;
                                        final variations =
                                            state.data?.variations;
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
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  final variationId =
                                                      variations![index]
                                                          .id
                                                          .toString();
                                                  final productName =
                                                      products![index].name ??
                                                          '';
                                                  String? variationName;
                                                  if (pVariations![index]!
                                                          .isDummy ==
                                                      1) {
                                                    variationName = ' ';
                                                  } else {
                                                    variationName =
                                                        ' - ${variations[index].name ?? ''} - ';
                                                  }
                                                  final sku =
                                                      variations[index].subSku;

                                                  return ListTile(
                                                    onTap: () {
                                                      if (itemList.contains(
                                                          variationId)) {
                                                        UIHelpers.showSnackBar(
                                                          message:
                                                              'Product already featured',
                                                          type: SnackBarType
                                                              .ERROR,
                                                        );
                                                      } else {
                                                        itemList.add(
                                                          variationId,
                                                        );
                                                        final business =
                                                            businessLocation
                                                                .copyWith(
                                                          featuredProducts:
                                                              itemList,
                                                        );
                                                        context
                                                            .read<
                                                                BusinessCubit>()
                                                            .getBusiness(
                                                                business);
                                                        searchTxt.clear();
                                                        setState(() {
                                                          isSearch = false;
                                                        });
                                                      }
                                                    },
                                                    subtitle: Text(
                                                        '$productName$variationName($sku)'),
                                                  );
                                                },
                                                itemCount: products!.length,
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    )
                                  : const SizedBox(),
                              SearchWidget(
                                hintText: "search".tr,
                                onTap: () {
                                  setState(
                                    () {
                                      isSearch = true;
                                    },
                                  );
                                },
                                onSubmitted: (p0) {
                                  setState(
                                    () {
                                      isSearch = false;
                                    },
                                  );
                                },
                                controller: searchTxt,
                              ),
                              for (int i = 0;
                                  i < defaultPaymentAccounts!.entries.length;
                                  i++)
                                BlocBuilder<PaymentAccountCubit,
                                        PaymentAccountState>(
                                    builder: (context, state) {
                                  final entry = defaultPaymentAccounts!.entries
                                      .elementAt(i);
                                  final listPayment =
                                      state.data?.businessPaymentAccountsList;
                                  final account = listPayment!.isNotEmpty
                                      ? listPayment[i]
                                      : null;
                                  final paymentAccounts =
                                      state.data?.paymentAccounts;
                                  return ListTile(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          GlobalFormatter.formatString(
                                            label[entry.key],
                                          ),
                                        ),
                                        Checkbox(
                                          value:
                                              entry.value['is_enabled'] == '1'
                                                  ? true
                                                  : false,
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
                                    subtitle:
                                        CustomDropDownWithT<PaymentAccount?>(
                                      labelText: 'default_account'.tr,
                                      items: paymentAccounts!
                                          .map<
                                              DropdownMenuItem<PaymentAccount>>(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e.name ?? ''),
                                            ),
                                          )
                                          .toList(),
                                      value: account,
                                      onChanged: (value) {
                                        final list = [...listPayment];
                                        list[i] = value;
                                        context
                                            .read<PaymentAccountCubit>()
                                            .getBusinessPaymentAccountsList(
                                                list);
                                        final accountValue = (value!.id == null
                                            ? null
                                            : value.id.toString());
                                        entry.value['account'] = accountValue;
                                      },
                                    ),
                                  );
                                }),
                              // Add more text fields or input widgets for other properties
                              ElevatedButton(
                                onPressed: () async {
                                  await context
                                      .read<BusinessCubit>()
                                      .updateBusinessLocation(
                                        businessLocation.id!,
                                        businessLocation.name,
                                        businessLocation.locationId,
                                        businessLocation.landmark,
                                        businessLocation.city,
                                        businessLocation.zipCode,
                                        businessLocation.state,
                                        businessLocation.country,
                                        businessLocation.mobile,
                                        businessLocation.alternateNumber,
                                        businessLocation.email,
                                        businessLocation.website,
                                        businessLocation.featuredProducts,
                                        businessLocation.invoiceSchemeId,
                                        businessLocation.invoiceLayoutId,
                                        businessLocation.saleInvoiceLayoutId,
                                        businessLocation.sellingPriceGroupId,
                                        businessLocation.customField1,
                                        businessLocation.customField2,
                                        businessLocation.customField3,
                                        businessLocation.customField4,
                                        DefaultPaymentAccounts.fromJson(
                                          defaultPaymentAccounts!,
                                        ),
                                        businessLocation.provinceId,
                                        businessLocation.districtId,
                                        businessLocation.wardId,
                                      );
                                },
                                child: Text('save'.tr),
                              ),
                            ] else ...[
                              ListTile(
                                title: Text("location_name".tr),
                                subtitle: Text(businessLocation.name ?? ''),
                                // Display other business properties as needed
                              ),
                              ListTile(
                                title: Text("location_id".tr),
                                subtitle:
                                    Text(businessLocation.locationId ?? ''),
                              ),
                              ListTile(
                                title: Text("landmark".tr),
                                subtitle: Text(businessLocation.landmark ?? ''),
                              ),
                              ListTile(
                                title: Text('province'.tr),
                                subtitle: Text(
                                  businessLocation.province?.name ?? '',
                                ),
                              ),
                              ListTile(
                                title: Text('district'.tr),
                                subtitle: Text(
                                  businessLocation.district?.name ?? '',
                                ),
                              ),
                              ListTile(
                                title: Text('ward'.tr),
                                subtitle: Text(
                                  businessLocation.ward?.name ?? '',
                                ),
                              ),
                              ListTile(
                                title: const Text("Zip Code"),
                                subtitle: Text(businessLocation.zipCode ?? ''),
                                // Display other business properties as needed
                              ),
                              ListTile(
                                title: Text("location_state".tr),
                                subtitle: Text(businessLocation.state ?? ''),
                                // Display other business properties as needed
                              ),
                              ListTile(
                                title: Text("country".tr),
                                subtitle: Text(businessLocation.country ?? ''),
                                // Display other business properties as needed
                              ),
                              ListTile(
                                title: Text("mobile_number".tr),
                                subtitle: Text(businessLocation.mobile ?? ''),
                              ),
                              ListTile(
                                title: Text("alternative_number".tr),
                                subtitle: Text(
                                    businessLocation.alternateNumber ?? ''),
                              ),
                              ListTile(
                                title: Text("email".tr),
                                subtitle: Text(businessLocation.email ?? ''),
                              ),
                              ListTile(
                                title: const Text("Website"),
                                subtitle: Text(businessLocation.website ?? ''),
                              ),
                              BlocBuilder<InvoiceCubit, InvoiceState>(
                                builder: (context, state) {
                                  final invoiceName =
                                      state.data?.invoice?.name ?? '';
                                  return ListTile(
                                    title: Text("invoice_schemes".tr),
                                    subtitle: Text(invoiceName),
                                  );
                                },
                              ),
                              BlocBuilder<InvoiceLayoutCubit,
                                  InvoiceLayoutState>(
                                builder: (context, state) {
                                  final posLayoutName =
                                      state.data?.posInvoice?.name ?? '';
                                  final saleLayoutName =
                                      state.data?.saleInvoice?.name ?? '';
                                  return Column(
                                    children: [
                                      ListTile(
                                        title: Text('pos_layout'.tr),
                                        subtitle: Text(
                                          posLayoutName,
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('sale_layout'.tr),
                                        subtitle: Text(
                                          saleLayoutName,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                              BlocBuilder<PriceCubit, PriceState>(
                                builder: (context, state) {
                                  final priceGroupName =
                                      state.data?.price?.name ?? '';
                                  return ListTile(
                                    title: Text('selling_price_group'.tr),
                                    subtitle: Text(
                                      priceGroupName,
                                    ),
                                  );
                                },
                              ),
                              ListTile(
                                title: Text('contact_custom_field_1_label'.tr),
                                subtitle:
                                    Text(businessLocation.customField1 ?? ''),
                              ),
                              ListTile(
                                title: Text('contact_custom_field_2_label'.tr),
                                subtitle:
                                    Text(businessLocation.customField2 ?? ''),
                              ),
                              ListTile(
                                title: Text('contact_custom_field_3_label'.tr),
                                subtitle:
                                    Text(businessLocation.customField3 ?? ''),
                              ),
                              ListTile(
                                title: Text('contact_custom_field_4_label'.tr),
                                subtitle:
                                    Text(businessLocation.customField4 ?? ''),
                              ),
                              const Divider(
                                height: 10,
                                color: Colors.black,
                              ),
                              ListTile(
                                title: Text(
                                  'pos_screen_featured_products'.tr,
                                  style: GlobalStyles.titilliumBold(context),
                                  textScaleFactor: 1.3,
                                ),
                                subtitle: Container(
                                  height: 80,
                                  padding: const EdgeInsets.all(
                                    8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: itemList.length,
                                          itemBuilder: (context, index) {
                                            final variantId = itemList[index];
                                            return FeaturedProduct.provider(
                                              variantId: int.parse(variantId),
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(
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
                              Text(
                                'payment_method'.tr,
                                style:
                                    GlobalStyles.robotoBold(context).copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              for (int i = 0;
                                  i < businessLocation.payMethods!.length;
                                  i++)
                                BlocBuilder<PaymentAccountCubit,
                                    PaymentAccountState>(
                                  builder: (context, state) {
                                    final name =
                                        businessLocation.payMethods![i].name;
                                    final keyIndex = defaultPaymentAccounts!
                                        .keys
                                        .toList()
                                        .indexWhere(
                                            (element) => element == name);
                                    final businessPaymentList =
                                        state.data?.businessPaymentAccountsList;
                                    final account =
                                        businessPaymentList!.isNotEmpty
                                            ? businessPaymentList[keyIndex]
                                            : null;
                                    return ListTile(
                                      title: Text(
                                        label[businessLocation
                                                .payMethods![i].name] ??
                                            '',
                                      ),
                                      subtitle: Text(
                                          '${'default_account'.tr}: ${account?.name ?? 'None'}'),
                                    );
                                  },
                                ),
                              // Giao diện xem thuộc tính
                              // Chèn các thành phần xem thuộc tính của bạn ở đây
                            ],
                          ],
                        ),
                      ),
                    ],
                  )
                : const SizedBox();
          case StatusType.error:
            return const Error404Widget();
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
