import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/invoice/response/invoice_layout_response.dart';
import 'package:di4l_pos/screens/business_screen/widget/CustomDropMenu.dart';
import 'package:di4l_pos/screens/business_screen/widget/card_list_business_custom_widget.dart';
import 'package:di4l_pos/screens/invoice_screen/widgets/custom_textform_field.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/location_details_screen/cubit/invoice_layout_cubit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_html/flutter_html.dart';

class InvoiceLayoutDetailsScreen extends StatefulWidget {
  const InvoiceLayoutDetailsScreen({Key? key, this.addType, this.invoiceLayout})
      : super(key: key);

  final AddType? addType;
  final InvoiceLayout? invoiceLayout;

  static MultiBlocProvider provider(
      {AddType? addType, InvoiceLayout? invoiceLayout}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InvoiceLayoutCubit(),
        ),
      ],
      child: InvoiceLayoutDetailsScreen(
        addType: addType,
        invoiceLayout: invoiceLayout,
      ),
    );
  }

  @override
  State<InvoiceLayoutDetailsScreen> createState() =>
      _InvoiceLayoutDetailsScreenState();
}

class _InvoiceLayoutDetailsScreenState extends State<InvoiceLayoutDetailsScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.addType == AddType.UPDATE) {
      context.read<InvoiceLayoutCubit>().setLayout(widget.invoiceLayout!);
    } else {
      context.read<InvoiceLayoutCubit>().setLayout(
            InvoiceLayout(
              commonSettings: CommonSettings(),
              moduleInfo: ModuleInfo(
                typesOfService: TypesOfService(),
                tables: Tables(),
                serviceStaff: ServiceStaff(),
              ),
            ),
          );
    }
  }

  List<String> designList = [
    'classic',
    'elegant',
    'detailed',
    'columnize_taxes',
    'slim',
    'slim2',
  ];
  String noImage =
      "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg";

  bool isShowSectionOne = false;
  bool isShowSectionTwo = false;
  bool isShowFieldsForCustomer = false;
  bool isShowFieldToBeShownInLocationAddress = false;
  bool isShowFieldForCommunicationDetails = false;
  bool isShowFieldForTaxDetails = false;
  bool isShowFieldForBuyerAndSeller = false;
  bool isShowProductsDetails = false;
  bool isShowTotalDetails = false;
  bool isShowFooterText = false;
  bool isShowQrCode = false;
  bool isShowTypeOfServiceModules = false;
  bool isShowRestaurantModuleSettings = false;
  bool isShowCreditNoteAndReturnDetails = false;

  // Section 1
  final layoutNameTxt = TextEditingController();
  final tax1Name = TextEditingController();
  final tax2Name = TextEditingController();
  final tax3Name = TextEditingController();
  final tax4Name = TextEditingController();
  final headerTextTxt = TextEditingController();
  final subHeadingLine1 = TextEditingController();
  final subHeadingLine2 = TextEditingController();
  final subHeadingLine3 = TextEditingController();
  final subHeadingLine4 = TextEditingController();
  final subHeadingLine5 = TextEditingController();
  String? design;
  String? logo;
  int? showLogo;

  // Section 2
  final invoiceHeadingTxt = TextEditingController();
  final headingSuffixForNotPaidTxt = TextEditingController();
  final headingSuffixForPaidTxt = TextEditingController();
  final profomaInvoiceHeadingTxt = TextEditingController();
  final quotationHeadingTxt = TextEditingController();
  final saleOrderHeadingTxt = TextEditingController();
  final invoiceNumberLabelTxt = TextEditingController();
  final quotationNumberLabelTxt = TextEditingController();
  final dateLabelTxt = TextEditingController();
  final dueDateLabelTxt = TextEditingController();
  final dateTimeFormatTxt = TextEditingController();
  final salePersonLabelTxt = TextEditingController();
  final commissionAgentLabelTxt = TextEditingController();
  int? showDueDate;
  int? showBusinessName;
  int? showLocationName;
  int? showSalesPerson;
  int? showCommissionAgent;

  // Fields for customer details
  final customerLabelTxt = TextEditingController();
  final clientIdLabel = TextEditingController();
  final clientTaxNumberLabelTxt = TextEditingController();
  int? showCustomerInfo;
  int? showClientId;
  int? showRewardPoint;
  int? customField1;
  int? customField2;
  int? customField3;
  int? customField4;

  // Fields shown in location address
  int? showLandmark;
  int? showCity;
  int? showState;
  int? showCountry;
  int? showZipCode;
  int? locationCustomField1;
  int? locationCustomField2;
  int? locationCustomField3;
  int? locationCustomField4;

  // Fields for communication details
  int? showMobileNumber;
  int? showAlternativeNumber;
  int? showEmail;

  // Fields for tax details
  int? showTax1;
  int? showTax2;

  // Fields for seller and buyer
  final sellerOneTxt = TextEditingController();
  final sellerTwoTxt = TextEditingController();
  final buyerOneTxt = TextEditingController();
  final buyerTwoTxt = TextEditingController();

  // Products Details
  final productLabelTxt = TextEditingController();
  final quantityLabelTxt = TextEditingController();
  final unitPriceLabelTxt = TextEditingController();
  final tableSubtotalLabelTxt = TextEditingController();
  final categoryOrHsnLabelTxt = TextEditingController();
  final totalQuantityLabelTxt = TextEditingController();
  final itemDiscountLabelTxt = TextEditingController();
  final discountedUnitPriceTxt = TextEditingController();
  int? showBrand;
  int? showSku;
  int? showCategoryOrHsn;
  int? showSalesDescription;
  int? productCustomField1;
  int? productCustomField2;
  int? productCustomField3;
  int? productCustomField4;
  int? showProductImage;
  int? showWarrantyName;
  int? showWarrantyExpire;
  int? showWarrantyDescription;
  int? showBaseUnitDetails;

  // Total details
  final subTotalLabelTxt = TextEditingController();
  final discountLabelTxt = TextEditingController();
  final taxLabelTxt = TextEditingController();
  final totalLabelTxt = TextEditingController();
  final roundOffLabelTxt = TextEditingController();
  final currentTotalDueLabelTxt = TextEditingController();
  final amountPaidLabelTxt = TextEditingController();
  final allTotalDueLabelTxt = TextEditingController();
  final changeReturnLabelTxt = TextEditingController();
  final taxSummaryLabelTxt = TextEditingController();
  int? showTotalInWord;
  int? showTotalBalanceDue;
  int? showPaymentInfo;
  int? showBarcode;
  String? wordFormat;
  List<String> wordFormatList = [
    'international',
    'indian',
  ];

  // Footer text
  final footerText = TextEditingController();

  // QR Code
  int? showQrCode;
  int? showLabels;
  int? zatcaQrCode;
  int? qrShowBusinessName;
  int? qrShowAddress;
  int? qrShowTax1;
  int? qrShowTax2;
  int? qrShowInvoiceNum;
  int? qrShowInvoiceDate;
  int? qrShowSubtotal;
  int? qrTotalWithTax;
  int? qrTotalTax;
  int? qrShowCustomName;
  int? qrShowInvoiceUrl;

  // Type of service modules settings
  final typeOfServiceLabelTxt = TextEditingController();
  int? showTypeOfService;
  int? showTypeOfServiceCustomFields;

  // Restaurant Module Settings
  final tableLabelTxt = TextEditingController();
  final serviceStaffLabelTxt = TextEditingController();
  int? showTable;
  int? showServiceStaff;

  // Credit note and sell return details
  final cnHeadingController = TextEditingController();
  final cnRefNumber = TextEditingController();
  final cnTotalAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      title: Text(
        widget.addType == AddType.UPDATE ? 'update_layout'.tr : 'add_layout'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
          color: Colors.black,
        ),
      ),
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
    );
  }

  SafeArea buildBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'section_one'.tr,
                widget: buildSectionOne(),
                visible: isShowSectionOne,
                onTap: () {
                  setState(() {
                    isShowSectionOne = !isShowSectionOne;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'section_two'.tr,
                widget: buildSectionTwo(),
                visible: isShowSectionTwo,
                onTap: () {
                  setState(() {
                    isShowSectionTwo = !isShowSectionTwo;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'fields_for_customer_details'.tr,
                widget: buildFieldsForCustomerDetails(),
                visible: isShowFieldsForCustomer,
                onTap: () {
                  setState(() {
                    isShowFieldsForCustomer = !isShowFieldsForCustomer;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'fields_shown_in_location_address'.tr,
                widget: buildFieldsToBeShownInLocationAddress(),
                visible: isShowFieldToBeShownInLocationAddress,
                onTap: () {
                  setState(() {
                    isShowFieldToBeShownInLocationAddress =
                        !isShowFieldToBeShownInLocationAddress;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'fields_for_communication'.tr,
                widget: buildFieldsForCommunication(),
                visible: isShowFieldForCommunicationDetails,
                onTap: () {
                  setState(() {
                    isShowFieldForCommunicationDetails =
                        !isShowFieldForCommunicationDetails;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'fields_for_tax_details'.tr,
                widget: buildFieldsForTaxDetails(),
                visible: isShowFieldForTaxDetails,
                onTap: () {
                  setState(() {
                    isShowFieldForTaxDetails = !isShowFieldForTaxDetails;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'fields_for_seller_and_buyers'.tr,
                widget: buildFieldsForSellerAndBuyer(),
                visible: isShowFieldForBuyerAndSeller,
                onTap: () {
                  setState(() {
                    isShowFieldForBuyerAndSeller =
                        !isShowFieldForBuyerAndSeller;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'product_details'.tr,
                widget: buildProductDetails(),
                visible: isShowProductsDetails,
                onTap: () {
                  setState(() {
                    isShowProductsDetails = !isShowProductsDetails;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'total_price_details'.tr,
                widget: buildTotalDetails(),
                visible: isShowTotalDetails,
                onTap: () {
                  setState(() {
                    isShowTotalDetails = !isShowTotalDetails;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'footer_text'.tr,
                widget: buildFooterText(),
                visible: isShowFooterText,
                onTap: () {
                  setState(() {
                    isShowFooterText = !isShowFooterText;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.qrcode,
                title: 'qr_code'.tr,
                widget: buildQrCode(),
                visible: isShowQrCode,
                onTap: () {
                  setState(() {
                    isShowQrCode = !isShowQrCode;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'types_of_service_modules'.tr,
                widget: buildTypeOfServiceModules(),
                visible: isShowTypeOfServiceModules,
                onTap: () {
                  setState(() {
                    isShowTypeOfServiceModules = !isShowTypeOfServiceModules;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'restaurant_modules_settings'.tr,
                widget: buildRestaurantModuleSettings(),
                visible: isShowRestaurantModuleSettings,
                onTap: () {
                  setState(() {
                    isShowRestaurantModuleSettings =
                        !isShowRestaurantModuleSettings;
                  });
                },
              ),
              InfoBusinessWidget(
                iconLeading: CupertinoIcons.news_solid,
                title: 'credit_note_and_sell_return'.tr,
                widget: buildCreditNoteAndSellReturn(),
                visible: isShowCreditNoteAndReturnDetails,
                onTap: () {
                  setState(() {
                    isShowCreditNoteAndReturnDetails =
                        !isShowCreditNoteAndReturnDetails;
                  });
                },
              ),
              buildSaveButton(),
            ],
          ),
        ),
      ),
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState> buildSectionOne() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        layoutNameTxt.text = layout?.name ?? '';
        design = layout?.design == 'columnize-taxes'
            ? 'columnize_taxes'
            : layout?.design;
        logo = layout?.logo;
        showLogo = layout?.showLogo;
        headerTextTxt.text = Html(data: layout?.headerText ?? '').data ?? '';
        subHeadingLine1.text = layout?.subHeadingLine1 ?? '';
        subHeadingLine2.text = layout?.subHeadingLine2 ?? '';
        subHeadingLine3.text = layout?.subHeadingLine3 ?? '';
        subHeadingLine4.text = layout?.subHeadingLine4 ?? '';
        subHeadingLine5.text = layout?.subHeadingLine5 ?? '';
        tax1Name.text = layout?.tableTaxHeadings?[0] ?? '';
        tax2Name.text = layout?.tableTaxHeadings?[1] ?? '';
        tax3Name.text = layout?.tableTaxHeadings?[2] ?? '';
        tax4Name.text = layout?.tableTaxHeadings?[3] ?? '';
        return Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: layoutNameTxt,
                      onChange: (value) {
                        layout?.name = value;
                      },
                      icon: CupertinoIcons.news_solid,
                      label: 'name'.tr,
                      hintText: 'name'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomDropdown(
                      headIcon: const Icon(
                        Icons.design_services,
                        color: Color(0xff434345),
                      ),
                      footIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff434345),
                      ),
                      hint: 'design'.tr,
                      title: 'design'.tr,
                      listItem: designList,
                      info: design,
                      onChanged: (value) {
                        InvoiceLayout newLayout;
                        if (value == 'columnize_taxes') {
                          newLayout =
                              layout!.copyWith(design: 'columnize-taxes');
                        } else {
                          newLayout = layout!.copyWith(design: value);
                        }
                        context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                      },
                    ),
                  ),
                ],
              ),
              if (layout?.design == 'columnize-taxes') ...[
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                CustomTextFormField(
                  controller: tax1Name,
                  hintText: 'Tax 1 Name',
                  label: 'Tax 1 Name',
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                CustomTextFormField(
                  controller: tax2Name,
                  hintText: 'Tax 2 Name',
                  label: 'Tax 2 Name',
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                CustomTextFormField(
                  controller: tax3Name,
                  hintText: 'Tax 3 Name',
                  label: 'Tax 3 Name',
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                CustomTextFormField(
                  controller: tax4Name,
                  hintText: 'Tax 4 Name',
                  label: 'Tax 4 Name',
                ),
              ],
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      headIcon: const Icon(
                        Icons.image,
                        color: Color(0xff434345),
                      ),
                      footIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff434345),
                      ),
                      title: 'uploadLogo'.tr,
                      hint: '',
                      info: logo,
                      isReadOnly: true,
                      onTap: () async {
                        await BlocProvider.of<InvoiceLayoutCubit>(context)
                            .getLogo(
                          ImageSource.gallery,
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: state.data?.image != null
                    ? Image.file(
                        state.data!.image!,
                      )
                    : Image.network(
                        logo ?? noImage,
                      ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      title: Text(
                        'show_invoice_logo'.tr,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff49545C),
                          fontSize: 16,
                        ),
                      ),
                      value: showLogo == 1 ? true : false,
                      onChanged: (value) {
                        int? checkValue = value == true ? 1 : 0;
                        final newLayout = layout!.copyWith(
                          showLogo: checkValue,
                        );
                        context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: headerTextTxt,
                      hintText: 'header_text'.tr,
                      label: 'header_text'.tr,
                      icon: Icons.abc,
                      onChange: (value) {
                        layout?.headerText = value;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: subHeadingLine1,
                      onChange: (value) {
                        layout?.subHeadingLine1 = value;
                      },
                      icon: Icons.abc,
                      label: 'sub_heading_line_1'.tr,
                      hintText: 'sub_heading_line_1'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: subHeadingLine2,
                      onChange: (value) {
                        layout?.subHeadingLine2 = value;
                      },
                      icon: Icons.abc,
                      label: 'sub_heading_line_2'.tr,
                      hintText: 'sub_heading_line_2'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: subHeadingLine3,
                      onChange: (value) {
                        layout?.subHeadingLine3 = value;
                      },
                      icon: Icons.abc,
                      label: 'sub_heading_line_3'.tr,
                      hintText: 'sub_heading_line_3'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: subHeadingLine4,
                      onChange: (value) {
                        layout?.subHeadingLine4 = value;
                      },
                      icon: Icons.abc,
                      label: 'sub_heading_line_4'.tr,
                      hintText: 'sub_heading_line_4'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: subHeadingLine5,
                      onChange: (value) {
                        layout?.subHeadingLine5 = value;
                      },
                      icon: Icons.abc,
                      label: 'sub_heading_line_5'.tr,
                      hintText: 'sub_heading_line_5'.tr,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState> buildSectionTwo() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        invoiceHeadingTxt.text = layout?.invoiceHeading ?? '';
        headingSuffixForNotPaidTxt.text = layout?.invoiceHeadingNotPaid ?? '';
        headingSuffixForPaidTxt.text = layout?.invoiceHeadingPaid ?? '';
        profomaInvoiceHeadingTxt.text =
            layout?.commonSettings?.proformaHeading ?? '';
        quotationHeadingTxt.text = layout?.quotationHeading ?? '';
        saleOrderHeadingTxt.text =
            layout?.commonSettings?.salesOrderHeading ?? '';
        invoiceNumberLabelTxt.text = layout?.invoiceNoPrefix ?? '';
        quotationNumberLabelTxt.text = layout?.quotationNoPrefix ?? '';
        dateLabelTxt.text = layout?.dateLabel ?? '';
        dueDateLabelTxt.text = layout?.commonSettings?.dueDateLabel ?? '';
        dateTimeFormatTxt.text = layout?.dateTimeFormat ?? '';
        salePersonLabelTxt.text = layout?.salesPersonLabel ?? '';
        commissionAgentLabelTxt.text = layout?.commissionAgentLabel ?? '';
        showDueDate = int.parse(layout?.commonSettings?.showDueDate ?? "0");
        showBusinessName = layout?.showBusinessName ?? 0;
        showLocationName = layout?.showLocationName ?? 0;
        showSalesPerson = layout?.showSalesPerson ?? 0;
        showCommissionAgent = layout?.showCommissionAgent ?? 0;
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: invoiceHeadingTxt,
                      onChange: (value) {
                        layout?.invoiceHeading = value;
                      },
                      icon: Icons.abc,
                      label: 'invoice_heading'.tr,
                      hintText: 'invoice_heading'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: headingSuffixForNotPaidTxt,
                      onChange: (value) {
                        layout?.invoiceHeadingNotPaid = value;
                      },
                      icon: Icons.abc,
                      label: 'heading_for_not_paid'.tr,
                      hintText: 'heading_for_not_paid'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: headingSuffixForPaidTxt,
                      onChange: (value) {
                        layout?.invoiceHeadingPaid = value;
                      },
                      icon: Icons.abc,
                      label: 'heading_for_paid'.tr,
                      hintText: 'heading_for_paid'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: profomaInvoiceHeadingTxt,
                      onChange: (value) {
                        layout?.commonSettings?.proformaHeading = value;
                      },
                      icon: Icons.abc,
                      label: 'proforma_heading'.tr,
                      hintText: 'proforma_heading'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: quotationHeadingTxt,
                      onChange: (value) {
                        layout?.quotationHeading = value;
                      },
                      icon: Icons.abc,
                      label: 'quotation_heading'.tr,
                      hintText: 'quotation_heading'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: saleOrderHeadingTxt,
                      onChange: (value) {
                        layout?.commonSettings?.salesOrderHeading = value;
                      },
                      icon: Icons.abc,
                      label: 'sales_order_heading'.tr,
                      hintText: 'sales_order_heading'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: invoiceNumberLabelTxt,
                      onChange: (value) {
                        layout?.invoiceNoPrefix = value;
                      },
                      icon: Icons.abc,
                      label: 'invoice_number_label'.tr,
                      hintText: 'invoice_number_label'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: quotationNumberLabelTxt,
                      onChange: (value) {
                        layout?.quotationNoPrefix = value;
                      },
                      icon: Icons.abc,
                      label: 'quotation_number_prefix'.tr,
                      hintText: 'quotation_number_prefix'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: dateLabelTxt,
                      onChange: (value) {
                        layout?.dateLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'date_label'.tr,
                      hintText: 'date_label'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: dueDateLabelTxt,
                      onChange: (value) {
                        layout?.commonSettings?.dueDateLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'due_date_label'.tr,
                      hintText: 'due_date_label'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: dateTimeFormatTxt,
                      onChange: (value) {
                        layout?.dateTimeFormat = value;
                      },
                      icon: Icons.watch_later,
                      label: 'date_time_format'.tr,
                      hintText: 'date_time_format'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_due_date'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showDueDate == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  final newCommonSettings = layout!.commonSettings != null
                      ? layout.commonSettings!.copyWith(showDueDate: newValue)
                      : CommonSettings(showDueDate: newValue);
                  final newLayout =
                      layout.copyWith(commonSettings: newCommonSettings);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: salePersonLabelTxt,
                      onChange: (value) {
                        layout?.salesPersonLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'sales_person_label'.tr,
                      hintText: 'sales_person_label'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: commissionAgentLabelTxt,
                      onChange: (value) {
                        layout?.commissionAgentLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'commission_agent_label'.tr,
                      hintText: 'commission_agent_label'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_business_name'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showBusinessName == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout =
                      layout!.copyWith(showBusinessName: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_location_name'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showLocationName == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout =
                      layout!.copyWith(showLocationName: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_sales_person'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showSalesPerson == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showSalesPerson: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_commission_agent'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showCommissionAgent == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout =
                      layout!.copyWith(showCommissionAgent: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>
      buildFieldsForCustomerDetails() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        showCustomerInfo = layout?.showCustomer ?? 0;
        customerLabelTxt.text = layout?.customerLabel ?? '';
        showClientId = layout?.showClientId ?? 0;
        clientIdLabel.text = layout?.clientIdLabel ?? '';
        clientTaxNumberLabelTxt.text = layout?.clientTaxLabel ?? '';
        showRewardPoint = layout?.showRewardPoint ?? 0;
        customField1 =
            layout?.contactCustomFields?.contains('custom_field1') == true
                ? 1
                : 0;
        customField2 =
            layout?.contactCustomFields?.contains('custom_field2') == true
                ? 1
                : 0;
        customField3 =
            layout?.contactCustomFields?.contains('custom_field3') == true
                ? 1
                : 0;
        customField4 =
            layout?.contactCustomFields?.contains('custom_field4') == true
                ? 1
                : 0;
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              CheckboxListTile(
                title: Text(
                  'show_customer_info'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showCustomerInfo == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showCustomer: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: customerLabelTxt,
                      onChange: (value) {
                        layout?.customerLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'customer_label'.tr,
                      hintText: 'customer_label'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_client_id'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showClientId == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showClientId: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: clientIdLabel,
                      onChange: (value) {
                        layout?.clientIdLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'client_id_label'.tr,
                      hintText: 'client_id_label'.tr,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: clientTaxNumberLabelTxt,
                      onChange: (value) {
                        layout?.clientTaxLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'Client Tax number label',
                      hintText: 'Client Tax number label',
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_reward_point'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showRewardPoint == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showRewardPoint: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_1'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: customField1 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? contactsCustomField =
                      layout?.contactCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (contactsCustomField == null) {
                      newLayout = layout!
                          .copyWith(contactCustomFields: ['custom_field1']);
                    } else {
                      contactsCustomField.add('custom_field1');
                      newLayout = layout!
                          .copyWith(contactCustomFields: contactsCustomField);
                    }
                  } else {
                    if (contactsCustomField == null) {
                      newLayout = layout!.copyWith(contactCustomFields: null);
                    } else {
                      contactsCustomField.remove('custom_field1');
                      newLayout = layout!
                          .copyWith(contactCustomFields: contactsCustomField);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_2'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: customField2 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? contactsCustomField =
                      layout?.contactCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (contactsCustomField == null) {
                      newLayout = layout!
                          .copyWith(contactCustomFields: ['custom_field2']);
                    } else {
                      contactsCustomField.add('custom_field2');
                      newLayout = layout!
                          .copyWith(contactCustomFields: contactsCustomField);
                    }
                  } else {
                    if (contactsCustomField == null) {
                      newLayout = layout!.copyWith(contactCustomFields: null);
                    } else {
                      contactsCustomField.remove('custom_field2');
                      newLayout = layout!
                          .copyWith(contactCustomFields: contactsCustomField);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_3'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: customField3 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? contactsCustomField =
                      layout?.contactCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (contactsCustomField == null) {
                      newLayout = layout!
                          .copyWith(contactCustomFields: ['custom_field3']);
                    } else {
                      contactsCustomField.add('custom_field3');
                      newLayout = layout!
                          .copyWith(contactCustomFields: contactsCustomField);
                    }
                  } else {
                    if (contactsCustomField == null) {
                      newLayout = layout!.copyWith(contactCustomFields: null);
                    } else {
                      contactsCustomField.remove('custom_field3');
                      newLayout = layout!
                          .copyWith(contactCustomFields: contactsCustomField);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_4'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: customField4 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? contactsCustomField =
                      layout?.contactCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (contactsCustomField == null) {
                      newLayout = layout!
                          .copyWith(contactCustomFields: ['custom_field4']);
                    } else {
                      contactsCustomField.add('custom_field4');
                      newLayout = layout!
                          .copyWith(contactCustomFields: contactsCustomField);
                    }
                  } else {
                    if (contactsCustomField == null) {
                      newLayout = layout!.copyWith(contactCustomFields: null);
                    } else {
                      contactsCustomField.remove('custom_field4');
                      newLayout = layout!
                          .copyWith(contactCustomFields: contactsCustomField);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>
      buildFieldsToBeShownInLocationAddress() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        showLandmark = layout?.showLandmark ?? 0;
        showCity = layout?.showCity ?? 0;
        showState = layout?.showState ?? 0;
        showCountry = layout?.showCountry ?? 0;
        showZipCode = layout?.showZipCode ?? 0;
        locationCustomField1 =
            layout?.locationCustomFields?.contains('custom_field1') == true
                ? 1
                : 0;
        locationCustomField2 =
            layout?.locationCustomFields?.contains('custom_field2') == true
                ? 1
                : 0;
        locationCustomField3 =
            layout?.locationCustomFields?.contains('custom_field3') == true
                ? 1
                : 0;
        locationCustomField4 =
            layout?.locationCustomFields?.contains('custom_field4') == true
                ? 1
                : 0;
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              CheckboxListTile(
                title: Text(
                  'show_landmark'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showLandmark == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showLandmark: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_city'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showCity == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showCity: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_state'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showState == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showState: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_country'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showCountry == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showCountry: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_zipcode'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showZipCode == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showZipCode: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_1'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: locationCustomField1 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? locationCustomFields =
                      layout?.locationCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (locationCustomFields == null) {
                      newLayout = layout!
                          .copyWith(locationCustomFields: ['custom_field1']);
                    } else {
                      locationCustomFields.add('custom_field1');
                      newLayout = layout!
                          .copyWith(locationCustomFields: locationCustomFields);
                    }
                  } else {
                    if (locationCustomFields == null) {
                      newLayout = layout!.copyWith(locationCustomFields: null);
                    } else {
                      locationCustomFields.remove('custom_field1');
                      newLayout = layout!
                          .copyWith(locationCustomFields: locationCustomFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_2'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: locationCustomField2 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? locationCustomFields =
                      layout?.locationCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (locationCustomFields == null) {
                      newLayout = layout!
                          .copyWith(locationCustomFields: ['custom_field2']);
                    } else {
                      locationCustomFields.add('custom_field2');
                      newLayout = layout!
                          .copyWith(locationCustomFields: locationCustomFields);
                    }
                  } else {
                    if (locationCustomFields == null) {
                      newLayout = layout!.copyWith(locationCustomFields: null);
                    } else {
                      locationCustomFields.remove('custom_field2');
                      newLayout = layout!
                          .copyWith(locationCustomFields: locationCustomFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_3'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: locationCustomField3 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? locationCustomFields =
                      layout?.locationCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (locationCustomFields == null) {
                      newLayout = layout!
                          .copyWith(locationCustomFields: ['custom_field3']);
                    } else {
                      locationCustomFields.add('custom_field3');
                      newLayout = layout!
                          .copyWith(locationCustomFields: locationCustomFields);
                    }
                  } else {
                    if (locationCustomFields == null) {
                      newLayout = layout!.copyWith(locationCustomFields: null);
                    } else {
                      locationCustomFields.remove('custom_field3');
                      newLayout = layout!
                          .copyWith(locationCustomFields: locationCustomFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_4'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: locationCustomField4 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? locationCustomFields =
                      layout?.locationCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (locationCustomFields == null) {
                      newLayout = layout!
                          .copyWith(locationCustomFields: ['custom_field4']);
                    } else {
                      locationCustomFields.add('custom_field4');
                      newLayout = layout!
                          .copyWith(locationCustomFields: locationCustomFields);
                    }
                  } else {
                    if (locationCustomFields == null) {
                      newLayout = layout!.copyWith(locationCustomFields: null);
                    } else {
                      locationCustomFields.remove('custom_field4');
                      newLayout = layout!
                          .copyWith(locationCustomFields: locationCustomFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>
      buildFieldsForCommunication() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        showMobileNumber = layout?.showMobileNumber ?? 0;
        showAlternativeNumber = layout?.showAlternateNumber ?? 0;
        showEmail = layout?.showEmail ?? 0;
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              CheckboxListTile(
                title: Text(
                  'mobile_number'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showMobileNumber == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout =
                      layout!.copyWith(showMobileNumber: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'alternative_number'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showAlternativeNumber == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout =
                      layout!.copyWith(showAlternateNumber: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: const Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showEmail == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showEmail: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>
      buildFieldsForTaxDetails() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        showTax1 = layout?.showTax1 ?? 0;
        showTax2 = layout?.showTax2 ?? 0;
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              CheckboxListTile(
                title: Text(
                  'tax_1_details'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showTax1 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showTax1: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'tax_2_details'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showTax2 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showTax2: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>
      buildFieldsForSellerAndBuyer() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        sellerOneTxt.text = layout?.seller1 ?? '';
        sellerTwoTxt.text = layout?.seller2 ?? '';
        buyerOneTxt.text = layout?.buyer1 ?? '';
        buyerTwoTxt.text = layout?.buyer2 ?? '';
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: sellerOneTxt,
                      onChange: (value) {
                        layout?.seller1 = value;
                      },
                      label: '${'seller'.tr} 1',
                      hintText: '${'seller'.tr} 1',
                      icon: Icons.person,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: sellerTwoTxt,
                      onChange: (value) {
                        layout?.seller2 = value;
                      },
                      label: '${'seller'.tr} 2',
                      hintText: '${'seller'.tr} 2',
                      icon: Icons.person,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: buyerOneTxt,
                      onChange: (value) {
                        layout?.buyer1 = value;
                      },
                      label: '${'buyer'.tr} 1',
                      hintText: '${'buyer'.tr} 1',
                      icon: Icons.person,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: buyerTwoTxt,
                      onChange: (value) {
                        layout?.buyer2 = value;
                      },
                      label: '${'buyer'.tr} 2',
                      hintText: '${'buyer'.tr} 2',
                      icon: Icons.person,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState> buildProductDetails() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        productLabelTxt.text = layout?.tableProductLabel ?? '';
        quantityLabelTxt.text = layout?.tableQtyLabel ?? '';
        unitPriceLabelTxt.text = layout?.tableUnitPriceLabel ?? '';
        tableSubtotalLabelTxt.text = layout?.tableSubtotalLabel ?? '';
        categoryOrHsnLabelTxt.text = layout?.catCodeLabel ?? '';
        totalQuantityLabelTxt.text =
            layout?.commonSettings?.totalQuantityLabel ?? '';
        itemDiscountLabelTxt.text =
            layout?.commonSettings?.itemDiscountLabel ?? '';
        discountedUnitPriceTxt.text =
            layout?.commonSettings?.discountedUnitPriceLabel ?? '';
        showBrand = layout?.showBrand ?? 0;
        showSku = layout?.showSku ?? 0;
        showCategoryOrHsn = layout?.showCatCode ?? 0;
        showSalesDescription = layout?.showSaleDescription ?? 0;
        productCustomField1 =
            layout?.productCustomFields?.contains('custom_field1') == true
                ? 1
                : 0;
        productCustomField2 =
            layout?.productCustomFields?.contains('custom_field2') == true
                ? 1
                : 0;
        productCustomField3 =
            layout?.productCustomFields?.contains('custom_field3') == true
                ? 1
                : 0;
        productCustomField4 =
            layout?.productCustomFields?.contains('custom_field4') == true
                ? 1
                : 0;
        showProductImage = layout?.showImage ?? 0;
        showWarrantyName =
            int.parse(layout?.commonSettings?.showWarrantyName ?? "0");
        showWarrantyExpire =
            int.parse(layout?.commonSettings?.showWarrantyExpDate ?? "0");
        showWarrantyDescription =
            int.parse(layout?.commonSettings?.showWarrantyDescription ?? "0");
        showBaseUnitDetails =
            int.parse(layout?.commonSettings?.showBaseUnitDetails ?? "0");
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: productLabelTxt,
                      onChange: (value) {
                        layout?.tableProductLabel = value;
                      },
                      label: 'product_label'.tr,
                      hintText: 'product_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: quantityLabelTxt,
                      onChange: (value) {
                        layout?.tableQtyLabel = value;
                      },
                      label: 'quantity_label'.tr,
                      hintText: 'quantity_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: unitPriceLabelTxt,
                      onChange: (value) {
                        layout?.tableUnitPriceLabel = value;
                      },
                      label: 'unit_price_label'.tr,
                      hintText: 'unit_price_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: tableSubtotalLabelTxt,
                      onChange: (value) {
                        layout?.tableSubtotalLabel = value;
                      },
                      label: 'subtotal_label'.tr,
                      hintText: 'subtotal_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: categoryOrHsnLabelTxt,
                      onChange: (value) {
                        layout?.catCodeLabel = value;
                      },
                      label: 'category_hsn_label'.tr,
                      hintText: 'category_hsn_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: totalQuantityLabelTxt,
                      onChange: (value) {
                        layout?.commonSettings?.totalQuantityLabel = value;
                      },
                      label: 'total_quantity_label'.tr,
                      hintText: 'total_quantity_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: itemDiscountLabelTxt,
                      onChange: (value) {
                        layout?.commonSettings?.itemDiscountLabel = value;
                      },
                      label: 'item_discount_label'.tr,
                      hintText: 'item_discount_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: discountedUnitPriceTxt,
                      onChange: (value) {
                        layout?.commonSettings?.discountedUnitPriceLabel =
                            value;
                      },
                      label: 'discounted_unit_price_label'.tr,
                      hintText: 'discounted_unit_price_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_brand'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showBrand == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showBrand: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_sku'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showSku == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showSku: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_hsn_category_code'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showCategoryOrHsn == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showCatCode: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_sales_description'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showSalesDescription == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout =
                      layout!.copyWith(showSaleDescription: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_1'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: productCustomField1 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? productCustomFields =
                      layout?.productCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (productCustomFields == null) {
                      newLayout = layout!
                          .copyWith(productCustomFields: ['custom_field1']);
                    } else {
                      productCustomFields.add('custom_field1');
                      newLayout = layout!
                          .copyWith(productCustomFields: productCustomFields);
                    }
                  } else {
                    if (productCustomFields == null) {
                      newLayout = layout!.copyWith(productCustomFields: null);
                    } else {
                      productCustomFields.remove('custom_field1');
                      newLayout = layout!
                          .copyWith(productCustomFields: productCustomFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_2'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: productCustomField2 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? productCustomFields =
                      layout?.productCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (productCustomFields == null) {
                      newLayout = layout!
                          .copyWith(productCustomFields: ['custom_field2']);
                    } else {
                      productCustomFields.add('custom_field2');
                      newLayout = layout!
                          .copyWith(productCustomFields: productCustomFields);
                    }
                  } else {
                    if (productCustomFields == null) {
                      newLayout = layout!.copyWith(productCustomFields: null);
                    } else {
                      productCustomFields.remove('custom_field2');
                      newLayout = layout!
                          .copyWith(productCustomFields: productCustomFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_3'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: productCustomField3 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? productCustomFields =
                      layout?.productCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (productCustomFields == null) {
                      newLayout = layout!
                          .copyWith(productCustomFields: ['custom_field3']);
                    } else {
                      productCustomFields.add('custom_field3');
                      newLayout = layout!
                          .copyWith(productCustomFields: productCustomFields);
                    }
                  } else {
                    if (productCustomFields == null) {
                      newLayout = layout!.copyWith(productCustomFields: null);
                    } else {
                      productCustomFields.remove('custom_field3');
                      newLayout = layout!
                          .copyWith(productCustomFields: productCustomFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'custom_field_4'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: productCustomField4 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? productCustomFields =
                      layout?.productCustomFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (productCustomFields == null) {
                      newLayout = layout!
                          .copyWith(productCustomFields: ['custom_field4']);
                    } else {
                      productCustomFields.add('custom_field4');
                      newLayout = layout!
                          .copyWith(productCustomFields: productCustomFields);
                    }
                  } else {
                    if (productCustomFields == null) {
                      newLayout = layout!.copyWith(productCustomFields: null);
                    } else {
                      productCustomFields.remove('custom_field4');
                      newLayout = layout!
                          .copyWith(productCustomFields: productCustomFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_warranty_name'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showWarrantyName == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  final newCommonSettings = layout!.commonSettings != null
                      ? layout.commonSettings!
                          .copyWith(showWarrantyName: newValue)
                      : CommonSettings(showWarrantyName: newValue);
                  final newLayout =
                      layout.copyWith(commonSettings: newCommonSettings);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_warranty_expiry'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showWarrantyExpire == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  final newCommonSettings = layout!.commonSettings != null
                      ? layout.commonSettings!
                          .copyWith(showWarrantyExpDate: newValue)
                      : CommonSettings(showWarrantyExpDate: newValue);
                  final newLayout =
                      layout.copyWith(commonSettings: newCommonSettings);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_warranty_description'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showWarrantyDescription == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  final newCommonSettings = layout!.commonSettings != null
                      ? layout.commonSettings!
                          .copyWith(showWarrantyDescription: newValue)
                      : CommonSettings(showWarrantyDescription: newValue);
                  final newLayout =
                      layout.copyWith(commonSettings: newCommonSettings);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_base_unit'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showBaseUnitDetails == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  final newCommonSettings = layout!.commonSettings != null
                      ? layout.commonSettings!
                          .copyWith(showBaseUnitDetails: newValue)
                      : CommonSettings(showBaseUnitDetails: newValue);
                  final newLayout =
                      layout.copyWith(commonSettings: newCommonSettings);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_product_image'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showProductImage == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showImage: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState> buildTotalDetails() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        subTotalLabelTxt.text = layout?.subTotalLabel ?? '';
        discountLabelTxt.text = layout?.discountLabel ?? '';
        taxLabelTxt.text = layout?.taxLabel ?? '';
        totalLabelTxt.text = layout?.totalLabel ?? '';
        roundOffLabelTxt.text = layout?.roundOffLabel ?? '';
        currentTotalDueLabelTxt.text = layout?.totalDueLabel ?? '';
        amountPaidLabelTxt.text = layout?.paidLabel ?? '';
        allTotalDueLabelTxt.text = layout?.prevBalLabel ?? '';
        changeReturnLabelTxt.text = layout?.changeReturnLabel ?? '';
        taxSummaryLabelTxt.text = layout?.commonSettings?.taxSummaryLabel ?? '';
        showTotalInWord =
            int.parse(layout?.commonSettings?.showTotalInWords ?? "0");
        showTotalBalanceDue = layout?.showPreviousBal ?? 0;
        showPaymentInfo = layout?.showPayments ?? 0;
        showBarcode = layout?.showBarcode ?? 0;
        wordFormat = layout?.commonSettings?.numToWordFormat;
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: subTotalLabelTxt,
                      onChange: (value) {
                        layout?.subTotalLabel = value;
                      },
                      label: 'subtotal_label'.tr,
                      hintText: 'subtotal_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: discountLabelTxt,
                      onChange: (value) {
                        layout?.discountLabel = value;
                      },
                      label: 'discount_label'.tr,
                      hintText: 'discount_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: taxLabelTxt,
                      onChange: (value) {
                        layout?.taxLabel = value;
                      },
                      label: 'tax_label'.tr,
                      hintText: 'tax_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: totalLabelTxt,
                      onChange: (value) {
                        layout?.totalLabel = value;
                      },
                      label: 'total_label'.tr,
                      hintText: 'total_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: roundOffLabelTxt,
                      onChange: (value) {
                        layout?.roundOffLabel = value;
                      },
                      label: 'roundoff_label'.tr,
                      hintText: 'roundoff_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: currentTotalDueLabelTxt,
                      onChange: (value) {
                        layout?.totalDueLabel = value;
                      },
                      label: 'total_due_label_current'.tr,
                      hintText: 'total_due_label_current'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: amountPaidLabelTxt,
                      onChange: (value) {
                        layout?.paidLabel = value;
                      },
                      label: 'amount_paid_label'.tr,
                      hintText: 'amount_paid_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: allTotalDueLabelTxt,
                      onChange: (value) {
                        layout?.prevBalLabel = value;
                      },
                      label: 'total_due_label_all'.tr,
                      hintText: 'total_due_label_all'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: changeReturnLabelTxt,
                      onChange: (value) {
                        layout?.changeReturnLabel = value;
                      },
                      label: 'change_return_label'.tr,
                      hintText: 'change_return_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: taxSummaryLabelTxt,
                      onChange: (value) {
                        layout?.commonSettings?.taxSummaryLabel = value;
                      },
                      label: 'tax_summary_label'.tr,
                      hintText: 'tax_summary_label'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_total_in_words'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showTotalInWord == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  final newCommonSettings = layout!.commonSettings != null
                      ? layout.commonSettings!
                          .copyWith(showTotalInWords: newValue)
                      : CommonSettings(showTotalInWords: newValue);
                  final newLayout =
                      layout.copyWith(commonSettings: newCommonSettings);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_total_bal'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showTotalBalanceDue == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showPreviousBal: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_payment_info'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showPaymentInfo == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showPayments: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_barcode'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showBarcode == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showBarcode: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomDropdown(
                      headIcon: const Icon(
                        Icons.work_history_outlined,
                        color: Color(0xff434345),
                      ),
                      footIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff434345),
                      ),
                      hint: 'word_format'.tr,
                      title: 'word_format'.tr,
                      listItem: wordFormatList,
                      info: wordFormat,
                      onChanged: (value) {
                        final newCommonSettings = layout!.commonSettings != null
                            ? layout.commonSettings!
                                .copyWith(numToWordFormat: value!)
                            : CommonSettings(numToWordFormat: value!);
                        final newLayout =
                            layout.copyWith(commonSettings: newCommonSettings);
                        context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState> buildFooterText() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        footerText.text = layout?.footerText ?? '';
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: footerText,
                      onChange: (value) {
                        layout?.footerText = value;
                      },
                      label: 'footer_text'.tr,
                      hintText: 'footer_text'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState> buildQrCode() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        showQrCode = layout?.showQrCode ?? 0;
        showLabels = int.parse(layout?.commonSettings?.showQrCodeLabel ?? '0');
        zatcaQrCode = int.parse(layout?.commonSettings?.zatcaQr ?? '0');
        qrShowBusinessName =
            layout?.qrCodeFields?.contains('business_name') == true ? 1 : 0;
        qrShowAddress =
            layout?.qrCodeFields?.contains('address') == true ? 1 : 0;
        qrShowTax1 = layout?.qrCodeFields?.contains('tax_1') == true ? 1 : 0;
        qrShowTax2 = layout?.qrCodeFields?.contains('tax_2') == true ? 1 : 0;
        qrShowInvoiceNum =
            layout?.qrCodeFields?.contains('invoice_no') == true ? 1 : 0;
        qrShowInvoiceDate =
            layout?.qrCodeFields?.contains('invoice_datetime') == true ? 1 : 0;
        qrShowSubtotal =
            layout?.qrCodeFields?.contains('subtotal') == true ? 1 : 0;
        qrTotalWithTax =
            layout?.qrCodeFields?.contains('total_amount') == true ? 1 : 0;
        qrTotalTax =
            layout?.qrCodeFields?.contains('total_tax') == true ? 1 : 0;
        qrShowCustomName =
            layout?.qrCodeFields?.contains('customer_name') == true ? 1 : 0;
        qrShowInvoiceUrl =
            layout?.qrCodeFields?.contains('invoice_url') == true ? 1 : 0;

        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              CheckboxListTile(
                title: Text(
                  'show_qr_code'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showQrCode == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  final newLayout = layout!.copyWith(showQrCode: newValue);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_labels'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showLabels == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  final newCommonSettings = layout!.commonSettings != null
                      ? layout.commonSettings!
                          .copyWith(showQrCodeLabel: newValue)
                      : CommonSettings(showQrCodeLabel: newValue);
                  final newLayout =
                      layout.copyWith(commonSettings: newCommonSettings);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'zatca_qr_code'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: zatcaQrCode == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  final newCommonSettings = layout!.commonSettings != null
                      ? layout.commonSettings!.copyWith(zatcaQr: newValue)
                      : CommonSettings(zatcaQr: newValue);
                  final newLayout =
                      layout.copyWith(commonSettings: newCommonSettings);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'business_name'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowBusinessName == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout =
                          layout!.copyWith(qrCodeFields: ['business_name']);
                    } else {
                      qrCodeFields.add('business_name');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('business_name');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'location_address'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowAddress == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: ['address']);
                    } else {
                      qrCodeFields.add('address');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('address');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  '${'business_tax'.tr} 1',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowTax1 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: ['tax_1']);
                    } else {
                      qrCodeFields.add('tax_1');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('tax_1');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  '${'business_tax'.tr} 2',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowTax2 == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: ['tax_2']);
                    } else {
                      qrCodeFields.add('tax_2');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('tax_2');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'invoice_number'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowInvoiceNum == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout =
                          layout!.copyWith(qrCodeFields: ['invoice_no']);
                    } else {
                      qrCodeFields.add('invoice_no');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('invoice_no');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'invoice_datetime'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowInvoiceDate == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout =
                          layout!.copyWith(qrCodeFields: ['invoice_datetime']);
                    } else {
                      qrCodeFields.add('invoice_datetime');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('invoice_datetime');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'subtotal'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowSubtotal == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: ['subtotal']);
                    } else {
                      qrCodeFields.add('subtotal');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('subtotal');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'total_with_tax'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrTotalWithTax == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout =
                          layout!.copyWith(qrCodeFields: ['total_amount']);
                    } else {
                      qrCodeFields.add('total_amount');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('total_amount');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'total_tax'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrTotalTax == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: ['total_tax']);
                    } else {
                      qrCodeFields.add('total_tax');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('total_tax');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'customer_name'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowCustomName == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout =
                          layout!.copyWith(qrCodeFields: ['customer_name']);
                    } else {
                      qrCodeFields.add('customer_name');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('customer_name');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'invoice_url'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: qrShowInvoiceUrl == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? 1 : 0;
                  List<String>? qrCodeFields = layout?.qrCodeFields;
                  InvoiceLayout newLayout;
                  if (newValue == 1) {
                    if (qrCodeFields == null) {
                      newLayout =
                          layout!.copyWith(qrCodeFields: ['invoice_url']);
                    } else {
                      qrCodeFields.add('invoice_url');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  } else {
                    if (qrCodeFields == null) {
                      newLayout = layout!.copyWith(qrCodeFields: null);
                    } else {
                      qrCodeFields.remove('invoice_url');
                      newLayout = layout!.copyWith(qrCodeFields: qrCodeFields);
                    }
                  }
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>
      buildTypeOfServiceModules() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        typeOfServiceLabelTxt.text =
            layout?.moduleInfo?.typesOfService?.typesOfServiceLabel ?? '';
        showTypeOfService = int.parse(
          layout?.moduleInfo?.typesOfService?.showTypeOfService ?? "0",
        );
        showTypeOfServiceCustomFields = int.parse(
          layout?.moduleInfo?.typesOfService?.showTosCustomFields ?? "0",
        );
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: typeOfServiceLabelTxt,
                      onChange: (value) {
                        layout?.moduleInfo?.typesOfService
                            ?.typesOfServiceLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'type_of_service_label'.tr,
                      hintText: 'type_of_service_label'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_type_of_service'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showTypeOfService == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  ModuleInfo? newModuleInfo = layout?.moduleInfo;
                  if (newModuleInfo != null) {
                    if (newModuleInfo.typesOfService == null) {
                      newModuleInfo = newModuleInfo.copyWith(
                        typesOfService: TypesOfService(
                          showTypeOfService: newValue,
                        ),
                      );
                    } else {
                      newModuleInfo.typesOfService =
                          newModuleInfo.typesOfService?.copyWith(
                        showTypeOfService: newValue,
                      );
                    }
                  } else {
                    newModuleInfo = ModuleInfo(
                      typesOfService: TypesOfService(
                        showTypeOfService: newValue,
                      ),
                    );
                  }
                  final newLayout = layout!.copyWith(moduleInfo: newModuleInfo);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_tos_custom_fields'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showTypeOfServiceCustomFields == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  ModuleInfo? newModuleInfo = layout?.moduleInfo;
                  if (newModuleInfo != null) {
                    if (newModuleInfo.typesOfService == null) {
                      newModuleInfo = newModuleInfo.copyWith(
                        typesOfService: TypesOfService(
                          showTosCustomFields: newValue,
                        ),
                      );
                    } else {
                      newModuleInfo.typesOfService =
                          newModuleInfo.typesOfService?.copyWith(
                        showTosCustomFields: newValue,
                      );
                    }
                  } else {
                    newModuleInfo = ModuleInfo(
                      typesOfService: TypesOfService(
                        showTosCustomFields: newValue,
                      ),
                    );
                  }
                  final newLayout = layout!.copyWith(moduleInfo: newModuleInfo);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>
      buildRestaurantModuleSettings() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        tableLabelTxt.text = layout?.moduleInfo?.tables?.tableLabel ?? '';
        serviceStaffLabelTxt.text =
            layout?.moduleInfo?.serviceStaff?.serviceStaffLabel ?? '';
        showTable = int.parse(
          layout?.moduleInfo?.tables?.showTable ?? "0",
        );
        showServiceStaff = int.parse(
          layout?.moduleInfo?.serviceStaff?.showServiceStaff ?? "0",
        );
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: tableLabelTxt,
                      onChange: (value) {
                        layout?.moduleInfo?.tables?.tableLabel = value;
                      },
                      icon: Icons.abc,
                      label: 'table_label'.tr,
                      hintText: 'table_label'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_table_label'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showTable == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  ModuleInfo? newModuleInfo = layout?.moduleInfo;
                  if (newModuleInfo != null) {
                    if (newModuleInfo.tables == null) {
                      newModuleInfo = newModuleInfo.copyWith(
                        tables: Tables(
                          showTable: newValue,
                        ),
                      );
                    } else {
                      newModuleInfo.tables = newModuleInfo.tables?.copyWith(
                        showTable: newValue,
                      );
                    }
                  } else {
                    newModuleInfo = ModuleInfo(
                      tables: Tables(
                        showTable: newValue,
                      ),
                    );
                  }
                  final newLayout = layout!.copyWith(moduleInfo: newModuleInfo);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: serviceStaffLabelTxt,
                      onChange: (value) {
                        layout?.moduleInfo?.serviceStaff?.serviceStaffLabel =
                            value;
                      },
                      icon: Icons.abc,
                      label: 'service_staff_label'.tr,
                      hintText: 'service_staff_label'.tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              CheckboxListTile(
                title: Text(
                  'show_service_staff'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff49545C),
                    fontSize: 16,
                  ),
                ),
                value: showServiceStaff == 1 ? true : false,
                onChanged: (value) {
                  final newValue = value == true ? "1" : "0";
                  ModuleInfo? newModuleInfo = layout?.moduleInfo;
                  if (newModuleInfo != null) {
                    if (newModuleInfo.serviceStaff == null) {
                      newModuleInfo = newModuleInfo.copyWith(
                        serviceStaff: ServiceStaff(
                          showServiceStaff: newValue,
                        ),
                      );
                    } else {
                      newModuleInfo.serviceStaff =
                          newModuleInfo.serviceStaff?.copyWith(
                        showServiceStaff: newValue,
                      );
                    }
                  } else {
                    newModuleInfo = ModuleInfo(
                      serviceStaff: ServiceStaff(
                        showServiceStaff: newValue,
                      ),
                    );
                  }
                  final newLayout = layout!.copyWith(moduleInfo: newModuleInfo);
                  context.read<InvoiceLayoutCubit>().setLayout(newLayout);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>
      buildCreditNoteAndSellReturn() {
    return BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
      builder: (context, state) {
        final layout = state.data?.invoice;
        cnHeadingController.text = layout?.cnHeading ?? '';
        cnRefNumber.text = layout?.cnNoLabel ?? '';
        cnTotalAmount.text = layout?.cnAmountLabel ?? '';
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: cnHeadingController,
                      onChange: (value) {
                        layout?.cnHeading = value;
                      },
                      label: 'heading'.tr,
                      hintText: 'heading'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: cnRefNumber,
                      onChange: (value) {
                        layout?.cnNoLabel = value;
                      },
                      label: 'ref_number'.tr,
                      hintText: 'ref_number'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: cnTotalAmount,
                      onChange: (value) {
                        layout?.cnAmountLabel = value;
                      },
                      label: 'total_amount'.tr,
                      hintText: 'total_amount'.tr,
                      icon: Icons.abc,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  ElevatedButton buildSaveButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(
          48,
        ),
      ),
      onPressed: () {},
      child: Text(
        'save'.tr,
      ),
    );
  }
}
