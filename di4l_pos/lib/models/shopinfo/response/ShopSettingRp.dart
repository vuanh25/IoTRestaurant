// To parse this JSON data, do
//
//     final shopSettingRp = shopSettingRpFromJson(jsonString);

import 'dart:convert';

class ShopSettingRp {
  Business? business;
  Tax? tax;
  Product? product;
  Contact? contact;
  Sale? sale;
  Pos? pos;
  Purchases? purchases;
  Dashboard? dashboard;
  System? system;
  Prefixes? prefixes;
  EmailSetting? emailSetting;
  SmsSetting? smsSetting;
  RewardPointSetting? rewardPointSetting;
  CustomLabel? customLabel;
  EcommerceApiKey? ecommerceApiKey;
  String? customDomain;
  String? statusCustomDomain;
  List<StatusOrder>? statusOrder;

  ShopSettingRp({
    this.business,
    this.tax,
    this.product,
    this.contact,
    this.sale,
    this.pos,
    this.purchases,
    this.dashboard,
    this.system,
    this.prefixes,
    this.emailSetting,
    this.smsSetting,
    this.rewardPointSetting,
    this.customLabel,
    this.ecommerceApiKey,
    this.customDomain,
    this.statusCustomDomain,
    this.statusOrder,
  });

  ShopSettingRp copyWith({
    Business? business,
    Tax? tax,
    Product? product,
    Contact? contact,
    Sale? sale,
    Pos? pos,
    Purchases? purchases,
    Dashboard? dashboard,
    System? system,
    Prefixes? prefixes,
    EmailSetting? emailSetting,
    SmsSetting? smsSetting,
    RewardPointSetting? rewardPointSetting,
    CustomLabel? customLabel,
    EcommerceApiKey? ecommerceApiKey,
    String? customDomain,
    String? statusCustomDomain,
    List<StatusOrder>? statusOrder,
  }) =>
      ShopSettingRp(
        business: business ?? this.business,
        tax: tax ?? this.tax,
        product: product ?? this.product,
        contact: contact ?? this.contact,
        sale: sale ?? this.sale,
        pos: pos ?? this.pos,
        purchases: purchases ?? this.purchases,
        dashboard: dashboard ?? this.dashboard,
        system: system ?? this.system,
        prefixes: prefixes ?? this.prefixes,
        emailSetting: emailSetting ?? this.emailSetting,
        smsSetting: smsSetting ?? this.smsSetting,
        rewardPointSetting: rewardPointSetting ?? this.rewardPointSetting,
        customLabel: customLabel ?? this.customLabel,
        ecommerceApiKey: ecommerceApiKey ?? this.ecommerceApiKey,
        customDomain: customDomain ?? this.customDomain,
        statusCustomDomain: statusCustomDomain ?? this.statusCustomDomain,
        statusOrder: statusOrder ?? this.statusOrder,
      );

  factory ShopSettingRp.fromRawJson(String str) =>
      ShopSettingRp.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShopSettingRp.fromJson(Map<String, dynamic> json) => ShopSettingRp(
        business: json["business"] == null
            ? null
            : Business.fromJson(json["business"]),
        tax: json["tax"] == null ? null : Tax.fromJson(json["tax"]),
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        contact:
            json["contact"] == null ? null : Contact.fromJson(json["contact"]),
        sale: json["sale"] == null ? null : Sale.fromJson(json["sale"]),
        pos: json["pos"] == null ? null : Pos.fromJson(json["pos"]),
        purchases: json["purchases"] == null
            ? null
            : Purchases.fromJson(json["purchases"]),
        dashboard: json["dashboard"] == null
            ? null
            : Dashboard.fromJson(json["dashboard"]),
        system: json["system"] == null ? null : System.fromJson(json["system"]),
        prefixes: json["prefixes"] == null
            ? null
            : Prefixes.fromJson(json["prefixes"]),
        emailSetting: json["email_setting"] == null
            ? null
            : EmailSetting.fromJson(json["email_setting"]),
        smsSetting: json["sms_setting"] == null
            ? null
            : SmsSetting.fromJson(json["sms_setting"]),
        rewardPointSetting: json["reward_point_setting"] == null
            ? null
            : RewardPointSetting.fromJson(json["reward_point_setting"]),
        customLabel: json["custom_label"] == null
            ? null
            : CustomLabel.fromJson(json["custom_label"]),
        ecommerceApiKey: json["ecommerce_api_key"] == null
            ? null
            : EcommerceApiKey.fromJson(json["ecommerce_api_key"]),
        customDomain: json["custom_domain"],
        statusCustomDomain: json["status_custom_domain"],
        statusOrder: json["status_order"] == null
            ? []
            : List<StatusOrder>.from(
                json["status_order"]!.map((x) => StatusOrder.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "business": business?.toJson(),
        "tax": tax?.toJson(),
        "product": product?.toJson(),
        "contact": contact?.toJson(),
        "sale": sale?.toJson(),
        "pos": pos?.toJson(),
        "purchases": purchases?.toJson(),
        "dashboard": dashboard?.toJson(),
        "system": system?.toJson(),
        "prefixes": prefixes?.toJson(),
        "email_setting": emailSetting?.toJson(),
        "sms_setting": smsSetting?.toJson(),
        "reward_point_setting": rewardPointSetting?.toJson(),
        "custom_label": customLabel?.toJson(),
        "ecommerce_api_key": ecommerceApiKey?.toJson(),
        "custom_domain": customDomain,
        "status_custom_domain": statusCustomDomain,
        "status_order": statusOrder == null
            ? []
            : List<dynamic>.from(statusOrder!.map((x) => x.toJson())),
      };
}

class Business {
  int? id;
  String? businessName;
  String? startDate;
  int? defaultProfitPercent;
  int? currencyId;
  String? currency;
  String? currencySymbolPlacement;
  String? timezone;
  String? logo;
  int? financialYearStartMonth;
  String? accountingMethod;
  int? transactionEditDays;
  String? dateFormat;
  String? timeFormat;

  Business({
    this.id,
    this.businessName,
    this.startDate,
    this.defaultProfitPercent,
    this.currencyId,
    this.currency,
    this.currencySymbolPlacement,
    this.timezone,
    this.logo,
    this.financialYearStartMonth,
    this.accountingMethod,
    this.transactionEditDays,
    this.dateFormat,
    this.timeFormat,
  });

  Business copyWith({
    int? id,
    String? businessName,
    String? startDate,
    int? defaultProfitPercent,
    int? currencyId,
    String? currency,
    String? currencySymbolPlacement,
    String? timezone,
    String? logo,
    int? financialYearStartMonth,
    String? accountingMethod,
    int? transactionEditDays,
    String? dateFormat,
    String? timeFormat,
  }) =>
      Business(
        id: id ?? this.id,
        businessName: businessName ?? this.businessName,
        startDate: startDate ?? this.startDate,
        defaultProfitPercent: defaultProfitPercent ?? this.defaultProfitPercent,
        currencyId: currencyId ?? this.currencyId,
        currency: currency ?? this.currency,
        currencySymbolPlacement:
            currencySymbolPlacement ?? this.currencySymbolPlacement,
        timezone: timezone ?? this.timezone,
        logo: logo ?? this.logo,
        financialYearStartMonth:
            financialYearStartMonth ?? this.financialYearStartMonth,
        accountingMethod: accountingMethod ?? this.accountingMethod,
        transactionEditDays: transactionEditDays ?? this.transactionEditDays,
        dateFormat: dateFormat ?? this.dateFormat,
        timeFormat: timeFormat ?? this.timeFormat,
      );

  factory Business.fromRawJson(String str) =>
      Business.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Business.fromJson(Map<String, dynamic> json) => Business(
        id: json["id"],
        businessName: json["business_name"],
        startDate: json["start_date"],
        defaultProfitPercent: json["default_profit_percent"],
        currencyId: json["currency_id"],
        currency: json["currency"],
        currencySymbolPlacement: json["currency_symbol_placement"],
        timezone: json["timezone"],
        logo: json["logo"],
        financialYearStartMonth: json["financial_year_start_month"],
        accountingMethod: json["accounting_method"],
        transactionEditDays: json["transaction_edit_days"],
        dateFormat: json["date_format"],
        timeFormat: json["time_format"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_name": businessName,
        "start_date": startDate,
        "default_profit_percent": defaultProfitPercent,
        "currency_id": currencyId,
        "currency": currency,
        "currency_symbol_placement": currencySymbolPlacement,
        "timezone": timezone,
        "logo": logo,
        "financial_year_start_month": financialYearStartMonth,
        "accounting_method": accountingMethod,
        "transaction_edit_days": transactionEditDays,
        "date_format": dateFormat,
        "time_format": timeFormat,
      };
}

class Contact {
  String? defaultCreditLimit;

  Contact({
    this.defaultCreditLimit,
  });

  Contact copyWith({
    String? defaultCreditLimit,
  }) =>
      Contact(
        defaultCreditLimit: defaultCreditLimit ?? this.defaultCreditLimit,
      );

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        defaultCreditLimit: json["default_credit_limit"],
      );

  Map<String, dynamic> toJson() => {
        "default_credit_limit": defaultCreditLimit,
      };
}

class CustomLabel {
  LabelsForCustomPayments? labelsForCustomPayments;
  LabelsForContactCustomFields? labelsForContactCustomFields;
  LabelsForProductCustomFields? labelsForProductCustomFields;
  LabelsForLocationCustomFields? labelsForLocationCustomFields;
  LabelsForUserCustomFields? labelsForUserCustomFields;
  LabelsForPurchaseCustomFields? labelsForPurchaseCustomFields;
  LabelsForPurchaseShippingCustomFields? labelsForPurchaseShippingCustomFields;
  LabelsForSellCustomFields? labelsForSellCustomFields;
  LabelsForSaleShippingCustomFields? labelsForSaleShippingCustomFields;
  LabelsForTypesOfServiceCustomFields? labelsForTypesOfServiceCustomFields;

  CustomLabel({
    this.labelsForCustomPayments,
    this.labelsForContactCustomFields,
    this.labelsForProductCustomFields,
    this.labelsForLocationCustomFields,
    this.labelsForUserCustomFields,
    this.labelsForPurchaseCustomFields,
    this.labelsForPurchaseShippingCustomFields,
    this.labelsForSellCustomFields,
    this.labelsForSaleShippingCustomFields,
    this.labelsForTypesOfServiceCustomFields,
  });

  CustomLabel copyWith({
    LabelsForCustomPayments? labelsForCustomPayments,
    LabelsForContactCustomFields? labelsForContactCustomFields,
    LabelsForProductCustomFields? labelsForProductCustomFields,
    LabelsForLocationCustomFields? labelsForLocationCustomFields,
    LabelsForUserCustomFields? labelsForUserCustomFields,
    LabelsForPurchaseCustomFields? labelsForPurchaseCustomFields,
    LabelsForPurchaseShippingCustomFields?
        labelsForPurchaseShippingCustomFields,
    LabelsForSellCustomFields? labelsForSellCustomFields,
    LabelsForSaleShippingCustomFields? labelsForSaleShippingCustomFields,
    LabelsForTypesOfServiceCustomFields? labelsForTypesOfServiceCustomFields,
  }) =>
      CustomLabel(
        labelsForCustomPayments:
            labelsForCustomPayments ?? this.labelsForCustomPayments,
        labelsForContactCustomFields:
            labelsForContactCustomFields ?? this.labelsForContactCustomFields,
        labelsForProductCustomFields:
            labelsForProductCustomFields ?? this.labelsForProductCustomFields,
        labelsForLocationCustomFields:
            labelsForLocationCustomFields ?? this.labelsForLocationCustomFields,
        labelsForUserCustomFields:
            labelsForUserCustomFields ?? this.labelsForUserCustomFields,
        labelsForPurchaseCustomFields:
            labelsForPurchaseCustomFields ?? this.labelsForPurchaseCustomFields,
        labelsForPurchaseShippingCustomFields:
            labelsForPurchaseShippingCustomFields ??
                this.labelsForPurchaseShippingCustomFields,
        labelsForSellCustomFields:
            labelsForSellCustomFields ?? this.labelsForSellCustomFields,
        labelsForSaleShippingCustomFields: labelsForSaleShippingCustomFields ??
            this.labelsForSaleShippingCustomFields,
        labelsForTypesOfServiceCustomFields:
            labelsForTypesOfServiceCustomFields ??
                this.labelsForTypesOfServiceCustomFields,
      );

  factory CustomLabel.fromRawJson(String str) =>
      CustomLabel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomLabel.fromJson(Map<String, dynamic> json) => CustomLabel(
        labelsForCustomPayments: json["labels_for_custom_payments"] == null
            ? null
            : LabelsForCustomPayments.fromJson(
                json["labels_for_custom_payments"]),
        labelsForContactCustomFields:
            json["labels_for_contact_custom_fields"] == null
                ? null
                : LabelsForContactCustomFields.fromJson(
                    json["labels_for_contact_custom_fields"]),
        labelsForProductCustomFields:
            json["labels_for_product_custom_fields"] == null
                ? null
                : LabelsForProductCustomFields.fromJson(
                    json["labels_for_product_custom_fields"]),
        labelsForLocationCustomFields:
            json["labels_for_location_custom_fields"] == null
                ? null
                : LabelsForLocationCustomFields.fromJson(
                    json["labels_for_location_custom_fields"]),
        labelsForUserCustomFields: json["labels_for_user_custom_fields"] == null
            ? null
            : LabelsForUserCustomFields.fromJson(
                json["labels_for_user_custom_fields"]),
        labelsForPurchaseCustomFields:
            json["labels_for_purchase_custom_fields"] == null
                ? null
                : LabelsForPurchaseCustomFields.fromJson(
                    json["labels_for_purchase_custom_fields"]),
        labelsForPurchaseShippingCustomFields:
            json["labels_for_purchase_shipping_custom_fields"] == null
                ? null
                : LabelsForPurchaseShippingCustomFields.fromJson(
                    json["labels_for_purchase_shipping_custom_fields"]),
        labelsForSellCustomFields: json["labels_for_sell_custom_fields"] == null
            ? null
            : LabelsForSellCustomFields.fromJson(
                json["labels_for_sell_custom_fields"]),
        labelsForSaleShippingCustomFields:
            json["labels_for_sale_shipping_custom_fields"] == null
                ? null
                : LabelsForSaleShippingCustomFields.fromJson(
                    json["labels_for_sale_shipping_custom_fields"]),
        labelsForTypesOfServiceCustomFields:
            json["labels_for_types_of_service_custom_fields"] == null
                ? null
                : LabelsForTypesOfServiceCustomFields.fromJson(
                    json["labels_for_types_of_service_custom_fields"]),
      );

  Map<String, dynamic> toJson() => {
        "labels_for_custom_payments": labelsForCustomPayments?.toJson(),
        "labels_for_contact_custom_fields":
            labelsForContactCustomFields?.toJson(),
        "labels_for_product_custom_fields":
            labelsForProductCustomFields?.toJson(),
        "labels_for_location_custom_fields":
            labelsForLocationCustomFields?.toJson(),
        "labels_for_user_custom_fields": labelsForUserCustomFields?.toJson(),
        "labels_for_purchase_custom_fields":
            labelsForPurchaseCustomFields?.toJson(),
        "labels_for_purchase_shipping_custom_fields":
            labelsForPurchaseShippingCustomFields?.toJson(),
        "labels_for_sell_custom_fields": labelsForSellCustomFields?.toJson(),
        "labels_for_sale_shipping_custom_fields":
            labelsForSaleShippingCustomFields?.toJson(),
        "labels_for_types_of_service_custom_fields":
            labelsForTypesOfServiceCustomFields?.toJson(),
      };
}

class LabelsForContactCustomFields {
  dynamic contactCustomField1Label;
  dynamic contactCustomField2Label;
  dynamic contactCustomField3Label;
  dynamic contactCustomField4Label;
  dynamic contactCustomField5Label;
  dynamic contactCustomField6Label;
  dynamic contactCustomField7Label;
  dynamic contactCustomField8Label;
  dynamic contactCustomField9Label;
  dynamic contactCustomField10Label;

  LabelsForContactCustomFields({
    this.contactCustomField1Label,
    this.contactCustomField2Label,
    this.contactCustomField3Label,
    this.contactCustomField4Label,
    this.contactCustomField5Label,
    this.contactCustomField6Label,
    this.contactCustomField7Label,
    this.contactCustomField8Label,
    this.contactCustomField9Label,
    this.contactCustomField10Label,
  });

  LabelsForContactCustomFields copyWith({
    dynamic contactCustomField1Label,
    dynamic contactCustomField2Label,
    dynamic contactCustomField3Label,
    dynamic contactCustomField4Label,
    dynamic contactCustomField5Label,
    dynamic contactCustomField6Label,
    dynamic contactCustomField7Label,
    dynamic contactCustomField8Label,
    dynamic contactCustomField9Label,
    dynamic contactCustomField10Label,
  }) =>
      LabelsForContactCustomFields(
        contactCustomField1Label:
            contactCustomField1Label ?? this.contactCustomField1Label,
        contactCustomField2Label:
            contactCustomField2Label ?? this.contactCustomField2Label,
        contactCustomField3Label:
            contactCustomField3Label ?? this.contactCustomField3Label,
        contactCustomField4Label:
            contactCustomField4Label ?? this.contactCustomField4Label,
        contactCustomField5Label:
            contactCustomField5Label ?? this.contactCustomField5Label,
        contactCustomField6Label:
            contactCustomField6Label ?? this.contactCustomField6Label,
        contactCustomField7Label:
            contactCustomField7Label ?? this.contactCustomField7Label,
        contactCustomField8Label:
            contactCustomField8Label ?? this.contactCustomField8Label,
        contactCustomField9Label:
            contactCustomField9Label ?? this.contactCustomField9Label,
        contactCustomField10Label:
            contactCustomField10Label ?? this.contactCustomField10Label,
      );

  factory LabelsForContactCustomFields.fromRawJson(String str) =>
      LabelsForContactCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForContactCustomFields.fromJson(Map<String, dynamic> json) =>
      LabelsForContactCustomFields(
        contactCustomField1Label: json["contact_custom_field_1_label"],
        contactCustomField2Label: json["contact_custom_field_2_label"],
        contactCustomField3Label: json["contact_custom_field_3_label"],
        contactCustomField4Label: json["contact_custom_field_4_label"],
        contactCustomField5Label: json["contact_custom_field_5_label"],
        contactCustomField6Label: json["contact_custom_field_6_label"],
        contactCustomField7Label: json["contact_custom_field_7_label"],
        contactCustomField8Label: json["contact_custom_field_8_label"],
        contactCustomField9Label: json["contact_custom_field_9_label"],
        contactCustomField10Label: json["contact_custom_field_10_label"],
      );

  Map<String, dynamic> toJson() => {
        "contact_custom_field_1_label": contactCustomField1Label,
        "contact_custom_field_2_label": contactCustomField2Label,
        "contact_custom_field_3_label": contactCustomField3Label,
        "contact_custom_field_4_label": contactCustomField4Label,
        "contact_custom_field_5_label": contactCustomField5Label,
        "contact_custom_field_6_label": contactCustomField6Label,
        "contact_custom_field_7_label": contactCustomField7Label,
        "contact_custom_field_8_label": contactCustomField8Label,
        "contact_custom_field_9_label": contactCustomField9Label,
        "contact_custom_field_10_label": contactCustomField10Label,
      };
}

class LabelsForCustomPayments {
  dynamic customPayment1Label;
  dynamic customPayment2Label;
  dynamic customPayment3Label;
  dynamic customPayment4Label;
  dynamic customPayment5Label;
  dynamic customPayment6Label;
  dynamic customPayment7Label;

  LabelsForCustomPayments({
    this.customPayment1Label,
    this.customPayment2Label,
    this.customPayment3Label,
    this.customPayment4Label,
    this.customPayment5Label,
    this.customPayment6Label,
    this.customPayment7Label,
  });

  LabelsForCustomPayments copyWith({
    dynamic customPayment1Label,
    dynamic customPayment2Label,
    dynamic customPayment3Label,
    dynamic customPayment4Label,
    dynamic customPayment5Label,
    dynamic customPayment6Label,
    dynamic customPayment7Label,
  }) =>
      LabelsForCustomPayments(
        customPayment1Label: customPayment1Label ?? this.customPayment1Label,
        customPayment2Label: customPayment2Label ?? this.customPayment2Label,
        customPayment3Label: customPayment3Label ?? this.customPayment3Label,
        customPayment4Label: customPayment4Label ?? this.customPayment4Label,
        customPayment5Label: customPayment5Label ?? this.customPayment5Label,
        customPayment6Label: customPayment6Label ?? this.customPayment6Label,
        customPayment7Label: customPayment7Label ?? this.customPayment7Label,
      );

  factory LabelsForCustomPayments.fromRawJson(String str) =>
      LabelsForCustomPayments.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForCustomPayments.fromJson(Map<String, dynamic> json) =>
      LabelsForCustomPayments(
        customPayment1Label: json["custom_payment_1_label"],
        customPayment2Label: json["custom_payment_2_label"],
        customPayment3Label: json["custom_payment_3_label"],
        customPayment4Label: json["custom_payment_4_label"],
        customPayment5Label: json["custom_payment_5_label"],
        customPayment6Label: json["custom_payment_6_label"],
        customPayment7Label: json["custom_payment_7_label"],
      );

  Map<String, dynamic> toJson() => {
        "custom_payment_1_label": customPayment1Label,
        "custom_payment_2_label": customPayment2Label,
        "custom_payment_3_label": customPayment3Label,
        "custom_payment_4_label": customPayment4Label,
        "custom_payment_5_label": customPayment5Label,
        "custom_payment_6_label": customPayment6Label,
        "custom_payment_7_label": customPayment7Label,
      };
}

class LabelsForLocationCustomFields {
  dynamic locationCustomField1Label;
  dynamic locationCustomField2Label;
  dynamic locationCustomField3Label;
  dynamic locationCustomField4Label;

  LabelsForLocationCustomFields({
    this.locationCustomField1Label,
    this.locationCustomField2Label,
    this.locationCustomField3Label,
    this.locationCustomField4Label,
  });

  LabelsForLocationCustomFields copyWith({
    dynamic locationCustomField1Label,
    dynamic locationCustomField2Label,
    dynamic locationCustomField3Label,
    dynamic locationCustomField4Label,
  }) =>
      LabelsForLocationCustomFields(
        locationCustomField1Label:
            locationCustomField1Label ?? this.locationCustomField1Label,
        locationCustomField2Label:
            locationCustomField2Label ?? this.locationCustomField2Label,
        locationCustomField3Label:
            locationCustomField3Label ?? this.locationCustomField3Label,
        locationCustomField4Label:
            locationCustomField4Label ?? this.locationCustomField4Label,
      );

  factory LabelsForLocationCustomFields.fromRawJson(String str) =>
      LabelsForLocationCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForLocationCustomFields.fromJson(Map<String, dynamic> json) =>
      LabelsForLocationCustomFields(
        locationCustomField1Label: json["location_custom_field_1_label"],
        locationCustomField2Label: json["location_custom_field_2_label"],
        locationCustomField3Label: json["location_custom_field_3_label"],
        locationCustomField4Label: json["location_custom_field_4_label"],
      );

  Map<String, dynamic> toJson() => {
        "location_custom_field_1_label": locationCustomField1Label,
        "location_custom_field_2_label": locationCustomField2Label,
        "location_custom_field_3_label": locationCustomField3Label,
        "location_custom_field_4_label": locationCustomField4Label,
      };
}

class LabelsForProductCustomFields {
  dynamic productCustomField1Label;
  dynamic productCustomField2Label;
  dynamic productCustomField3Label;
  dynamic productCustomField4Label;

  LabelsForProductCustomFields({
    this.productCustomField1Label,
    this.productCustomField2Label,
    this.productCustomField3Label,
    this.productCustomField4Label,
  });

  LabelsForProductCustomFields copyWith({
    dynamic productCustomField1Label,
    dynamic productCustomField2Label,
    dynamic productCustomField3Label,
    dynamic productCustomField4Label,
  }) =>
      LabelsForProductCustomFields(
        productCustomField1Label:
            productCustomField1Label ?? this.productCustomField1Label,
        productCustomField2Label:
            productCustomField2Label ?? this.productCustomField2Label,
        productCustomField3Label:
            productCustomField3Label ?? this.productCustomField3Label,
        productCustomField4Label:
            productCustomField4Label ?? this.productCustomField4Label,
      );

  factory LabelsForProductCustomFields.fromRawJson(String str) =>
      LabelsForProductCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForProductCustomFields.fromJson(Map<String, dynamic> json) =>
      LabelsForProductCustomFields(
        productCustomField1Label: json["product_custom_field_1_label"],
        productCustomField2Label: json["product_custom_field_2_label"],
        productCustomField3Label: json["product_custom_field_3_label"],
        productCustomField4Label: json["product_custom_field_4_label"],
      );

  Map<String, dynamic> toJson() => {
        "product_custom_field_1_label": productCustomField1Label,
        "product_custom_field_2_label": productCustomField2Label,
        "product_custom_field_3_label": productCustomField3Label,
        "product_custom_field_4_label": productCustomField4Label,
      };
}

class LabelsForPurchaseCustomFields {
  dynamic purchaseCustomField1Label;
  bool? isCustomField1Required;
  dynamic purchaseCustomField2Label;
  bool? isCustomField2Required;
  dynamic purchaseCustomField3Label;
  bool? isCustomField3Required;
  dynamic purchaseCustomField4Label;
  bool? isCustomField4Required;

  LabelsForPurchaseCustomFields({
    this.purchaseCustomField1Label,
    this.isCustomField1Required,
    this.purchaseCustomField2Label,
    this.isCustomField2Required,
    this.purchaseCustomField3Label,
    this.isCustomField3Required,
    this.purchaseCustomField4Label,
    this.isCustomField4Required,
  });

  LabelsForPurchaseCustomFields copyWith({
    dynamic purchaseCustomField1Label,
    bool? isCustomField1Required,
    dynamic purchaseCustomField2Label,
    bool? isCustomField2Required,
    dynamic purchaseCustomField3Label,
    bool? isCustomField3Required,
    dynamic purchaseCustomField4Label,
    bool? isCustomField4Required,
  }) =>
      LabelsForPurchaseCustomFields(
        purchaseCustomField1Label:
            purchaseCustomField1Label ?? this.purchaseCustomField1Label,
        isCustomField1Required:
            isCustomField1Required ?? this.isCustomField1Required,
        purchaseCustomField2Label:
            purchaseCustomField2Label ?? this.purchaseCustomField2Label,
        isCustomField2Required:
            isCustomField2Required ?? this.isCustomField2Required,
        purchaseCustomField3Label:
            purchaseCustomField3Label ?? this.purchaseCustomField3Label,
        isCustomField3Required:
            isCustomField3Required ?? this.isCustomField3Required,
        purchaseCustomField4Label:
            purchaseCustomField4Label ?? this.purchaseCustomField4Label,
        isCustomField4Required:
            isCustomField4Required ?? this.isCustomField4Required,
      );

  factory LabelsForPurchaseCustomFields.fromRawJson(String str) =>
      LabelsForPurchaseCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForPurchaseCustomFields.fromJson(Map<String, dynamic> json) =>
      LabelsForPurchaseCustomFields(
        purchaseCustomField1Label: json["purchase_custom_field_1_label"],
        isCustomField1Required: json["is_custom_field_1_required"],
        purchaseCustomField2Label: json["purchase_custom_field_2_label"],
        isCustomField2Required: json["is_custom_field_2_required"],
        purchaseCustomField3Label: json["purchase_custom_field_3_label"],
        isCustomField3Required: json["is_custom_field_3_required"],
        purchaseCustomField4Label: json["purchase_custom_field_4_label"],
        isCustomField4Required: json["is_custom_field_4_required"],
      );

  Map<String, dynamic> toJson() => {
        "purchase_custom_field_1_label": purchaseCustomField1Label,
        "is_custom_field_1_required": isCustomField1Required,
        "purchase_custom_field_2_label": purchaseCustomField2Label,
        "is_custom_field_2_required": isCustomField2Required,
        "purchase_custom_field_3_label": purchaseCustomField3Label,
        "is_custom_field_3_required": isCustomField3Required,
        "purchase_custom_field_4_label": purchaseCustomField4Label,
        "is_custom_field_4_required": isCustomField4Required,
      };
}

class LabelsForPurchaseShippingCustomFields {
  dynamic purchaseShippingCustomField1Label;
  bool? isCustomField1Required;
  dynamic purchaseShippingCustomField2Label;
  bool? isCustomField2Required;
  dynamic purchaseShippingCustomField3Label;
  bool? isCustomField3Required;
  dynamic purchaseShippingCustomField4Label;
  bool? isCustomField4Required;
  dynamic purchaseShippingCustomField5Label;
  bool? isCustomField5Required;

  LabelsForPurchaseShippingCustomFields({
    this.purchaseShippingCustomField1Label,
    this.isCustomField1Required,
    this.purchaseShippingCustomField2Label,
    this.isCustomField2Required,
    this.purchaseShippingCustomField3Label,
    this.isCustomField3Required,
    this.purchaseShippingCustomField4Label,
    this.isCustomField4Required,
    this.purchaseShippingCustomField5Label,
    this.isCustomField5Required,
  });

  LabelsForPurchaseShippingCustomFields copyWith({
    dynamic purchaseShippingCustomField1Label,
    bool? isCustomField1Required,
    dynamic purchaseShippingCustomField2Label,
    bool? isCustomField2Required,
    dynamic purchaseShippingCustomField3Label,
    bool? isCustomField3Required,
    dynamic purchaseShippingCustomField4Label,
    bool? isCustomField4Required,
    dynamic purchaseShippingCustomField5Label,
    bool? isCustomField5Required,
  }) =>
      LabelsForPurchaseShippingCustomFields(
        purchaseShippingCustomField1Label: purchaseShippingCustomField1Label ??
            this.purchaseShippingCustomField1Label,
        isCustomField1Required:
            isCustomField1Required ?? this.isCustomField1Required,
        purchaseShippingCustomField2Label: purchaseShippingCustomField2Label ??
            this.purchaseShippingCustomField2Label,
        isCustomField2Required:
            isCustomField2Required ?? this.isCustomField2Required,
        purchaseShippingCustomField3Label: purchaseShippingCustomField3Label ??
            this.purchaseShippingCustomField3Label,
        isCustomField3Required:
            isCustomField3Required ?? this.isCustomField3Required,
        purchaseShippingCustomField4Label: purchaseShippingCustomField4Label ??
            this.purchaseShippingCustomField4Label,
        isCustomField4Required:
            isCustomField4Required ?? this.isCustomField4Required,
        purchaseShippingCustomField5Label: purchaseShippingCustomField5Label ??
            this.purchaseShippingCustomField5Label,
        isCustomField5Required:
            isCustomField5Required ?? this.isCustomField5Required,
      );

  factory LabelsForPurchaseShippingCustomFields.fromRawJson(String str) =>
      LabelsForPurchaseShippingCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForPurchaseShippingCustomFields.fromJson(
          Map<String, dynamic> json) =>
      LabelsForPurchaseShippingCustomFields(
        purchaseShippingCustomField1Label:
            json["purchase_shipping_custom_field_1_label"],
        isCustomField1Required: json["is_custom_field_1_required"],
        purchaseShippingCustomField2Label:
            json["purchase_shipping_custom_field_2_label"],
        isCustomField2Required: json["is_custom_field_2_required"],
        purchaseShippingCustomField3Label:
            json["purchase_shipping_custom_field_3_label"],
        isCustomField3Required: json["is_custom_field_3_required"],
        purchaseShippingCustomField4Label:
            json["purchase_shipping_custom_field_4_label"],
        isCustomField4Required: json["is_custom_field_4_required"],
        purchaseShippingCustomField5Label:
            json["purchase_shipping_custom_field_5_label"],
        isCustomField5Required: json["is_custom_field_5_required"],
      );

  Map<String, dynamic> toJson() => {
        "purchase_shipping_custom_field_1_label":
            purchaseShippingCustomField1Label,
        "is_custom_field_1_required": isCustomField1Required,
        "purchase_shipping_custom_field_2_label":
            purchaseShippingCustomField2Label,
        "is_custom_field_2_required": isCustomField2Required,
        "purchase_shipping_custom_field_3_label":
            purchaseShippingCustomField3Label,
        "is_custom_field_3_required": isCustomField3Required,
        "purchase_shipping_custom_field_4_label":
            purchaseShippingCustomField4Label,
        "is_custom_field_4_required": isCustomField4Required,
        "purchase_shipping_custom_field_5_label":
            purchaseShippingCustomField5Label,
        "is_custom_field_5_required": isCustomField5Required,
      };
}

class LabelsForSaleShippingCustomFields {
  dynamic shippingCustomField1Label;
  bool? isCustomField1Required;
  bool? isCustomField1ContactDefault;
  dynamic shippingCustomField2Label;
  bool? isCustomField2Required;
  bool? isCustomField2ContactDefault;
  dynamic shippingCustomField3Label;
  bool? isCustomField3Required;
  bool? isCustomField3ContactDefault;
  dynamic shippingCustomField4Label;
  bool? isCustomField4Required;
  bool? isCustomField4ContactDefault;
  dynamic shippingCustomField5Label;
  bool? isCustomField5Required;
  bool? isCustomField5ContactDefault;

  LabelsForSaleShippingCustomFields({
    this.shippingCustomField1Label,
    this.isCustomField1Required,
    this.isCustomField1ContactDefault,
    this.shippingCustomField2Label,
    this.isCustomField2Required,
    this.isCustomField2ContactDefault,
    this.shippingCustomField3Label,
    this.isCustomField3Required,
    this.isCustomField3ContactDefault,
    this.shippingCustomField4Label,
    this.isCustomField4Required,
    this.isCustomField4ContactDefault,
    this.shippingCustomField5Label,
    this.isCustomField5Required,
    this.isCustomField5ContactDefault,
  });

  LabelsForSaleShippingCustomFields copyWith({
    dynamic shippingCustomField1Label,
    bool? isCustomField1Required,
    bool? isCustomField1ContactDefault,
    dynamic shippingCustomField2Label,
    bool? isCustomField2Required,
    bool? isCustomField2ContactDefault,
    dynamic shippingCustomField3Label,
    bool? isCustomField3Required,
    bool? isCustomField3ContactDefault,
    dynamic shippingCustomField4Label,
    bool? isCustomField4Required,
    bool? isCustomField4ContactDefault,
    dynamic shippingCustomField5Label,
    bool? isCustomField5Required,
    bool? isCustomField5ContactDefault,
  }) =>
      LabelsForSaleShippingCustomFields(
        shippingCustomField1Label:
            shippingCustomField1Label ?? this.shippingCustomField1Label,
        isCustomField1Required:
            isCustomField1Required ?? this.isCustomField1Required,
        isCustomField1ContactDefault:
            isCustomField1ContactDefault ?? this.isCustomField1ContactDefault,
        shippingCustomField2Label:
            shippingCustomField2Label ?? this.shippingCustomField2Label,
        isCustomField2Required:
            isCustomField2Required ?? this.isCustomField2Required,
        isCustomField2ContactDefault:
            isCustomField2ContactDefault ?? this.isCustomField2ContactDefault,
        shippingCustomField3Label:
            shippingCustomField3Label ?? this.shippingCustomField3Label,
        isCustomField3Required:
            isCustomField3Required ?? this.isCustomField3Required,
        isCustomField3ContactDefault:
            isCustomField3ContactDefault ?? this.isCustomField3ContactDefault,
        shippingCustomField4Label:
            shippingCustomField4Label ?? this.shippingCustomField4Label,
        isCustomField4Required:
            isCustomField4Required ?? this.isCustomField4Required,
        isCustomField4ContactDefault:
            isCustomField4ContactDefault ?? this.isCustomField4ContactDefault,
        shippingCustomField5Label:
            shippingCustomField5Label ?? this.shippingCustomField5Label,
        isCustomField5Required:
            isCustomField5Required ?? this.isCustomField5Required,
        isCustomField5ContactDefault:
            isCustomField5ContactDefault ?? this.isCustomField5ContactDefault,
      );

  factory LabelsForSaleShippingCustomFields.fromRawJson(String str) =>
      LabelsForSaleShippingCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForSaleShippingCustomFields.fromJson(
          Map<String, dynamic> json) =>
      LabelsForSaleShippingCustomFields(
        shippingCustomField1Label: json["shipping_custom_field_1_label"],
        isCustomField1Required: json["is_custom_field_1_required"],
        isCustomField1ContactDefault: json["is_custom_field_1_contact_default"],
        shippingCustomField2Label: json["shipping_custom_field_2_label"],
        isCustomField2Required: json["is_custom_field_2_required"],
        isCustomField2ContactDefault: json["is_custom_field_2_contact_default"],
        shippingCustomField3Label: json["shipping_custom_field_3_label"],
        isCustomField3Required: json["is_custom_field_3_required"],
        isCustomField3ContactDefault: json["is_custom_field_3_contact_default"],
        shippingCustomField4Label: json["shipping_custom_field_4_label"],
        isCustomField4Required: json["is_custom_field_4_required"],
        isCustomField4ContactDefault: json["is_custom_field_4_contact_default"],
        shippingCustomField5Label: json["shipping_custom_field_5_label"],
        isCustomField5Required: json["is_custom_field_5_required"],
        isCustomField5ContactDefault: json["is_custom_field_5_contact_default"],
      );

  Map<String, dynamic> toJson() => {
        "shipping_custom_field_1_label": shippingCustomField1Label,
        "is_custom_field_1_required": isCustomField1Required,
        "is_custom_field_1_contact_default": isCustomField1ContactDefault,
        "shipping_custom_field_2_label": shippingCustomField2Label,
        "is_custom_field_2_required": isCustomField2Required,
        "is_custom_field_2_contact_default": isCustomField2ContactDefault,
        "shipping_custom_field_3_label": shippingCustomField3Label,
        "is_custom_field_3_required": isCustomField3Required,
        "is_custom_field_3_contact_default": isCustomField3ContactDefault,
        "shipping_custom_field_4_label": shippingCustomField4Label,
        "is_custom_field_4_required": isCustomField4Required,
        "is_custom_field_4_contact_default": isCustomField4ContactDefault,
        "shipping_custom_field_5_label": shippingCustomField5Label,
        "is_custom_field_5_required": isCustomField5Required,
        "is_custom_field_5_contact_default": isCustomField5ContactDefault,
      };
}

class LabelsForSellCustomFields {
  dynamic sellCustomField1Label;
  bool? isCustomField1Required;
  dynamic sellCustomField2Label;
  bool? isCustomField2Required;
  dynamic sellCustomField3Label;
  bool? isCustomField3Required;
  dynamic sellCustomField4Label;
  bool? isCustomField4Required;

  LabelsForSellCustomFields({
    this.sellCustomField1Label,
    this.isCustomField1Required,
    this.sellCustomField2Label,
    this.isCustomField2Required,
    this.sellCustomField3Label,
    this.isCustomField3Required,
    this.sellCustomField4Label,
    this.isCustomField4Required,
  });

  LabelsForSellCustomFields copyWith({
    dynamic sellCustomField1Label,
    bool? isCustomField1Required,
    dynamic sellCustomField2Label,
    bool? isCustomField2Required,
    dynamic sellCustomField3Label,
    bool? isCustomField3Required,
    dynamic sellCustomField4Label,
    bool? isCustomField4Required,
  }) =>
      LabelsForSellCustomFields(
        sellCustomField1Label:
            sellCustomField1Label ?? this.sellCustomField1Label,
        isCustomField1Required:
            isCustomField1Required ?? this.isCustomField1Required,
        sellCustomField2Label:
            sellCustomField2Label ?? this.sellCustomField2Label,
        isCustomField2Required:
            isCustomField2Required ?? this.isCustomField2Required,
        sellCustomField3Label:
            sellCustomField3Label ?? this.sellCustomField3Label,
        isCustomField3Required:
            isCustomField3Required ?? this.isCustomField3Required,
        sellCustomField4Label:
            sellCustomField4Label ?? this.sellCustomField4Label,
        isCustomField4Required:
            isCustomField4Required ?? this.isCustomField4Required,
      );

  factory LabelsForSellCustomFields.fromRawJson(String str) =>
      LabelsForSellCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForSellCustomFields.fromJson(Map<String, dynamic> json) =>
      LabelsForSellCustomFields(
        sellCustomField1Label: json["sell_custom_field_1_label"],
        isCustomField1Required: json["is_custom_field_1_required"],
        sellCustomField2Label: json["sell_custom_field_2_label"],
        isCustomField2Required: json["is_custom_field_2_required"],
        sellCustomField3Label: json["sell_custom_field_3_label"],
        isCustomField3Required: json["is_custom_field_3_required"],
        sellCustomField4Label: json["sell_custom_field_4_label"],
        isCustomField4Required: json["is_custom_field_4_required"],
      );

  Map<String, dynamic> toJson() => {
        "sell_custom_field_1_label": sellCustomField1Label,
        "is_custom_field_1_required": isCustomField1Required,
        "sell_custom_field_2_label": sellCustomField2Label,
        "is_custom_field_2_required": isCustomField2Required,
        "sell_custom_field_3_label": sellCustomField3Label,
        "is_custom_field_3_required": isCustomField3Required,
        "sell_custom_field_4_label": sellCustomField4Label,
        "is_custom_field_4_required": isCustomField4Required,
      };
}

class LabelsForTypesOfServiceCustomFields {
  dynamic typesOfServiceCustomField1Label;
  dynamic typesOfServiceCustomField2Label;
  dynamic typesOfServiceCustomField3Label;
  dynamic typesOfServiceCustomField4Label;
  dynamic typesOfServiceCustomField5Label;
  dynamic typesOfServiceCustomField6Label;

  LabelsForTypesOfServiceCustomFields({
    this.typesOfServiceCustomField1Label,
    this.typesOfServiceCustomField2Label,
    this.typesOfServiceCustomField3Label,
    this.typesOfServiceCustomField4Label,
    this.typesOfServiceCustomField5Label,
    this.typesOfServiceCustomField6Label,
  });

  LabelsForTypesOfServiceCustomFields copyWith({
    dynamic typesOfServiceCustomField1Label,
    dynamic typesOfServiceCustomField2Label,
    dynamic typesOfServiceCustomField3Label,
    dynamic typesOfServiceCustomField4Label,
    dynamic typesOfServiceCustomField5Label,
    dynamic typesOfServiceCustomField6Label,
  }) =>
      LabelsForTypesOfServiceCustomFields(
        typesOfServiceCustomField1Label: typesOfServiceCustomField1Label ??
            this.typesOfServiceCustomField1Label,
        typesOfServiceCustomField2Label: typesOfServiceCustomField2Label ??
            this.typesOfServiceCustomField2Label,
        typesOfServiceCustomField3Label: typesOfServiceCustomField3Label ??
            this.typesOfServiceCustomField3Label,
        typesOfServiceCustomField4Label: typesOfServiceCustomField4Label ??
            this.typesOfServiceCustomField4Label,
        typesOfServiceCustomField5Label: typesOfServiceCustomField5Label ??
            this.typesOfServiceCustomField5Label,
        typesOfServiceCustomField6Label: typesOfServiceCustomField6Label ??
            this.typesOfServiceCustomField6Label,
      );

  factory LabelsForTypesOfServiceCustomFields.fromRawJson(String str) =>
      LabelsForTypesOfServiceCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForTypesOfServiceCustomFields.fromJson(
          Map<String, dynamic> json) =>
      LabelsForTypesOfServiceCustomFields(
        typesOfServiceCustomField1Label:
            json["types_of_service_custom_field_1_label"],
        typesOfServiceCustomField2Label:
            json["types_of_service_custom_field_2_label"],
        typesOfServiceCustomField3Label:
            json["types_of_service_custom_field_3_label"],
        typesOfServiceCustomField4Label:
            json["types_of_service_custom_field_4_label"],
        typesOfServiceCustomField5Label:
            json["types_of_service_custom_field_5_label"],
        typesOfServiceCustomField6Label:
            json["types_of_service_custom_field_6_label"],
      );

  Map<String, dynamic> toJson() => {
        "types_of_service_custom_field_1_label":
            typesOfServiceCustomField1Label,
        "types_of_service_custom_field_2_label":
            typesOfServiceCustomField2Label,
        "types_of_service_custom_field_3_label":
            typesOfServiceCustomField3Label,
        "types_of_service_custom_field_4_label":
            typesOfServiceCustomField4Label,
        "types_of_service_custom_field_5_label":
            typesOfServiceCustomField5Label,
        "types_of_service_custom_field_6_label":
            typesOfServiceCustomField6Label,
      };
}

class LabelsForUserCustomFields {
  dynamic userCustomField1Label;
  dynamic userCustomField2Label;
  dynamic userCustomField3Label;
  dynamic userCustomField4Label;

  LabelsForUserCustomFields({
    this.userCustomField1Label,
    this.userCustomField2Label,
    this.userCustomField3Label,
    this.userCustomField4Label,
  });

  LabelsForUserCustomFields copyWith({
    dynamic userCustomField1Label,
    dynamic userCustomField2Label,
    dynamic userCustomField3Label,
    dynamic userCustomField4Label,
  }) =>
      LabelsForUserCustomFields(
        userCustomField1Label:
            userCustomField1Label ?? this.userCustomField1Label,
        userCustomField2Label:
            userCustomField2Label ?? this.userCustomField2Label,
        userCustomField3Label:
            userCustomField3Label ?? this.userCustomField3Label,
        userCustomField4Label:
            userCustomField4Label ?? this.userCustomField4Label,
      );

  factory LabelsForUserCustomFields.fromRawJson(String str) =>
      LabelsForUserCustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LabelsForUserCustomFields.fromJson(Map<String, dynamic> json) =>
      LabelsForUserCustomFields(
        userCustomField1Label: json["user_custom_field_1_label"],
        userCustomField2Label: json["user_custom_field_2_label"],
        userCustomField3Label: json["user_custom_field_3_label"],
        userCustomField4Label: json["user_custom_field_4_label"],
      );

  Map<String, dynamic> toJson() => {
        "user_custom_field_1_label": userCustomField1Label,
        "user_custom_field_2_label": userCustomField2Label,
        "user_custom_field_3_label": userCustomField3Label,
        "user_custom_field_4_label": userCustomField4Label,
      };
}

class Dashboard {
  int? stockExpiryAlertDays;

  Dashboard({
    this.stockExpiryAlertDays,
  });

  Dashboard copyWith({
    int? stockExpiryAlertDays,
  }) =>
      Dashboard(
        stockExpiryAlertDays: stockExpiryAlertDays ?? this.stockExpiryAlertDays,
      );

  factory Dashboard.fromRawJson(String str) =>
      Dashboard.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dashboard.fromJson(Map<String, dynamic> json) => Dashboard(
        stockExpiryAlertDays: json["stock_expiry_alert_days"],
      );

  Map<String, dynamic> toJson() => {
        "stock_expiry_alert_days": stockExpiryAlertDays,
      };
}

class EcommerceApiKey {
  LazadaApiKey? lazadaApiKey;
  ShopeeApiKey? shopeeApiKey;

  EcommerceApiKey({
    this.lazadaApiKey,
    this.shopeeApiKey,
  });

  EcommerceApiKey copyWith({
    LazadaApiKey? lazadaApiKey,
    ShopeeApiKey? shopeeApiKey,
  }) =>
      EcommerceApiKey(
        lazadaApiKey: lazadaApiKey ?? this.lazadaApiKey,
        shopeeApiKey: shopeeApiKey ?? this.shopeeApiKey,
      );

  factory EcommerceApiKey.fromRawJson(String str) =>
      EcommerceApiKey.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EcommerceApiKey.fromJson(Map<String, dynamic> json) =>
      EcommerceApiKey(
        lazadaApiKey: json["lazada_api_key"] == null
            ? null
            : LazadaApiKey.fromJson(json["lazada_api_key"]),
        shopeeApiKey: json["shopee_api_key"] == null
            ? null
            : ShopeeApiKey.fromJson(json["shopee_api_key"]),
      );

  Map<String, dynamic> toJson() => {
        "lazada_api_key": lazadaApiKey?.toJson(),
        "shopee_api_key": shopeeApiKey?.toJson(),
      };
}

class LazadaApiKey {
  dynamic lazadaClientId;
  dynamic lazadaSecretKey;

  LazadaApiKey({
    this.lazadaClientId,
    this.lazadaSecretKey,
  });

  LazadaApiKey copyWith({
    dynamic lazadaClientId,
    dynamic lazadaSecretKey,
  }) =>
      LazadaApiKey(
        lazadaClientId: lazadaClientId ?? this.lazadaClientId,
        lazadaSecretKey: lazadaSecretKey ?? this.lazadaSecretKey,
      );

  factory LazadaApiKey.fromRawJson(String str) =>
      LazadaApiKey.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LazadaApiKey.fromJson(Map<String, dynamic> json) => LazadaApiKey(
        lazadaClientId: json["lazada_client_id"],
        lazadaSecretKey: json["lazada_secret_key"],
      );

  Map<String, dynamic> toJson() => {
        "lazada_client_id": lazadaClientId,
        "lazada_secret_key": lazadaSecretKey,
      };
}

class ShopeeApiKey {
  dynamic shopeeClientId;
  dynamic shopeeSecretKey;

  ShopeeApiKey({
    this.shopeeClientId,
    this.shopeeSecretKey,
  });

  ShopeeApiKey copyWith({
    dynamic shopeeClientId,
    dynamic shopeeSecretKey,
  }) =>
      ShopeeApiKey(
        shopeeClientId: shopeeClientId ?? this.shopeeClientId,
        shopeeSecretKey: shopeeSecretKey ?? this.shopeeSecretKey,
      );

  factory ShopeeApiKey.fromRawJson(String str) =>
      ShopeeApiKey.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShopeeApiKey.fromJson(Map<String, dynamic> json) => ShopeeApiKey(
        shopeeClientId: json["shopee_client_id"],
        shopeeSecretKey: json["shopee_secret_key"],
      );

  Map<String, dynamic> toJson() => {
        "shopee_client_id": shopeeClientId,
        "shopee_secret_key": shopeeSecretKey,
      };
}

class EmailSetting {
  String? mailDriver;
  dynamic mailHost;
  dynamic mailPort;
  dynamic mailUsername;
  dynamic mailPassword;
  dynamic mailEncryption;
  dynamic mailFromAddress;
  dynamic mailFromName;
  dynamic mailFromStartLesson;

  EmailSetting({
    this.mailDriver,
    this.mailHost,
    this.mailPort,
    this.mailUsername,
    this.mailPassword,
    this.mailEncryption,
    this.mailFromAddress,
    this.mailFromName,
    this.mailFromStartLesson,
  });

  EmailSetting copyWith({
    String? mailDriver,
    dynamic mailHost,
    dynamic mailPort,
    dynamic mailUsername,
    dynamic mailPassword,
    dynamic mailEncryption,
    dynamic mailFromAddress,
    dynamic mailFromName,
    dynamic mailFromStartLesson,
  }) =>
      EmailSetting(
        mailDriver: mailDriver ?? this.mailDriver,
        mailHost: mailHost ?? this.mailHost,
        mailPort: mailPort ?? this.mailPort,
        mailUsername: mailUsername ?? this.mailUsername,
        mailPassword: mailPassword ?? this.mailPassword,
        mailEncryption: mailEncryption ?? this.mailEncryption,
        mailFromAddress: mailFromAddress ?? this.mailFromAddress,
        mailFromName: mailFromName ?? this.mailFromName,
        mailFromStartLesson: mailFromStartLesson ?? this.mailFromStartLesson,
      );

  factory EmailSetting.fromRawJson(String str) =>
      EmailSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmailSetting.fromJson(Map<String, dynamic> json) => EmailSetting(
        mailDriver: json["mail_driver"],
        mailHost: json["mail_host"],
        mailPort: json["mail_port"],
        mailUsername: json["mail_username"],
        mailPassword: json["mail_password"],
        mailEncryption: json["mail_encryption"],
        mailFromAddress: json["mail_from_address"],
        mailFromName: json["mail_from_name"],
        mailFromStartLesson: json["mail_from_start_lesson"],
      );

  Map<String, dynamic> toJson() => {
        "mail_driver": mailDriver,
        "mail_host": mailHost,
        "mail_port": mailPort,
        "mail_username": mailUsername,
        "mail_password": mailPassword,
        "mail_encryption": mailEncryption,
        "mail_from_address": mailFromAddress,
        "mail_from_name": mailFromName,
        "mail_from_start_lesson": mailFromStartLesson,
      };
}

class Pos {
  dynamic cashDenominations;
  AddKeyboardShortcuts? addKeyboardShortcuts;
  PosSettings? posSettings;
  WeighingScaleSetting? weighingScaleSetting;

  Pos({
    this.cashDenominations,
    this.addKeyboardShortcuts,
    this.posSettings,
    this.weighingScaleSetting,
  });

  Pos copyWith({
    dynamic cashDenominations,
    AddKeyboardShortcuts? addKeyboardShortcuts,
    PosSettings? posSettings,
    WeighingScaleSetting? weighingScaleSetting,
  }) =>
      Pos(
        cashDenominations: cashDenominations ?? this.cashDenominations,
        addKeyboardShortcuts: addKeyboardShortcuts ?? this.addKeyboardShortcuts,
        posSettings: posSettings ?? this.posSettings,
        weighingScaleSetting: weighingScaleSetting ?? this.weighingScaleSetting,
      );

  factory Pos.fromRawJson(String str) => Pos.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pos.fromJson(Map<String, dynamic> json) => Pos(
        cashDenominations: json["cash_denominations"],
        addKeyboardShortcuts: json["add_keyboard_shortcuts"] == null
            ? null
            : AddKeyboardShortcuts.fromJson(json["add_keyboard_shortcuts"]),
        posSettings: json["pos_settings"] == null
            ? null
            : PosSettings.fromJson(json["pos_settings"]),
        weighingScaleSetting: json["weighing_scale_setting"] == null
            ? null
            : WeighingScaleSetting.fromJson(json["weighing_scale_setting"]),
      );

  Map<String, dynamic> toJson() => {
        "cash_denominations": cashDenominations,
        "add_keyboard_shortcuts": addKeyboardShortcuts?.toJson(),
        "pos_settings": posSettings?.toJson(),
        "weighing_scale_setting": weighingScaleSetting?.toJson(),
      };
}

class AddKeyboardShortcuts {
  dynamic expressCheckout;
  dynamic payAndCkeckout;
  dynamic draft;
  dynamic cancel;
  dynamic recentProductQuantity;
  dynamic weighingScale;
  dynamic editDiscount;
  dynamic editOrderTax;
  dynamic addPaymentRow;
  dynamic finalizePayment;
  dynamic addNewProduct;

  AddKeyboardShortcuts({
    this.expressCheckout,
    this.payAndCkeckout,
    this.draft,
    this.cancel,
    this.recentProductQuantity,
    this.weighingScale,
    this.editDiscount,
    this.editOrderTax,
    this.addPaymentRow,
    this.finalizePayment,
    this.addNewProduct,
  });

  AddKeyboardShortcuts copyWith({
    dynamic expressCheckout,
    dynamic payAndCkeckout,
    dynamic draft,
    dynamic cancel,
    dynamic recentProductQuantity,
    dynamic weighingScale,
    dynamic editDiscount,
    dynamic editOrderTax,
    dynamic addPaymentRow,
    dynamic finalizePayment,
    dynamic addNewProduct,
  }) =>
      AddKeyboardShortcuts(
        expressCheckout: expressCheckout ?? this.expressCheckout,
        payAndCkeckout: payAndCkeckout ?? this.payAndCkeckout,
        draft: draft ?? this.draft,
        cancel: cancel ?? this.cancel,
        recentProductQuantity:
            recentProductQuantity ?? this.recentProductQuantity,
        weighingScale: weighingScale ?? this.weighingScale,
        editDiscount: editDiscount ?? this.editDiscount,
        editOrderTax: editOrderTax ?? this.editOrderTax,
        addPaymentRow: addPaymentRow ?? this.addPaymentRow,
        finalizePayment: finalizePayment ?? this.finalizePayment,
        addNewProduct: addNewProduct ?? this.addNewProduct,
      );

  factory AddKeyboardShortcuts.fromRawJson(String str) =>
      AddKeyboardShortcuts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddKeyboardShortcuts.fromJson(Map<String, dynamic> json) =>
      AddKeyboardShortcuts(
        expressCheckout: json["express_checkout"],
        payAndCkeckout: json["pay_and_ckeckout"],
        draft: json["draft"],
        cancel: json["cancel"],
        recentProductQuantity: json["recent_product_quantity"],
        weighingScale: json["weighing_scale"],
        editDiscount: json["edit_discount"],
        editOrderTax: json["edit_order_tax"],
        addPaymentRow: json["add_payment_row"],
        finalizePayment: json["finalize_payment"],
        addNewProduct: json["add_new_product"],
      );

  Map<String, dynamic> toJson() => {
        "express_checkout": expressCheckout,
        "pay_and_ckeckout": payAndCkeckout,
        "draft": draft,
        "cancel": cancel,
        "recent_product_quantity": recentProductQuantity,
        "weighing_scale": weighingScale,
        "edit_discount": editDiscount,
        "edit_order_tax": editOrderTax,
        "add_payment_row": addPaymentRow,
        "finalize_payment": finalizePayment,
        "add_new_product": addNewProduct,
      };
}

class PosSettings {
  bool? disablePayCheckout;
  bool? disableDraft;
  bool? disableExpressCheckout;
  bool? hideProductSuggestion;
  bool? hideRecentTrans;
  bool? disableDiscount;
  bool? disableOrderTax;
  bool? isPosSubtotalEditable;
  bool? disableSuspend;
  bool? enableTransactionDate;
  bool? inlineServiceStaff;
  bool? isServiceStaffRequired;
  bool? disableCreditSaleButton;
  bool? enableWeighingScale;
  bool? showInvoiceScheme;
  bool? showInvoiceLayout;
  bool? printOnSuspend;
  bool? showPricingOnProductSugesstion;

  PosSettings({
    this.disablePayCheckout,
    this.disableDraft,
    this.disableExpressCheckout,
    this.hideProductSuggestion,
    this.hideRecentTrans,
    this.disableDiscount,
    this.disableOrderTax,
    this.isPosSubtotalEditable,
    this.disableSuspend,
    this.enableTransactionDate,
    this.inlineServiceStaff,
    this.isServiceStaffRequired,
    this.disableCreditSaleButton,
    this.enableWeighingScale,
    this.showInvoiceScheme,
    this.showInvoiceLayout,
    this.printOnSuspend,
    this.showPricingOnProductSugesstion,
  });

  PosSettings copyWith({
    bool? disablePayCheckout,
    bool? disableDraft,
    bool? disableExpressCheckout,
    bool? hideProductSuggestion,
    bool? hideRecentTrans,
    bool? disableDiscount,
    bool? disableOrderTax,
    bool? isPosSubtotalEditable,
    bool? disableSuspend,
    bool? enableTransactionDate,
    bool? inlineServiceStaff,
    bool? isServiceStaffRequired,
    bool? disableCreditSaleButton,
    bool? enableWeighingScale,
    bool? showInvoiceScheme,
    bool? showInvoiceLayout,
    bool? printOnSuspend,
    bool? showPricingOnProductSugesstion,
  }) =>
      PosSettings(
        disablePayCheckout: disablePayCheckout ?? this.disablePayCheckout,
        disableDraft: disableDraft ?? this.disableDraft,
        disableExpressCheckout:
            disableExpressCheckout ?? this.disableExpressCheckout,
        hideProductSuggestion:
            hideProductSuggestion ?? this.hideProductSuggestion,
        hideRecentTrans: hideRecentTrans ?? this.hideRecentTrans,
        disableDiscount: disableDiscount ?? this.disableDiscount,
        disableOrderTax: disableOrderTax ?? this.disableOrderTax,
        isPosSubtotalEditable:
            isPosSubtotalEditable ?? this.isPosSubtotalEditable,
        disableSuspend: disableSuspend ?? this.disableSuspend,
        enableTransactionDate:
            enableTransactionDate ?? this.enableTransactionDate,
        inlineServiceStaff: inlineServiceStaff ?? this.inlineServiceStaff,
        isServiceStaffRequired:
            isServiceStaffRequired ?? this.isServiceStaffRequired,
        disableCreditSaleButton:
            disableCreditSaleButton ?? this.disableCreditSaleButton,
        enableWeighingScale: enableWeighingScale ?? this.enableWeighingScale,
        showInvoiceScheme: showInvoiceScheme ?? this.showInvoiceScheme,
        showInvoiceLayout: showInvoiceLayout ?? this.showInvoiceLayout,
        printOnSuspend: printOnSuspend ?? this.printOnSuspend,
        showPricingOnProductSugesstion: showPricingOnProductSugesstion ??
            this.showPricingOnProductSugesstion,
      );

  factory PosSettings.fromRawJson(String str) =>
      PosSettings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PosSettings.fromJson(Map<String, dynamic> json) => PosSettings(
        disablePayCheckout: json["disable_pay_checkout"],
        disableDraft: json["disable_draft"],
        disableExpressCheckout: json["disable_express_checkout"],
        hideProductSuggestion: json["hide_product_suggestion"],
        hideRecentTrans: json["hide_recent_trans"],
        disableDiscount: json["disable_discount"],
        disableOrderTax: json["disable_order_tax"],
        isPosSubtotalEditable: json["is_pos_subtotal_editable"],
        disableSuspend: json["disable_suspend"],
        enableTransactionDate: json["enable_transaction_date"],
        inlineServiceStaff: json["inline_service_staff"],
        isServiceStaffRequired: json["is_service_staff_required"],
        disableCreditSaleButton: json["disable_credit_sale_button"],
        enableWeighingScale: json["enable_weighing_scale"],
        showInvoiceScheme: json["show_invoice_scheme"],
        showInvoiceLayout: json["show_invoice_layout"],
        printOnSuspend: json["print_on_suspend"],
        showPricingOnProductSugesstion:
            json["show_pricing_on_product_sugesstion"],
      );

  Map<String, dynamic> toJson() => {
        "disable_pay_checkout": disablePayCheckout,
        "disable_draft": disableDraft,
        "disable_express_checkout": disableExpressCheckout,
        "hide_product_suggestion": hideProductSuggestion,
        "hide_recent_trans": hideRecentTrans,
        "disable_discount": disableDiscount,
        "disable_order_tax": disableOrderTax,
        "is_pos_subtotal_editable": isPosSubtotalEditable,
        "disable_suspend": disableSuspend,
        "enable_transaction_date": enableTransactionDate,
        "inline_service_staff": inlineServiceStaff,
        "is_service_staff_required": isServiceStaffRequired,
        "disable_credit_sale_button": disableCreditSaleButton,
        "enable_weighing_scale": enableWeighingScale,
        "show_invoice_scheme": showInvoiceScheme,
        "show_invoice_layout": showInvoiceLayout,
        "print_on_suspend": printOnSuspend,
        "show_pricing_on_product_sugesstion": showPricingOnProductSugesstion,
      };
}

class WeighingScaleSetting {
  dynamic weighingBarcodePrefix;
  String? weighingProductSkuLength;
  String? weighingQtyIntegerPartLength;
  String? weighingQtyFractionalPartLength;

  WeighingScaleSetting({
    this.weighingBarcodePrefix,
    this.weighingProductSkuLength,
    this.weighingQtyIntegerPartLength,
    this.weighingQtyFractionalPartLength,
  });

  WeighingScaleSetting copyWith({
    dynamic weighingBarcodePrefix,
    String? weighingProductSkuLength,
    String? weighingQtyIntegerPartLength,
    String? weighingQtyFractionalPartLength,
  }) =>
      WeighingScaleSetting(
        weighingBarcodePrefix:
            weighingBarcodePrefix ?? this.weighingBarcodePrefix,
        weighingProductSkuLength:
            weighingProductSkuLength ?? this.weighingProductSkuLength,
        weighingQtyIntegerPartLength:
            weighingQtyIntegerPartLength ?? this.weighingQtyIntegerPartLength,
        weighingQtyFractionalPartLength: weighingQtyFractionalPartLength ??
            this.weighingQtyFractionalPartLength,
      );

  factory WeighingScaleSetting.fromRawJson(String str) =>
      WeighingScaleSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeighingScaleSetting.fromJson(Map<String, dynamic> json) =>
      WeighingScaleSetting(
        weighingBarcodePrefix: json["weighing_barcode_prefix"],
        weighingProductSkuLength: json["weighing_product_sku_length"],
        weighingQtyIntegerPartLength: json["weighing_qty_integer_part_length"],
        weighingQtyFractionalPartLength:
            json["weighing_qty_fractional_part_length"],
      );

  Map<String, dynamic> toJson() => {
        "weighing_barcode_prefix": weighingBarcodePrefix,
        "weighing_product_sku_length": weighingProductSkuLength,
        "weighing_qty_integer_part_length": weighingQtyIntegerPartLength,
        "weighing_qty_fractional_part_length": weighingQtyFractionalPartLength,
      };
}

class Prefixes {
  String? purchasePrefix;
  String? purchaseReturnPrefix;
  String? purchaseOrderPrefix;
  String? stockTransferPrefix;
  String? stockAdjustmentPrefix;
  String? sellReturnPrefix;
  String? expensesPrefix;
  String? contactsPrefix;
  String? purchasePayment;
  String? sellPayment;
  String? expensePayment;
  String? businessLocationPrefix;
  String? usernamePrefix;
  String? subscriptionPrefix;
  String? draftPrefix;
  String? salesOrderPrefix;

  Prefixes({
    this.purchasePrefix,
    this.purchaseReturnPrefix,
    this.purchaseOrderPrefix,
    this.stockTransferPrefix,
    this.stockAdjustmentPrefix,
    this.sellReturnPrefix,
    this.expensesPrefix,
    this.contactsPrefix,
    this.purchasePayment,
    this.sellPayment,
    this.expensePayment,
    this.businessLocationPrefix,
    this.usernamePrefix,
    this.subscriptionPrefix,
    this.draftPrefix,
    this.salesOrderPrefix,
  });

  Prefixes copyWith({
    String? purchasePrefix,
    String? purchaseReturnPrefix,
    String? purchaseOrderPrefix,
    String? stockTransferPrefix,
    String? stockAdjustmentPrefix,
    String? sellReturnPrefix,
    String? expensesPrefix,
    String? contactsPrefix,
    String? purchasePayment,
    String? sellPayment,
    String? expensePayment,
    String? businessLocationPrefix,
    String? usernamePrefix,
    String? subscriptionPrefix,
    String? draftPrefix,
    String? salesOrderPrefix,
  }) =>
      Prefixes(
        purchasePrefix: purchasePrefix ?? this.purchasePrefix,
        purchaseReturnPrefix: purchaseReturnPrefix ?? this.purchaseReturnPrefix,
        purchaseOrderPrefix: purchaseOrderPrefix ?? this.purchaseOrderPrefix,
        stockTransferPrefix: stockTransferPrefix ?? this.stockTransferPrefix,
        stockAdjustmentPrefix:
            stockAdjustmentPrefix ?? this.stockAdjustmentPrefix,
        sellReturnPrefix: sellReturnPrefix ?? this.sellReturnPrefix,
        expensesPrefix: expensesPrefix ?? this.expensesPrefix,
        contactsPrefix: contactsPrefix ?? this.contactsPrefix,
        purchasePayment: purchasePayment ?? this.purchasePayment,
        sellPayment: sellPayment ?? this.sellPayment,
        expensePayment: expensePayment ?? this.expensePayment,
        businessLocationPrefix:
            businessLocationPrefix ?? this.businessLocationPrefix,
        usernamePrefix: usernamePrefix ?? this.usernamePrefix,
        subscriptionPrefix: subscriptionPrefix ?? this.subscriptionPrefix,
        draftPrefix: draftPrefix ?? this.draftPrefix,
        salesOrderPrefix: salesOrderPrefix ?? this.salesOrderPrefix,
      );

  factory Prefixes.fromRawJson(String str) =>
      Prefixes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Prefixes.fromJson(Map<String, dynamic> json) => Prefixes(
        purchasePrefix: json["purchase_prefix"],
        purchaseReturnPrefix: json["purchase_return_prefix"],
        purchaseOrderPrefix: json["purchase_order_prefix"],
        stockTransferPrefix: json["stock_transfer_prefix"],
        stockAdjustmentPrefix: json["stock_adjustment_prefix"],
        sellReturnPrefix: json["sell_return_prefix"],
        expensesPrefix: json["expenses_prefix"],
        contactsPrefix: json["contacts_prefix"],
        purchasePayment: json["purchase_payment"],
        sellPayment: json["sell_payment"],
        expensePayment: json["expense_payment"],
        businessLocationPrefix: json["business_location_prefix"],
        usernamePrefix: json["username_prefix"],
        subscriptionPrefix: json["subscription_prefix"],
        draftPrefix: json["draft_prefix"],
        salesOrderPrefix: json["sales_order_prefix"],
      );

  Map<String, dynamic> toJson() => {
        "purchase_prefix": purchasePrefix,
        "purchase_return_prefix": purchaseReturnPrefix,
        "purchase_order_prefix": purchaseOrderPrefix,
        "stock_transfer_prefix": stockTransferPrefix,
        "stock_adjustment_prefix": stockAdjustmentPrefix,
        "sell_return_prefix": sellReturnPrefix,
        "expenses_prefix": expensesPrefix,
        "contacts_prefix": contactsPrefix,
        "purchase_payment": purchasePayment,
        "sell_payment": sellPayment,
        "expense_payment": expensePayment,
        "business_location_prefix": businessLocationPrefix,
        "username_prefix": usernamePrefix,
        "subscription_prefix": subscriptionPrefix,
        "draft_prefix": draftPrefix,
        "sales_order_prefix": salesOrderPrefix,
      };
}

class Product {
  String? skuPrefix;
  bool? enableProductExpiry;
  String? expiryType;
  String? onProductExpiry;
  int? stopSellingBefore;
  bool? enableBrand;
  bool? enableCategory;
  bool? enableSubCategory;
  bool? enablePriceTax;
  int? defaultUnit;
  String? nameUnit;
  bool? enableSubUnits;
  bool? enableRacks;
  bool? enableRow;
  bool? enablePosition;
  bool? enableProductWarranty;

  Product({
    this.skuPrefix,
    this.enableProductExpiry,
    this.expiryType,
    this.onProductExpiry,
    this.stopSellingBefore,
    this.enableBrand,
    this.enableCategory,
    this.enableSubCategory,
    this.enablePriceTax,
    this.defaultUnit,
    this.nameUnit,
    this.enableSubUnits,
    this.enableRacks,
    this.enableRow,
    this.enablePosition,
    this.enableProductWarranty,
  });

  Product copyWith({
    String? skuPrefix,
    bool? enableProductExpiry,
    String? expiryType,
    String? onProductExpiry,
    int? stopSellingBefore,
    bool? enableBrand,
    bool? enableCategory,
    bool? enableSubCategory,
    bool? enablePriceTax,
    int? defaultUnit,
    String? nameUnit,
    bool? enableSubUnits,
    bool? enableRacks,
    bool? enableRow,
    bool? enablePosition,
    bool? enableProductWarranty,
  }) =>
      Product(
        skuPrefix: skuPrefix ?? this.skuPrefix,
        enableProductExpiry: enableProductExpiry ?? this.enableProductExpiry,
        expiryType: expiryType ?? this.expiryType,
        onProductExpiry: onProductExpiry ?? this.onProductExpiry,
        stopSellingBefore: stopSellingBefore ?? this.stopSellingBefore,
        enableBrand: enableBrand ?? this.enableBrand,
        enableCategory: enableCategory ?? this.enableCategory,
        enableSubCategory: enableSubCategory ?? this.enableSubCategory,
        enablePriceTax: enablePriceTax ?? this.enablePriceTax,
        defaultUnit: defaultUnit ?? this.defaultUnit,
        nameUnit: nameUnit ?? this.nameUnit,
        enableSubUnits: enableSubUnits ?? this.enableSubUnits,
        enableRacks: enableRacks ?? this.enableRacks,
        enableRow: enableRow ?? this.enableRow,
        enablePosition: enablePosition ?? this.enablePosition,
        enableProductWarranty:
            enableProductWarranty ?? this.enableProductWarranty,
      );

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        skuPrefix: json["sku_prefix"],
        enableProductExpiry: json["enable_product_expiry"],
        expiryType: json["expiry_type"],
        onProductExpiry: json["on_product_expiry"],
        stopSellingBefore: json["stop_selling_before"],
        enableBrand: json["enable_brand"],
        enableCategory: json["enable_category"],
        enableSubCategory: json["enable_sub_category"],
        enablePriceTax: json["enable_price_tax"],
        defaultUnit: json["default_unit"],
        nameUnit: json["name_unit"],
        enableSubUnits: json["enable_sub_units"],
        enableRacks: json["enable_racks"],
        enableRow: json["enable_row"],
        enablePosition: json["enable_position"],
        enableProductWarranty: json["enable_product_warranty"],
      );

  Map<String, dynamic> toJson() => {
        "sku_prefix": skuPrefix,
        "enable_product_expiry": enableProductExpiry,
        "expiry_type": expiryType,
        "on_product_expiry": onProductExpiry,
        "stop_selling_before": stopSellingBefore,
        "enable_brand": enableBrand,
        "enable_category": enableCategory,
        "enable_sub_category": enableSubCategory,
        "enable_price_tax": enablePriceTax,
        "default_unit": defaultUnit,
        "name_unit": nameUnit,
        "enable_sub_units": enableSubUnits,
        "enable_racks": enableRacks,
        "enable_row": enableRow,
        "enable_position": enablePosition,
        "enable_product_warranty": enableProductWarranty,
      };
}

class Purchases {
  bool? enableEditingProductFromPurchase;
  bool? enablePurchaseStatus;
  bool? enableLotNumber;
  bool? enablePurchaseOrder;

  Purchases({
    this.enableEditingProductFromPurchase,
    this.enablePurchaseStatus,
    this.enableLotNumber,
    this.enablePurchaseOrder,
  });

  Purchases copyWith({
    bool? enableEditingProductFromPurchase,
    bool? enablePurchaseStatus,
    bool? enableLotNumber,
    bool? enablePurchaseOrder,
  }) =>
      Purchases(
        enableEditingProductFromPurchase: enableEditingProductFromPurchase ??
            this.enableEditingProductFromPurchase,
        enablePurchaseStatus: enablePurchaseStatus ?? this.enablePurchaseStatus,
        enableLotNumber: enableLotNumber ?? this.enableLotNumber,
        enablePurchaseOrder: enablePurchaseOrder ?? this.enablePurchaseOrder,
      );

  factory Purchases.fromRawJson(String str) =>
      Purchases.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Purchases.fromJson(Map<String, dynamic> json) => Purchases(
        enableEditingProductFromPurchase:
            json["enable_editing_product_from_purchase"],
        enablePurchaseStatus: json["enable_purchase_status"],
        enableLotNumber: json["enable_lot_number"],
        enablePurchaseOrder: json["enable_purchase_order"],
      );

  Map<String, dynamic> toJson() => {
        "enable_editing_product_from_purchase":
            enableEditingProductFromPurchase,
        "enable_purchase_status": enablePurchaseStatus,
        "enable_lot_number": enableLotNumber,
        "enable_purchase_order": enablePurchaseOrder,
      };
}

class RewardPointSetting {
  bool? enableRewardPoint;
  dynamic rewardPointName;
  EarningPointsSetting? earningPointsSetting;
  RedeemPointsSetting? redeemPointsSetting;

  RewardPointSetting({
    this.enableRewardPoint,
    this.rewardPointName,
    this.earningPointsSetting,
    this.redeemPointsSetting,
  });

  RewardPointSetting copyWith({
    bool? enableRewardPoint,
    dynamic rewardPointName,
    EarningPointsSetting? earningPointsSetting,
    RedeemPointsSetting? redeemPointsSetting,
  }) =>
      RewardPointSetting(
        enableRewardPoint: enableRewardPoint ?? this.enableRewardPoint,
        rewardPointName: rewardPointName ?? this.rewardPointName,
        earningPointsSetting: earningPointsSetting ?? this.earningPointsSetting,
        redeemPointsSetting: redeemPointsSetting ?? this.redeemPointsSetting,
      );

  factory RewardPointSetting.fromRawJson(String str) =>
      RewardPointSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RewardPointSetting.fromJson(Map<String, dynamic> json) =>
      RewardPointSetting(
        enableRewardPoint: json["enable_reward_point"],
        rewardPointName: json["reward_point_name"],
        earningPointsSetting: json["earning_points_setting"] == null
            ? null
            : EarningPointsSetting.fromJson(json["earning_points_setting"]),
        redeemPointsSetting: json["redeem_points_setting"] == null
            ? null
            : RedeemPointsSetting.fromJson(json["redeem_points_setting"]),
      );

  Map<String, dynamic> toJson() => {
        "enable_reward_point": enableRewardPoint,
        "reward_point_name": rewardPointName,
        "earning_points_setting": earningPointsSetting?.toJson(),
        "redeem_points_setting": redeemPointsSetting?.toJson(),
      };
}

class EarningPointsSetting {
  String? amountForUnitRewardPoint;
  String? minOrderTotalForRewardPoint;
  dynamic maxRewardPointPerOrder;

  EarningPointsSetting({
    this.amountForUnitRewardPoint,
    this.minOrderTotalForRewardPoint,
    this.maxRewardPointPerOrder,
  });

  EarningPointsSetting copyWith({
    String? amountForUnitRewardPoint,
    String? minOrderTotalForRewardPoint,
    dynamic maxRewardPointPerOrder,
  }) =>
      EarningPointsSetting(
        amountForUnitRewardPoint:
            amountForUnitRewardPoint ?? this.amountForUnitRewardPoint,
        minOrderTotalForRewardPoint:
            minOrderTotalForRewardPoint ?? this.minOrderTotalForRewardPoint,
        maxRewardPointPerOrder:
            maxRewardPointPerOrder ?? this.maxRewardPointPerOrder,
      );

  factory EarningPointsSetting.fromRawJson(String str) =>
      EarningPointsSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EarningPointsSetting.fromJson(Map<String, dynamic> json) =>
      EarningPointsSetting(
        amountForUnitRewardPoint: json["amount_for_unit_reward_point"],
        minOrderTotalForRewardPoint: json["min_order_total_for_reward_point"],
        maxRewardPointPerOrder: json["max_reward_point_per_order"],
      );

  Map<String, dynamic> toJson() => {
        "amount_for_unit_reward_point": amountForUnitRewardPoint,
        "min_order_total_for_reward_point": minOrderTotalForRewardPoint,
        "max_reward_point_per_order": maxRewardPointPerOrder,
      };
}

class RedeemPointsSetting {
  String? redeemAmountPerUnitRewardPoint;
  String? minOrderTotalForRedeem;
  dynamic minRedeemPoint;
  dynamic maxRedeemPoint;
  dynamic rpExpiryPeriod;
  String? rpExpiryType;

  RedeemPointsSetting({
    this.redeemAmountPerUnitRewardPoint,
    this.minOrderTotalForRedeem,
    this.minRedeemPoint,
    this.maxRedeemPoint,
    this.rpExpiryPeriod,
    this.rpExpiryType,
  });

  RedeemPointsSetting copyWith({
    String? redeemAmountPerUnitRewardPoint,
    String? minOrderTotalForRedeem,
    dynamic minRedeemPoint,
    dynamic maxRedeemPoint,
    dynamic rpExpiryPeriod,
    String? rpExpiryType,
  }) =>
      RedeemPointsSetting(
        redeemAmountPerUnitRewardPoint: redeemAmountPerUnitRewardPoint ??
            this.redeemAmountPerUnitRewardPoint,
        minOrderTotalForRedeem:
            minOrderTotalForRedeem ?? this.minOrderTotalForRedeem,
        minRedeemPoint: minRedeemPoint ?? this.minRedeemPoint,
        maxRedeemPoint: maxRedeemPoint ?? this.maxRedeemPoint,
        rpExpiryPeriod: rpExpiryPeriod ?? this.rpExpiryPeriod,
        rpExpiryType: rpExpiryType ?? this.rpExpiryType,
      );

  factory RedeemPointsSetting.fromRawJson(String str) =>
      RedeemPointsSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RedeemPointsSetting.fromJson(Map<String, dynamic> json) =>
      RedeemPointsSetting(
        redeemAmountPerUnitRewardPoint:
            json["redeem_amount_per_unit_reward_point"],
        minOrderTotalForRedeem: json["min_order_total_for_redeem"],
        minRedeemPoint: json["min_redeem_point"],
        maxRedeemPoint: json["max_redeem_point"],
        rpExpiryPeriod: json["rp_expiry_period"],
        rpExpiryType: json["rp_expiry_type"],
      );

  Map<String, dynamic> toJson() => {
        "redeem_amount_per_unit_reward_point": redeemAmountPerUnitRewardPoint,
        "min_order_total_for_redeem": minOrderTotalForRedeem,
        "min_redeem_point": minRedeemPoint,
        "max_redeem_point": maxRedeemPoint,
        "rp_expiry_period": rpExpiryPeriod,
        "rp_expiry_type": rpExpiryType,
      };
}

class Sale {
  String? defaultSalesDiscount;
  int? defaultSalesTax;
  String? sellPriceTax;
  int? salesItemAdditionMethod;
  dynamic amountRoundingMethod;
  bool? salePriceIsMinimumSalePrice;
  bool? allowOverselling;
  bool? enableSalesOrder;
  bool? isPayTermRequired;
  CommissionAgent? commissionAgent;
  PaymentLink? paymentLink;

  Sale({
    this.defaultSalesDiscount,
    this.defaultSalesTax,
    this.sellPriceTax,
    this.salesItemAdditionMethod,
    this.amountRoundingMethod,
    this.salePriceIsMinimumSalePrice,
    this.allowOverselling,
    this.enableSalesOrder,
    this.isPayTermRequired,
    this.commissionAgent,
    this.paymentLink,
  });

  Sale copyWith({
    String? defaultSalesDiscount,
    int? defaultSalesTax,
    String? sellPriceTax,
    int? salesItemAdditionMethod,
    dynamic amountRoundingMethod,
    bool? salePriceIsMinimumSalePrice,
    bool? allowOverselling,
    bool? enableSalesOrder,
    bool? isPayTermRequired,
    CommissionAgent? commissionAgent,
    PaymentLink? paymentLink,
  }) =>
      Sale(
        defaultSalesDiscount: defaultSalesDiscount ?? this.defaultSalesDiscount,
        defaultSalesTax: defaultSalesTax ?? this.defaultSalesTax,
        sellPriceTax: sellPriceTax ?? this.sellPriceTax,
        salesItemAdditionMethod:
            salesItemAdditionMethod ?? this.salesItemAdditionMethod,
        amountRoundingMethod: amountRoundingMethod ?? this.amountRoundingMethod,
        salePriceIsMinimumSalePrice:
            salePriceIsMinimumSalePrice ?? this.salePriceIsMinimumSalePrice,
        allowOverselling: allowOverselling ?? this.allowOverselling,
        enableSalesOrder: enableSalesOrder ?? this.enableSalesOrder,
        isPayTermRequired: isPayTermRequired ?? this.isPayTermRequired,
        commissionAgent: commissionAgent ?? this.commissionAgent,
        paymentLink: paymentLink ?? this.paymentLink,
      );

  factory Sale.fromRawJson(String str) => Sale.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Sale.fromJson(Map<String, dynamic> json) => Sale(
        defaultSalesDiscount: json["default_sales_discount"],
        defaultSalesTax: json["default_sales_tax"],
        sellPriceTax: json["sell_price_tax"],
        salesItemAdditionMethod: json["sales_item_addition_method"],
        amountRoundingMethod: json["amount_rounding_method"],
        salePriceIsMinimumSalePrice: json["sale_price_is_minimum_sale_price"],
        allowOverselling: json["allow_overselling"],
        enableSalesOrder: json["enable_sales_order"],
        isPayTermRequired: json["is_pay_term_required"],
        commissionAgent: json["commission_agent"] == null
            ? null
            : CommissionAgent.fromJson(json["commission_agent"]),
        paymentLink: json["payment_link"] == null
            ? null
            : PaymentLink.fromJson(json["payment_link"]),
      );

  Map<String, dynamic> toJson() => {
        "default_sales_discount": defaultSalesDiscount,
        "default_sales_tax": defaultSalesTax,
        "sell_price_tax": sellPriceTax,
        "sales_item_addition_method": salesItemAdditionMethod,
        "amount_rounding_method": amountRoundingMethod,
        "sale_price_is_minimum_sale_price": salePriceIsMinimumSalePrice,
        "allow_overselling": allowOverselling,
        "enable_sales_order": enableSalesOrder,
        "is_pay_term_required": isPayTermRequired,
        "commission_agent": commissionAgent?.toJson(),
        "payment_link": paymentLink?.toJson(),
      };
}

class CommissionAgent {
  dynamic salesCommissionAgent;
  String? commissionCalculationType;
  bool? isCommissionAgentRequired;

  CommissionAgent({
    this.salesCommissionAgent,
    this.commissionCalculationType,
    this.isCommissionAgentRequired,
  });

  CommissionAgent copyWith({
    dynamic salesCommissionAgent,
    String? commissionCalculationType,
    bool? isCommissionAgentRequired,
  }) =>
      CommissionAgent(
        salesCommissionAgent: salesCommissionAgent ?? this.salesCommissionAgent,
        commissionCalculationType:
            commissionCalculationType ?? this.commissionCalculationType,
        isCommissionAgentRequired:
            isCommissionAgentRequired ?? this.isCommissionAgentRequired,
      );

  factory CommissionAgent.fromRawJson(String str) =>
      CommissionAgent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommissionAgent.fromJson(Map<String, dynamic> json) =>
      CommissionAgent(
        salesCommissionAgent: json["sales_commission_agent"],
        commissionCalculationType: json["commission_calculation_type"],
        isCommissionAgentRequired: json["is_commission_agent_required"],
      );

  Map<String, dynamic> toJson() => {
        "sales_commission_agent": salesCommissionAgent,
        "commission_calculation_type": commissionCalculationType,
        "is_commission_agent_required": isCommissionAgentRequired,
      };
}

class PaymentLink {
  bool? enablePaymentLink;
  dynamic razorPayKeyId;
  dynamic razorPayKeySecret;
  dynamic stripePublicKey;
  dynamic stripeSecretKey;

  PaymentLink({
    this.enablePaymentLink,
    this.razorPayKeyId,
    this.razorPayKeySecret,
    this.stripePublicKey,
    this.stripeSecretKey,
  });

  PaymentLink copyWith({
    bool? enablePaymentLink,
    dynamic razorPayKeyId,
    dynamic razorPayKeySecret,
    dynamic stripePublicKey,
    dynamic stripeSecretKey,
  }) =>
      PaymentLink(
        enablePaymentLink: enablePaymentLink ?? this.enablePaymentLink,
        razorPayKeyId: razorPayKeyId ?? this.razorPayKeyId,
        razorPayKeySecret: razorPayKeySecret ?? this.razorPayKeySecret,
        stripePublicKey: stripePublicKey ?? this.stripePublicKey,
        stripeSecretKey: stripeSecretKey ?? this.stripeSecretKey,
      );

  factory PaymentLink.fromRawJson(String str) =>
      PaymentLink.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentLink.fromJson(Map<String, dynamic> json) => PaymentLink(
        enablePaymentLink: json["enable_payment_link"],
        razorPayKeyId: json["razor_pay_key_id"],
        razorPayKeySecret: json["razor_pay_key_secret"],
        stripePublicKey: json["stripe_public_key"],
        stripeSecretKey: json["stripe_secret_key"],
      );

  Map<String, dynamic> toJson() => {
        "enable_payment_link": enablePaymentLink,
        "razor_pay_key_id": razorPayKeyId,
        "razor_pay_key_secret": razorPayKeySecret,
        "stripe_public_key": stripePublicKey,
        "stripe_secret_key": stripeSecretKey,
      };
}

class SmsSetting {
  String? smsService;
  String? smsStartLesson;
  dynamic nexmoKey;
  dynamic nexmoSecret;
  dynamic nexmoFrom;
  dynamic twilioSid;
  dynamic twilioToken;
  dynamic twilioFrom;
  String? speedToken;
  String? speedFrom;
  dynamic smsSettingsUrl;
  String? sendToParamName;
  String? msgParamName;
  String? requestMethod;
  dynamic smsSettingsHeaderKey1;
  dynamic smsSettingsHeaderVal1;
  dynamic smsSettingsHeaderKey2;
  dynamic smsSettingsHeaderVal2;
  dynamic smsSettingsHeaderKey3;
  dynamic smsSettingsHeaderVal3;
  dynamic smsSettingsParamKey1;
  dynamic smsSettingsParamVal1;
  dynamic smsSettingsParamKey2;
  dynamic smsSettingsParamVal2;
  dynamic smsSettingsParamKey3;
  dynamic smsSettingsParamVal3;
  dynamic smsSettingsParamKey4;
  dynamic smsSettingsParamVal4;
  dynamic smsSettingsParamKey5;
  dynamic smsSettingsParamVal5;
  dynamic smsSettingsParamKey6;
  dynamic smsSettingsParamVal6;
  dynamic smsSettingsParamKey7;
  dynamic smsSettingsParamVal7;
  dynamic smsSettingsParamKey8;
  dynamic smsSettingsParamVal8;
  dynamic smsSettingsParamKey9;
  dynamic smsSettingsParamVal9;
  dynamic smsSettingsParamKey10;
  dynamic smsSettingsParamVal10;

  SmsSetting({
    this.smsService,
    this.smsStartLesson,
    this.nexmoKey,
    this.nexmoSecret,
    this.nexmoFrom,
    this.twilioSid,
    this.twilioToken,
    this.twilioFrom,
    this.speedToken,
    this.speedFrom,
    this.smsSettingsUrl,
    this.sendToParamName,
    this.msgParamName,
    this.requestMethod,
    this.smsSettingsHeaderKey1,
    this.smsSettingsHeaderVal1,
    this.smsSettingsHeaderKey2,
    this.smsSettingsHeaderVal2,
    this.smsSettingsHeaderKey3,
    this.smsSettingsHeaderVal3,
    this.smsSettingsParamKey1,
    this.smsSettingsParamVal1,
    this.smsSettingsParamKey2,
    this.smsSettingsParamVal2,
    this.smsSettingsParamKey3,
    this.smsSettingsParamVal3,
    this.smsSettingsParamKey4,
    this.smsSettingsParamVal4,
    this.smsSettingsParamKey5,
    this.smsSettingsParamVal5,
    this.smsSettingsParamKey6,
    this.smsSettingsParamVal6,
    this.smsSettingsParamKey7,
    this.smsSettingsParamVal7,
    this.smsSettingsParamKey8,
    this.smsSettingsParamVal8,
    this.smsSettingsParamKey9,
    this.smsSettingsParamVal9,
    this.smsSettingsParamKey10,
    this.smsSettingsParamVal10,
  });

  SmsSetting copyWith({
    String? smsService,
    String? smsStartLesson,
    dynamic nexmoKey,
    dynamic nexmoSecret,
    dynamic nexmoFrom,
    dynamic twilioSid,
    dynamic twilioToken,
    dynamic twilioFrom,
    String? speedToken,
    String? speedFrom,
    dynamic smsSettingsUrl,
    String? sendToParamName,
    String? msgParamName,
    String? requestMethod,
    dynamic smsSettingsHeaderKey1,
    dynamic smsSettingsHeaderVal1,
    dynamic smsSettingsHeaderKey2,
    dynamic smsSettingsHeaderVal2,
    dynamic smsSettingsHeaderKey3,
    dynamic smsSettingsHeaderVal3,
    dynamic smsSettingsParamKey1,
    dynamic smsSettingsParamVal1,
    dynamic smsSettingsParamKey2,
    dynamic smsSettingsParamVal2,
    dynamic smsSettingsParamKey3,
    dynamic smsSettingsParamVal3,
    dynamic smsSettingsParamKey4,
    dynamic smsSettingsParamVal4,
    dynamic smsSettingsParamKey5,
    dynamic smsSettingsParamVal5,
    dynamic smsSettingsParamKey6,
    dynamic smsSettingsParamVal6,
    dynamic smsSettingsParamKey7,
    dynamic smsSettingsParamVal7,
    dynamic smsSettingsParamKey8,
    dynamic smsSettingsParamVal8,
    dynamic smsSettingsParamKey9,
    dynamic smsSettingsParamVal9,
    dynamic smsSettingsParamKey10,
    dynamic smsSettingsParamVal10,
  }) =>
      SmsSetting(
        smsService: smsService ?? this.smsService,
        smsStartLesson: smsStartLesson ?? this.smsStartLesson,
        nexmoKey: nexmoKey ?? this.nexmoKey,
        nexmoSecret: nexmoSecret ?? this.nexmoSecret,
        nexmoFrom: nexmoFrom ?? this.nexmoFrom,
        twilioSid: twilioSid ?? this.twilioSid,
        twilioToken: twilioToken ?? this.twilioToken,
        twilioFrom: twilioFrom ?? this.twilioFrom,
        speedToken: speedToken ?? this.speedToken,
        speedFrom: speedFrom ?? this.speedFrom,
        smsSettingsUrl: smsSettingsUrl ?? this.smsSettingsUrl,
        sendToParamName: sendToParamName ?? this.sendToParamName,
        msgParamName: msgParamName ?? this.msgParamName,
        requestMethod: requestMethod ?? this.requestMethod,
        smsSettingsHeaderKey1:
            smsSettingsHeaderKey1 ?? this.smsSettingsHeaderKey1,
        smsSettingsHeaderVal1:
            smsSettingsHeaderVal1 ?? this.smsSettingsHeaderVal1,
        smsSettingsHeaderKey2:
            smsSettingsHeaderKey2 ?? this.smsSettingsHeaderKey2,
        smsSettingsHeaderVal2:
            smsSettingsHeaderVal2 ?? this.smsSettingsHeaderVal2,
        smsSettingsHeaderKey3:
            smsSettingsHeaderKey3 ?? this.smsSettingsHeaderKey3,
        smsSettingsHeaderVal3:
            smsSettingsHeaderVal3 ?? this.smsSettingsHeaderVal3,
        smsSettingsParamKey1: smsSettingsParamKey1 ?? this.smsSettingsParamKey1,
        smsSettingsParamVal1: smsSettingsParamVal1 ?? this.smsSettingsParamVal1,
        smsSettingsParamKey2: smsSettingsParamKey2 ?? this.smsSettingsParamKey2,
        smsSettingsParamVal2: smsSettingsParamVal2 ?? this.smsSettingsParamVal2,
        smsSettingsParamKey3: smsSettingsParamKey3 ?? this.smsSettingsParamKey3,
        smsSettingsParamVal3: smsSettingsParamVal3 ?? this.smsSettingsParamVal3,
        smsSettingsParamKey4: smsSettingsParamKey4 ?? this.smsSettingsParamKey4,
        smsSettingsParamVal4: smsSettingsParamVal4 ?? this.smsSettingsParamVal4,
        smsSettingsParamKey5: smsSettingsParamKey5 ?? this.smsSettingsParamKey5,
        smsSettingsParamVal5: smsSettingsParamVal5 ?? this.smsSettingsParamVal5,
        smsSettingsParamKey6: smsSettingsParamKey6 ?? this.smsSettingsParamKey6,
        smsSettingsParamVal6: smsSettingsParamVal6 ?? this.smsSettingsParamVal6,
        smsSettingsParamKey7: smsSettingsParamKey7 ?? this.smsSettingsParamKey7,
        smsSettingsParamVal7: smsSettingsParamVal7 ?? this.smsSettingsParamVal7,
        smsSettingsParamKey8: smsSettingsParamKey8 ?? this.smsSettingsParamKey8,
        smsSettingsParamVal8: smsSettingsParamVal8 ?? this.smsSettingsParamVal8,
        smsSettingsParamKey9: smsSettingsParamKey9 ?? this.smsSettingsParamKey9,
        smsSettingsParamVal9: smsSettingsParamVal9 ?? this.smsSettingsParamVal9,
        smsSettingsParamKey10:
            smsSettingsParamKey10 ?? this.smsSettingsParamKey10,
        smsSettingsParamVal10:
            smsSettingsParamVal10 ?? this.smsSettingsParamVal10,
      );

  factory SmsSetting.fromRawJson(String str) =>
      SmsSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SmsSetting.fromJson(Map<String, dynamic> json) => SmsSetting(
        smsService: json["sms_service"],
        smsStartLesson: json["sms_start_lesson"],
        nexmoKey: json["nexmo_key"],
        nexmoSecret: json["nexmo_secret"],
        nexmoFrom: json["nexmo_from"],
        twilioSid: json["twilio_sid"],
        twilioToken: json["twilio_token"],
        twilioFrom: json["twilio_from"],
        speedToken: json["speed_token"],
        speedFrom: json["speed_from"],
        smsSettingsUrl: json["sms_settings_url"],
        sendToParamName: json["send_to_param_name"],
        msgParamName: json["msg_param_name"],
        requestMethod: json["request_method"],
        smsSettingsHeaderKey1: json["sms_settings_header_key1"],
        smsSettingsHeaderVal1: json["sms_settings_header_val1"],
        smsSettingsHeaderKey2: json["sms_settings_header_key2"],
        smsSettingsHeaderVal2: json["sms_settings_header_val2"],
        smsSettingsHeaderKey3: json["sms_settings_header_key3"],
        smsSettingsHeaderVal3: json["sms_settings_header_val3"],
        smsSettingsParamKey1: json["sms_settings_param_key1"],
        smsSettingsParamVal1: json["sms_settings_param_val1"],
        smsSettingsParamKey2: json["sms_settings_param_key2"],
        smsSettingsParamVal2: json["sms_settings_param_val2"],
        smsSettingsParamKey3: json["sms_settings_param_key3"],
        smsSettingsParamVal3: json["sms_settings_param_val3"],
        smsSettingsParamKey4: json["sms_settings_param_key4"],
        smsSettingsParamVal4: json["sms_settings_param_val4"],
        smsSettingsParamKey5: json["sms_settings_param_key5"],
        smsSettingsParamVal5: json["sms_settings_param_val5"],
        smsSettingsParamKey6: json["sms_settings_param_key6"],
        smsSettingsParamVal6: json["sms_settings_param_val6"],
        smsSettingsParamKey7: json["sms_settings_param_key7"],
        smsSettingsParamVal7: json["sms_settings_param_val7"],
        smsSettingsParamKey8: json["sms_settings_param_key8"],
        smsSettingsParamVal8: json["sms_settings_param_val8"],
        smsSettingsParamKey9: json["sms_settings_param_key9"],
        smsSettingsParamVal9: json["sms_settings_param_val9"],
        smsSettingsParamKey10: json["sms_settings_param_key10"],
        smsSettingsParamVal10: json["sms_settings_param_val10"],
      );

  Map<String, dynamic> toJson() => {
        "sms_service": smsService,
        "sms_start_lesson": smsStartLesson,
        "nexmo_key": nexmoKey,
        "nexmo_secret": nexmoSecret,
        "nexmo_from": nexmoFrom,
        "twilio_sid": twilioSid,
        "twilio_token": twilioToken,
        "twilio_from": twilioFrom,
        "speed_token": speedToken,
        "speed_from": speedFrom,
        "sms_settings_url": smsSettingsUrl,
        "send_to_param_name": sendToParamName,
        "msg_param_name": msgParamName,
        "request_method": requestMethod,
        "sms_settings_header_key1": smsSettingsHeaderKey1,
        "sms_settings_header_val1": smsSettingsHeaderVal1,
        "sms_settings_header_key2": smsSettingsHeaderKey2,
        "sms_settings_header_val2": smsSettingsHeaderVal2,
        "sms_settings_header_key3": smsSettingsHeaderKey3,
        "sms_settings_header_val3": smsSettingsHeaderVal3,
        "sms_settings_param_key1": smsSettingsParamKey1,
        "sms_settings_param_val1": smsSettingsParamVal1,
        "sms_settings_param_key2": smsSettingsParamKey2,
        "sms_settings_param_val2": smsSettingsParamVal2,
        "sms_settings_param_key3": smsSettingsParamKey3,
        "sms_settings_param_val3": smsSettingsParamVal3,
        "sms_settings_param_key4": smsSettingsParamKey4,
        "sms_settings_param_val4": smsSettingsParamVal4,
        "sms_settings_param_key5": smsSettingsParamKey5,
        "sms_settings_param_val5": smsSettingsParamVal5,
        "sms_settings_param_key6": smsSettingsParamKey6,
        "sms_settings_param_val6": smsSettingsParamVal6,
        "sms_settings_param_key7": smsSettingsParamKey7,
        "sms_settings_param_val7": smsSettingsParamVal7,
        "sms_settings_param_key8": smsSettingsParamKey8,
        "sms_settings_param_val8": smsSettingsParamVal8,
        "sms_settings_param_key9": smsSettingsParamKey9,
        "sms_settings_param_val9": smsSettingsParamVal9,
        "sms_settings_param_key10": smsSettingsParamKey10,
        "sms_settings_param_val10": smsSettingsParamVal10,
      };
}

class StatusOrder {
  int? id;
  int? businessId;
  String? value;
  String? createdAt;
  String? updatedAt;

  StatusOrder({
    this.id,
    this.businessId,
    this.value,
    this.createdAt,
    this.updatedAt,
  });

  StatusOrder copyWith({
    int? id,
    int? businessId,
    String? value,
    String? createdAt,
    String? updatedAt,
  }) =>
      StatusOrder(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        value: value ?? this.value,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory StatusOrder.fromRawJson(String str) =>
      StatusOrder.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StatusOrder.fromJson(Map<String, dynamic> json) => StatusOrder(
        id: json["id"],
        businessId: json["business_id"],
        value: json["value"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "value": value,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class System {
  dynamic themeColor;
  String? defaultDatatablePageEntries;
  bool? enableTooltip;

  System({
    this.themeColor,
    this.defaultDatatablePageEntries,
    this.enableTooltip,
  });

  System copyWith({
    dynamic themeColor,
    String? defaultDatatablePageEntries,
    bool? enableTooltip,
  }) =>
      System(
        themeColor: themeColor ?? this.themeColor,
        defaultDatatablePageEntries:
            defaultDatatablePageEntries ?? this.defaultDatatablePageEntries,
        enableTooltip: enableTooltip ?? this.enableTooltip,
      );

  factory System.fromRawJson(String str) => System.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory System.fromJson(Map<String, dynamic> json) => System(
        themeColor: json["theme_color"],
        defaultDatatablePageEntries: json["default_datatable_page_entries"],
        enableTooltip: json["enable_tooltip"],
      );

  Map<String, dynamic> toJson() => {
        "theme_color": themeColor,
        "default_datatable_page_entries": defaultDatatablePageEntries,
        "enable_tooltip": enableTooltip,
      };
}

class Tax {
  String? taxLabel1;
  String? taxNumber1;
  String? taxLabel2;
  String? taxNumber2;
  bool? enableInlineTax;

  Tax({
    this.taxLabel1,
    this.taxNumber1,
    this.taxLabel2,
    this.taxNumber2,
    this.enableInlineTax,
  });

  Tax copyWith({
    String? taxLabel1,
    String? taxNumber1,
    String? taxLabel2,
    String? taxNumber2,
    bool? enableInlineTax,
  }) =>
      Tax(
        taxLabel1: taxLabel1 ?? this.taxLabel1,
        taxNumber1: taxNumber1 ?? this.taxNumber1,
        taxLabel2: taxLabel2 ?? this.taxLabel2,
        taxNumber2: taxNumber2 ?? this.taxNumber2,
        enableInlineTax: enableInlineTax ?? this.enableInlineTax,
      );

  factory Tax.fromRawJson(String str) => Tax.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        taxLabel1: json["tax_label_1"],
        taxNumber1: json["tax_number_1"],
        taxLabel2: json["tax_label_2"],
        taxNumber2: json["tax_number_2"],
        enableInlineTax: json["enable_inline_tax"],
      );

  Map<String, dynamic> toJson() => {
        "tax_label_1": taxLabel1,
        "tax_number_1": taxNumber1,
        "tax_label_2": taxLabel2,
        "tax_number_2": taxNumber2,
        "enable_inline_tax": enableInlineTax,
      };
}
