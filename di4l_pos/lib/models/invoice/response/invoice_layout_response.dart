// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:di4l_pos/models/business_location/response/business_location.dart';

class InvoiceLayout {
  int? id;
  String? name;
  String? headerText;
  String? invoiceNoPrefix;
  String? quotationNoPrefix;
  String? invoiceHeading;
  String? subHeadingLine1;
  String? subHeadingLine2;
  String? subHeadingLine3;
  String? subHeadingLine4;
  String? subHeadingLine5;
  String? invoiceHeadingNotPaid;
  String? invoiceHeadingPaid;
  String? quotationHeading;
  String? subTotalLabel;
  String? discountLabel;
  String? taxLabel;
  String? totalLabel;
  String? roundOffLabel;
  String? totalDueLabel;
  String? paidLabel;
  int? showClientId;
  String? clientIdLabel;
  String? clientTaxLabel;
  String? dateLabel;
  String? dateTimeFormat;
  int? showTime;
  int? showBrand;
  int? showSku;
  int? showCatCode;
  int? showExpiry;
  int? showLot;
  int? showImage;
  int? showSaleDescription;
  String? salesPersonLabel;
  int? showSalesPerson;
  String? tableProductLabel;
  String? tableQtyLabel;
  String? tableUnitPriceLabel;
  String? tableSubtotalLabel;
  String? catCodeLabel;
  String? logo;
  int? showLogo;
  int? showBusinessName;
  int? showLocationName;
  int? showLandmark;
  int? showCity;
  int? showState;
  int? showZipCode;
  int? showCountry;
  int? showMobileNumber;
  int? showAlternateNumber;
  int? showEmail;
  int? showTax1;
  int? showTax2;
  int? showBarcode;
  int? showPayments;
  int? showCustomer;
  String? customerLabel;
  String? commissionAgentLabel;
  int? showCommissionAgent;
  int? showRewardPoint;
  String? highlightColor;
  String? footerText;
  ModuleInfo? moduleInfo;
  CommonSettings? commonSettings;
  int? isDefault;
  int? businessId;
  int? showQrCode;
  List<String>? qrCodeFields;
  String? design;
  String? cnHeading;
  String? cnNoLabel;
  String? cnAmountLabel;
  List<String>? tableTaxHeadings;
  int? showPreviousBal;
  String? prevBalLabel;
  String? changeReturnLabel;
  List<String>? productCustomFields;
  List<String>? contactCustomFields;
  List<String>? locationCustomFields;
  String? seller1;
  String? seller2;
  String? buyer1;
  String? buyer2;
  String? createdAt;
  String? updatedAt;
  List<BusinessLocation>? locations;

  InvoiceLayout(
      {this.id,
      this.name,
      this.headerText,
      this.invoiceNoPrefix,
      this.quotationNoPrefix,
      this.invoiceHeading,
      this.subHeadingLine1,
      this.subHeadingLine2,
      this.subHeadingLine3,
      this.subHeadingLine4,
      this.subHeadingLine5,
      this.invoiceHeadingNotPaid,
      this.invoiceHeadingPaid,
      this.quotationHeading,
      this.subTotalLabel,
      this.discountLabel,
      this.taxLabel,
      this.totalLabel,
      this.roundOffLabel,
      this.totalDueLabel,
      this.paidLabel,
      this.showClientId,
      this.clientIdLabel,
      this.clientTaxLabel,
      this.dateLabel,
      this.dateTimeFormat,
      this.showTime,
      this.showBrand,
      this.showSku,
      this.showCatCode,
      this.showExpiry,
      this.showLot,
      this.showImage,
      this.showSaleDescription,
      this.salesPersonLabel,
      this.showSalesPerson,
      this.tableProductLabel,
      this.tableQtyLabel,
      this.tableUnitPriceLabel,
      this.tableSubtotalLabel,
      this.catCodeLabel,
      this.logo,
      this.showLogo,
      this.showBusinessName,
      this.showLocationName,
      this.showLandmark,
      this.showCity,
      this.showState,
      this.showZipCode,
      this.showCountry,
      this.showMobileNumber,
      this.showAlternateNumber,
      this.showEmail,
      this.showTax1,
      this.showTax2,
      this.showBarcode,
      this.showPayments,
      this.showCustomer,
      this.customerLabel,
      this.commissionAgentLabel,
      this.showCommissionAgent,
      this.showRewardPoint,
      this.highlightColor,
      this.footerText,
      this.moduleInfo,
      this.commonSettings,
      this.isDefault,
      this.businessId,
      this.showQrCode,
      this.qrCodeFields,
      this.design,
      this.cnHeading,
      this.cnNoLabel,
      this.cnAmountLabel,
      this.tableTaxHeadings,
      this.showPreviousBal,
      this.prevBalLabel,
      this.changeReturnLabel,
      this.productCustomFields,
      this.contactCustomFields,
      this.locationCustomFields,
      this.seller1,
      this.seller2,
      this.buyer1,
      this.buyer2,
      this.createdAt,
      this.updatedAt,
      this.locations});

  InvoiceLayout.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    headerText = json['header_text'];
    invoiceNoPrefix = json['invoice_no_prefix'];
    quotationNoPrefix = json['quotation_no_prefix'];
    invoiceHeading = json['invoice_heading'];
    subHeadingLine1 = json['sub_heading_line1'];
    subHeadingLine2 = json['sub_heading_line2'];
    subHeadingLine3 = json['sub_heading_line3'];
    subHeadingLine4 = json['sub_heading_line4'];
    subHeadingLine5 = json['sub_heading_line5'];
    invoiceHeadingNotPaid = json['invoice_heading_not_paid'];
    invoiceHeadingPaid = json['invoice_heading_paid'];
    quotationHeading = json['quotation_heading'];
    subTotalLabel = json['sub_total_label'];
    discountLabel = json['discount_label'];
    taxLabel = json['tax_label'];
    totalLabel = json['total_label'];
    roundOffLabel = json['round_off_label'];
    totalDueLabel = json['total_due_label'];
    paidLabel = json['paid_label'];
    showClientId = json['show_client_id'];
    clientIdLabel = json['client_id_label'];
    clientTaxLabel = json['client_tax_label'];
    dateLabel = json['date_label'];
    dateTimeFormat = json['date_time_format'];
    showTime = json['show_time'];
    showBrand = json['show_brand'];
    showSku = json['show_sku'];
    showCatCode = json['show_cat_code'];
    showExpiry = json['show_expiry'];
    showLot = json['show_lot'];
    showImage = json['show_image'];
    showSaleDescription = json['show_sale_description'];
    salesPersonLabel = json['sales_person_label'];
    showSalesPerson = json['show_sales_person'];
    tableProductLabel = json['table_product_label'];
    tableQtyLabel = json['table_qty_label'];
    tableUnitPriceLabel = json['table_unit_price_label'];
    tableSubtotalLabel = json['table_subtotal_label'];
    catCodeLabel = json['cat_code_label'];
    logo = json['logo'];
    showLogo = json['show_logo'];
    showBusinessName = json['show_business_name'];
    showLocationName = json['show_location_name'];
    showLandmark = json['show_landmark'];
    showCity = json['show_city'];
    showState = json['show_state'];
    showZipCode = json['show_zip_code'];
    showCountry = json['show_country'];
    showMobileNumber = json['show_mobile_number'];
    showAlternateNumber = json['show_alternate_number'];
    showEmail = json['show_email'];
    showTax1 = json['show_tax_1'];
    showTax2 = json['show_tax_2'];
    showBarcode = json['show_barcode'];
    showPayments = json['show_payments'];
    showCustomer = json['show_customer'];
    customerLabel = json['customer_label'];
    commissionAgentLabel = json['commission_agent_label'];
    showCommissionAgent = json['show_commission_agent'];
    showRewardPoint = json['show_reward_point'];
    highlightColor = json['highlight_color'];
    footerText = json['footer_text'];
    moduleInfo = json['module_info'] != null
        ? ModuleInfo.fromJson(json['module_info'])
        : null;
    commonSettings = json['common_settings'] != null
        ? CommonSettings.fromJson(json['common_settings'])
        : null;
    isDefault = json['is_default'];
    businessId = json['business_id'];
    showQrCode = json['show_qr_code'];
    qrCodeFields = json['qr_code_fields'] == null
        ? null
        : (json['qr_code_fields'] as List).map((e) => e as String).toList();
    design = json['design'];
    cnHeading = json['cn_heading'];
    cnNoLabel = json['cn_no_label'];
    cnAmountLabel = json['cn_amount_label'];
    tableTaxHeadings = json['table_tax_headings'] == null
        ? null
        : (jsonDecode(json['table_tax_headings']) as List)
            .map((e) => e as String)
            .toList();
    showPreviousBal = json['show_previous_bal'];
    prevBalLabel = json['prev_bal_label'];
    changeReturnLabel = json['change_return_label'];
    productCustomFields = json['product_custom_fields'] == null
        ? null
        : (json['product_custom_fields'] as List)
            .map((e) => e as String)
            .toList();
    contactCustomFields = json['contact_custom_fields'] == null
        ? null
        : (json['contact_custom_fields'] as List)
            .map((e) => e as String)
            .toList();
    locationCustomFields = json['location_custom_fields'] == null
        ? null
        : (json['location_custom_fields'] as List)
            .map((e) => e as String)
            .toList();
    seller1 = json['seller_1'];
    seller2 = json['seller_2'];
    buyer1 = json['buyer_1'];
    buyer2 = json['buyer_2'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['locations'] != null) {
      locations = <BusinessLocation>[];
      json['locations'].forEach((v) {
        locations!.add(BusinessLocation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['header_text'] = headerText;
    data['invoice_no_prefix'] = invoiceNoPrefix;
    data['quotation_no_prefix'] = quotationNoPrefix;
    data['invoice_heading'] = invoiceHeading;
    data['sub_heading_line1'] = subHeadingLine1;
    data['sub_heading_line2'] = subHeadingLine2;
    data['sub_heading_line3'] = subHeadingLine3;
    data['sub_heading_line4'] = subHeadingLine4;
    data['sub_heading_line5'] = subHeadingLine5;
    data['invoice_heading_not_paid'] = invoiceHeadingNotPaid;
    data['invoice_heading_paid'] = invoiceHeadingPaid;
    data['quotation_heading'] = quotationHeading;
    data['sub_total_label'] = subTotalLabel;
    data['discount_label'] = discountLabel;
    data['tax_label'] = taxLabel;
    data['total_label'] = totalLabel;
    data['round_off_label'] = roundOffLabel;
    data['total_due_label'] = totalDueLabel;
    data['paid_label'] = paidLabel;
    data['show_client_id'] = showClientId;
    data['client_id_label'] = clientIdLabel;
    data['client_tax_label'] = clientTaxLabel;
    data['date_label'] = dateLabel;
    data['date_time_format'] = dateTimeFormat;
    data['show_time'] = showTime;
    data['show_brand'] = showBrand;
    data['show_sku'] = showSku;
    data['show_cat_code'] = showCatCode;
    data['show_expiry'] = showExpiry;
    data['show_lot'] = showLot;
    data['show_image'] = showImage;
    data['show_sale_description'] = showSaleDescription;
    data['sales_person_label'] = salesPersonLabel;
    data['show_sales_person'] = showSalesPerson;
    data['table_product_label'] = tableProductLabel;
    data['table_qty_label'] = tableQtyLabel;
    data['table_unit_price_label'] = tableUnitPriceLabel;
    data['table_subtotal_label'] = tableSubtotalLabel;
    data['cat_code_label'] = catCodeLabel;
    data['logo'] = logo;
    data['show_logo'] = showLogo;
    data['show_business_name'] = showBusinessName;
    data['show_location_name'] = showLocationName;
    data['show_landmark'] = showLandmark;
    data['show_city'] = showCity;
    data['show_state'] = showState;
    data['show_zip_code'] = showZipCode;
    data['show_country'] = showCountry;
    data['show_mobile_number'] = showMobileNumber;
    data['show_alternate_number'] = showAlternateNumber;
    data['show_email'] = showEmail;
    data['show_tax_1'] = showTax1;
    data['show_tax_2'] = showTax2;
    data['show_barcode'] = showBarcode;
    data['show_payments'] = showPayments;
    data['show_customer'] = showCustomer;
    data['customer_label'] = customerLabel;
    data['commission_agent_label'] = commissionAgentLabel;
    data['show_commission_agent'] = showCommissionAgent;
    data['show_reward_point'] = showRewardPoint;
    data['highlight_color'] = highlightColor;
    data['footer_text'] = footerText;
    if (moduleInfo != null) {
      data['module_info'] = moduleInfo!.toJson();
    }
    if (commonSettings != null) {
      data['common_settings'] = commonSettings!.toJson();
    }
    data['is_default'] = isDefault;
    data['business_id'] = businessId;
    data['show_qr_code'] = showQrCode;
    data['qr_code_fields'] = qrCodeFields;
    data['design'] = design;
    data['cn_heading'] = cnHeading;
    data['cn_no_label'] = cnNoLabel;
    data['cn_amount_label'] = cnAmountLabel;
    data['table_tax_headings'] = tableTaxHeadings;
    data['show_previous_bal'] = showPreviousBal;
    data['prev_bal_label'] = prevBalLabel;
    data['change_return_label'] = changeReturnLabel;
    data['product_custom_fields'] = productCustomFields;
    data['contact_custom_fields'] = contactCustomFields;
    data['location_custom_fields'] = locationCustomFields;
    data['seller_1'] = seller1;
    data['seller_2'] = seller2;
    data['buyer_1'] = buyer1;
    data['buyer_2'] = buyer2;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (locations != null) {
      data['locations'] = locations!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  InvoiceLayout copyWith({
    int? id,
    String? name,
    String? headerText,
    String? invoiceNoPrefix,
    String? quotationNoPrefix,
    String? invoiceHeading,
    String? subHeadingLine1,
    String? subHeadingLine2,
    String? subHeadingLine3,
    String? subHeadingLine4,
    String? subHeadingLine5,
    String? invoiceHeadingNotPaid,
    String? invoiceHeadingPaid,
    String? quotationHeading,
    String? subTotalLabel,
    String? discountLabel,
    String? taxLabel,
    String? totalLabel,
    String? roundOffLabel,
    String? totalDueLabel,
    String? paidLabel,
    int? showClientId,
    String? clientIdLabel,
    String? clientTaxLabel,
    String? dateLabel,
    String? dateTimeFormat,
    int? showTime,
    int? showBrand,
    int? showSku,
    int? showCatCode,
    int? showExpiry,
    int? showLot,
    int? showImage,
    int? showSaleDescription,
    String? salesPersonLabel,
    int? showSalesPerson,
    String? tableProductLabel,
    String? tableQtyLabel,
    String? tableUnitPriceLabel,
    String? tableSubtotalLabel,
    String? catCodeLabel,
    String? logo,
    int? showLogo,
    int? showBusinessName,
    int? showLocationName,
    int? showLandmark,
    int? showCity,
    int? showState,
    int? showZipCode,
    int? showCountry,
    int? showMobileNumber,
    int? showAlternateNumber,
    int? showEmail,
    int? showTax1,
    int? showTax2,
    int? showBarcode,
    int? showPayments,
    int? showCustomer,
    String? customerLabel,
    String? commissionAgentLabel,
    int? showCommissionAgent,
    int? showRewardPoint,
    String? highlightColor,
    String? footerText,
    ModuleInfo? moduleInfo,
    CommonSettings? commonSettings,
    int? isDefault,
    int? businessId,
    int? showQrCode,
    List<String>? qrCodeFields,
    String? design,
    String? cnHeading,
    String? cnNoLabel,
    String? cnAmountLabel,
    List<String>? tableTaxHeadings,
    int? showPreviousBal,
    String? prevBalLabel,
    String? changeReturnLabel,
    List<String>? productCustomFields,
    List<String>? contactCustomFields,
    List<String>? locationCustomFields,
    String? seller1,
    String? seller2,
    String? buyer1,
    String? buyer2,
    String? createdAt,
    String? updatedAt,
    List<BusinessLocation>? locations,
  }) {
    return InvoiceLayout(
      id: id ?? this.id,
      name: name ?? this.name,
      headerText: headerText ?? this.headerText,
      invoiceNoPrefix: invoiceNoPrefix ?? this.invoiceNoPrefix,
      quotationNoPrefix: quotationNoPrefix ?? this.quotationNoPrefix,
      invoiceHeading: invoiceHeading ?? this.invoiceHeading,
      subHeadingLine1: subHeadingLine1 ?? this.subHeadingLine1,
      subHeadingLine2: subHeadingLine2 ?? this.subHeadingLine2,
      subHeadingLine3: subHeadingLine3 ?? this.subHeadingLine3,
      subHeadingLine4: subHeadingLine4 ?? this.subHeadingLine4,
      subHeadingLine5: subHeadingLine5 ?? this.subHeadingLine5,
      invoiceHeadingNotPaid:
          invoiceHeadingNotPaid ?? this.invoiceHeadingNotPaid,
      invoiceHeadingPaid: invoiceHeadingPaid ?? this.invoiceHeadingPaid,
      quotationHeading: quotationHeading ?? this.quotationHeading,
      subTotalLabel: subTotalLabel ?? this.subTotalLabel,
      discountLabel: discountLabel ?? this.discountLabel,
      taxLabel: taxLabel ?? this.taxLabel,
      totalLabel: totalLabel ?? this.totalLabel,
      roundOffLabel: roundOffLabel ?? this.roundOffLabel,
      totalDueLabel: totalDueLabel ?? this.totalDueLabel,
      paidLabel: paidLabel ?? this.paidLabel,
      showClientId: showClientId ?? this.showClientId,
      clientIdLabel: clientIdLabel ?? this.clientIdLabel,
      clientTaxLabel: clientTaxLabel ?? this.clientTaxLabel,
      dateLabel: dateLabel ?? this.dateLabel,
      dateTimeFormat: dateTimeFormat ?? this.dateTimeFormat,
      showTime: showTime ?? this.showTime,
      showBrand: showBrand ?? this.showBrand,
      showSku: showSku ?? this.showSku,
      showCatCode: showCatCode ?? this.showCatCode,
      showExpiry: showExpiry ?? this.showExpiry,
      showLot: showLot ?? this.showLot,
      showImage: showImage ?? this.showImage,
      showSaleDescription: showSaleDescription ?? this.showSaleDescription,
      salesPersonLabel: salesPersonLabel ?? this.salesPersonLabel,
      showSalesPerson: showSalesPerson ?? this.showSalesPerson,
      tableProductLabel: tableProductLabel ?? this.tableProductLabel,
      tableQtyLabel: tableQtyLabel ?? this.tableQtyLabel,
      tableUnitPriceLabel: tableUnitPriceLabel ?? this.tableUnitPriceLabel,
      tableSubtotalLabel: tableSubtotalLabel ?? this.tableSubtotalLabel,
      catCodeLabel: catCodeLabel ?? this.catCodeLabel,
      logo: logo ?? this.logo,
      showLogo: showLogo ?? this.showLogo,
      showBusinessName: showBusinessName ?? this.showBusinessName,
      showLocationName: showLocationName ?? this.showLocationName,
      showLandmark: showLandmark ?? this.showLandmark,
      showCity: showCity ?? this.showCity,
      showState: showState ?? this.showState,
      showZipCode: showZipCode ?? this.showZipCode,
      showCountry: showCountry ?? this.showCountry,
      showMobileNumber: showMobileNumber ?? this.showMobileNumber,
      showAlternateNumber: showAlternateNumber ?? this.showAlternateNumber,
      showEmail: showEmail ?? this.showEmail,
      showTax1: showTax1 ?? this.showTax1,
      showTax2: showTax2 ?? this.showTax2,
      showBarcode: showBarcode ?? this.showBarcode,
      showPayments: showPayments ?? this.showPayments,
      showCustomer: showCustomer ?? this.showCustomer,
      customerLabel: customerLabel ?? this.customerLabel,
      commissionAgentLabel: commissionAgentLabel ?? this.commissionAgentLabel,
      showCommissionAgent: showCommissionAgent ?? this.showCommissionAgent,
      showRewardPoint: showRewardPoint ?? this.showRewardPoint,
      highlightColor: highlightColor ?? this.highlightColor,
      footerText: footerText ?? this.footerText,
      moduleInfo: moduleInfo ?? this.moduleInfo,
      commonSettings: commonSettings ?? this.commonSettings,
      isDefault: isDefault ?? this.isDefault,
      businessId: businessId ?? this.businessId,
      showQrCode: showQrCode ?? this.showQrCode,
      qrCodeFields: qrCodeFields ?? this.qrCodeFields,
      design: design ?? this.design,
      cnHeading: cnHeading ?? this.cnHeading,
      cnNoLabel: cnNoLabel ?? this.cnNoLabel,
      cnAmountLabel: cnAmountLabel ?? this.cnAmountLabel,
      tableTaxHeadings: tableTaxHeadings ?? this.tableTaxHeadings,
      showPreviousBal: showPreviousBal ?? this.showPreviousBal,
      prevBalLabel: prevBalLabel ?? this.prevBalLabel,
      changeReturnLabel: changeReturnLabel ?? this.changeReturnLabel,
      productCustomFields: productCustomFields ?? this.productCustomFields,
      contactCustomFields: contactCustomFields ?? this.contactCustomFields,
      locationCustomFields: locationCustomFields ?? this.locationCustomFields,
      seller1: seller1 ?? this.seller1,
      seller2: seller2 ?? this.seller2,
      buyer1: buyer1 ?? this.buyer1,
      buyer2: buyer2 ?? this.buyer2,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      locations: locations ?? this.locations,
    );
  }
}

class CommonSettings {
  String? proformaHeading;
  String? salesOrderHeading;
  String? dueDateLabel;
  String? totalQuantityLabel;
  String? itemDiscountLabel;
  String? discountedUnitPriceLabel;
  String? numToWordFormat;
  String? taxSummaryLabel;
  String? showDueDate;
  String? showWarrantyName;
  String? showWarrantyExpDate;
  String? showWarrantyDescription;
  String? showBaseUnitDetails;
  String? showTotalInWords;
  String? showQrCodeLabel;
  String? zatcaQr;

  CommonSettings({
    this.proformaHeading,
    this.salesOrderHeading,
    this.dueDateLabel,
    this.totalQuantityLabel,
    this.itemDiscountLabel,
    this.discountedUnitPriceLabel,
    this.numToWordFormat,
    this.taxSummaryLabel,
    this.showDueDate,
    this.showWarrantyName,
    this.showWarrantyExpDate,
    this.showWarrantyDescription,
    this.showBaseUnitDetails,
    this.showTotalInWords,
    this.showQrCodeLabel,
    this.zatcaQr,
  });

  CommonSettings.fromJson(Map<String, dynamic> json) {
    proformaHeading = json['proforma_heading'];
    salesOrderHeading = json['sales_order_heading'];
    dueDateLabel = json['due_date_label'];
    totalQuantityLabel = json['total_quantity_label'];
    itemDiscountLabel = json['item_discount_label'];
    discountedUnitPriceLabel = json['discounted_unit_price_label'];
    numToWordFormat = json['num_to_word_format'];
    taxSummaryLabel = json['tax_summary_label'];
    showDueDate = json['show_due_date'];
    showWarrantyName = json['show_warranty_name'];
    showWarrantyExpDate = json['show_warranty_exp_date'];
    showWarrantyDescription = json['show_warranty_description'];
    showBaseUnitDetails = json['show_base_unit_details'];
    showTotalInWords = json['show_total_in_words'];
    showQrCodeLabel = json['show_qr_code_label'];
    zatcaQr = json['zatca_qr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['proforma_heading'] = proformaHeading;
    data['sales_order_heading'] = salesOrderHeading;
    data['due_date_label'] = dueDateLabel;
    data['total_quantity_label'] = totalQuantityLabel;
    data['item_discount_label'] = itemDiscountLabel;
    data['discounted_unit_price_label'] = discountedUnitPriceLabel;
    data['num_to_word_format'] = numToWordFormat;
    data['tax_summary_label'] = taxSummaryLabel;
    data['show_due_date'] = showDueDate;
    data['show_warranty_name'] = showWarrantyName;
    data['show_warranty_exp_date'] = showWarrantyExpDate;
    data['show_warranty_description'] = showWarrantyDescription;
    data['show_base_unit_details'] = showBaseUnitDetails;
    data['show_total_in_words'] = showTotalInWords;
    data['show_qr_code_label'] = showQrCodeLabel;
    data['zatca_qr'] = zatcaQr;
    return data;
  }

  CommonSettings copyWith({
    String? proformaHeading,
    String? salesOrderHeading,
    String? dueDateLabel,
    String? totalQuantityLabel,
    String? itemDiscountLabel,
    String? discountedUnitPriceLabel,
    String? numToWordFormat,
    String? taxSummaryLabel,
    String? showDueDate,
    String? showWarrantyName,
    String? showWarrantyExpDate,
    String? showWarrantyDescription,
    String? showBaseUnitDetails,
    String? showTotalInWords,
    String? showQrCodeLabel,
    String? zatcaQr,
  }) {
    return CommonSettings(
      proformaHeading: proformaHeading ?? this.proformaHeading,
      salesOrderHeading: salesOrderHeading ?? this.salesOrderHeading,
      dueDateLabel: dueDateLabel ?? this.dueDateLabel,
      totalQuantityLabel: totalQuantityLabel ?? this.totalQuantityLabel,
      itemDiscountLabel: itemDiscountLabel ?? this.itemDiscountLabel,
      discountedUnitPriceLabel:
          discountedUnitPriceLabel ?? this.discountedUnitPriceLabel,
      numToWordFormat: numToWordFormat ?? this.numToWordFormat,
      taxSummaryLabel: taxSummaryLabel ?? this.taxSummaryLabel,
      showDueDate: showDueDate ?? this.showDueDate,
      showWarrantyName: showWarrantyName ?? this.showWarrantyName,
      showWarrantyExpDate: showWarrantyExpDate ?? this.showWarrantyExpDate,
      showWarrantyDescription:
          showWarrantyDescription ?? this.showWarrantyDescription,
      showBaseUnitDetails: showBaseUnitDetails ?? this.showBaseUnitDetails,
      showTotalInWords: showTotalInWords ?? this.showTotalInWords,
      showQrCodeLabel: showQrCodeLabel ?? this.showQrCodeLabel,
      zatcaQr: zatcaQr ?? this.zatcaQr,
    );
  }
}

class ModuleInfo {
  TypesOfService? typesOfService;
  Tables? tables;
  ServiceStaff? serviceStaff;

  ModuleInfo({this.typesOfService, this.tables, this.serviceStaff});

  ModuleInfo copyWith({
    TypesOfService? typesOfService,
    Tables? tables,
    ServiceStaff? serviceStaff,
  }) {
    return ModuleInfo(
      typesOfService: typesOfService ?? this.typesOfService,
      tables: tables ?? this.tables,
      serviceStaff: serviceStaff ?? this.serviceStaff,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'types_of_service': typesOfService?.toMap(),
      'tables': tables?.toMap(),
      'service_staff': serviceStaff?.toMap(),
    };
  }

  factory ModuleInfo.fromMap(Map<String, dynamic> map) {
    return ModuleInfo(
      typesOfService: map['types_of_service'] != null
          ? TypesOfService.fromMap(
              map['types_of_service'] as Map<String, dynamic>)
          : null,
      tables: map['tables'] != null
          ? Tables.fromMap(map['tables'] as Map<String, dynamic>)
          : null,
      serviceStaff: map['service_staff'] != null
          ? ServiceStaff.fromMap(map['service_staff'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModuleInfo.fromJson(String source) =>
      ModuleInfo.fromMap(json.decode(source) as Map<String, dynamic>);
}

class TypesOfService {
  String? typesOfServiceLabel;
  String? showTypeOfService;
  String? showTosCustomFields;

  TypesOfService({
    this.typesOfServiceLabel,
    this.showTosCustomFields,
    this.showTypeOfService,
  });

  TypesOfService copyWith({
    String? typesOfServiceLabel,
    String? showTypeOfService,
    String? showTosCustomFields,
  }) {
    return TypesOfService(
      typesOfServiceLabel: typesOfServiceLabel ?? this.typesOfServiceLabel,
      showTypeOfService: showTypeOfService ?? this.showTypeOfService,
      showTosCustomFields: showTosCustomFields ?? this.showTosCustomFields,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'types_of_service_label': typesOfServiceLabel,
      'show_types_of_service': showTypeOfService,
      'show_tos_custom_fields': showTosCustomFields,
    };
  }

  factory TypesOfService.fromMap(Map<String, dynamic> map) {
    return TypesOfService(
      typesOfServiceLabel: map['types_of_service_label'] != null
          ? map['types_of_service_label'] as String
          : null,
      showTypeOfService: map['show_types_of_service'] != null
          ? map['show_types_of_service'] as String
          : null,
      showTosCustomFields: map['show_tos_custom_fields'] != null
          ? map['show_tos_custom_fields'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TypesOfService.fromJson(String source) =>
      TypesOfService.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Tables {
  String? tableLabel;
  String? showTable;

  Tables({this.tableLabel, this.showTable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'table_label': tableLabel,
      'show_table': showTable,
    };
  }

  factory Tables.fromMap(Map<String, dynamic> map) {
    return Tables(
      tableLabel:
          map['table_label'] != null ? map['table_label'] as String : null,
      showTable: map['show_table'] != null ? map['show_table'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Tables.fromJson(String source) =>
      Tables.fromMap(json.decode(source) as Map<String, dynamic>);

  Tables copyWith({
    String? tableLabel,
    String? showTable,
  }) {
    return Tables(
      tableLabel: tableLabel ?? this.tableLabel,
      showTable: showTable ?? this.showTable,
    );
  }
}

class ServiceStaff {
  String? serviceStaffLabel;
  String? showServiceStaff;

  ServiceStaff({this.serviceStaffLabel, this.showServiceStaff});
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service_staff_label': serviceStaffLabel,
      'show_service_staff': showServiceStaff,
    };
  }

  factory ServiceStaff.fromMap(Map<String, dynamic> map) {
    return ServiceStaff(
      serviceStaffLabel: map['service_staff_label'] != null
          ? map['service_staff_label'] as String
          : null,
      showServiceStaff: map['show_service_staff'] != null
          ? map['show_service_staff'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ServiceStaff.fromJson(String source) =>
      ServiceStaff.fromMap(json.decode(source) as Map<String, dynamic>);

  ServiceStaff copyWith({
    String? serviceStaffLabel,
    String? showServiceStaff,
  }) {
    return ServiceStaff(
      serviceStaffLabel: serviceStaffLabel ?? this.serviceStaffLabel,
      showServiceStaff: showServiceStaff ?? this.showServiceStaff,
    );
  }
}
