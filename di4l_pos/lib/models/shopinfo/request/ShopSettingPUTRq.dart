// To parse this JSON data, do
//
//     final shopSettingRq = shopSettingRqFromJson(jsonString);

import 'dart:convert';

class ShopSettingRq {
  String? name;
  String? startDate;
  int? defaultProfitPercent;
  int? currencyId;
  String? currencySymbolPlacement;
  String? timeZone;
  // String? businessLogo;
  int? fyStartMonth;
  String? accountingMethod;
  int? transactionEditDays;
  String? dateFormat;
  dynamic timeFormat;
  String? taxLabel1;
  String? taxNumber1;
  String? taxLabel2;
  String? taxNumber2;
  int? enableInlineTax;
  String? skuPrefix;
  int? enableProductExpiry;
  String? expiryType;
  String? onProductExpiry;
  int? stopSellingBefore;
  int? enableBrand;
  int? enableCategory;
  int? enableSubCategory;
  int? enablePriceTax;
  int? enableSubUnits;
  int? enableRacks;
  int? enableRow;
  int? enablePosition;
  int? defaultUnit;
  String? defaultSalesDiscount;
  dynamic defaultSalesTax;
  dynamic itemAdditionMethod;
  CommonSettings? commonSettings;
  PosSettings? posSettings;
  Shortcuts? shortcuts;
  String? salesCmsnAgnt;
  WeighingScaleSetting? weighingScaleSetting;
  RefNoPrefixes? refNoPrefixes;
  EmailSettings? emailSettings;
  SmsSettings? smsSettings;
  CustomLabels? customLabels;
  Settings? settings;
  int? enableEditingProductFromPurchase;
  int? enablePurchaseStatus;
  int? enableLotNumber;
  int? stockExpiryAlertDays;
  String? themeColor;
  int? enableTooltip;
  int? enableRp;
  String? rpName;
  dynamic amountForUnitRp;
  dynamic minOrderTotalForRp;
  dynamic maxRpPerOrder;
  dynamic redeemAmountPerUnitRp;
  dynamic minOrderTotalForRedeem;
  dynamic minRedeemPoint;
  dynamic maxRedeemPoint;
  dynamic rpExpiryPeriod;
  String? rpExpiryType;
  String? domain;

  ShopSettingRq({
    this.name,
    this.startDate,
    this.defaultProfitPercent,
    this.currencyId,
    this.currencySymbolPlacement,
    this.timeZone,
    // this.businessLogo,
    this.fyStartMonth,
    this.accountingMethod,
    this.transactionEditDays,
    this.dateFormat,
    this.timeFormat,
    this.taxLabel1,
    this.taxNumber1,
    this.taxLabel2,
    this.taxNumber2,
    this.enableInlineTax,
    this.skuPrefix,
    this.enableProductExpiry,
    this.expiryType,
    this.onProductExpiry,
    this.stopSellingBefore,
    this.enableBrand,
    this.enableCategory,
    this.enableSubCategory,
    this.enablePriceTax,
    this.enableSubUnits,
    this.enableRacks,
    this.enableRow,
    this.enablePosition,
    this.defaultUnit,
    this.defaultSalesDiscount,
    this.defaultSalesTax,
    this.itemAdditionMethod,
    this.commonSettings,
    this.posSettings,
    this.shortcuts,
    this.salesCmsnAgnt,
    this.weighingScaleSetting,
    this.refNoPrefixes,
    this.emailSettings,
    this.smsSettings,
    this.customLabels,
    this.settings,
    this.enableEditingProductFromPurchase,
    this.enablePurchaseStatus,
    this.enableLotNumber,
    this.stockExpiryAlertDays,
    this.themeColor,
    this.enableTooltip,
    this.enableRp,
    this.rpName,
    this.amountForUnitRp,
    this.minOrderTotalForRp,
    this.maxRpPerOrder,
    this.redeemAmountPerUnitRp,
    this.minOrderTotalForRedeem,
    this.minRedeemPoint,
    this.maxRedeemPoint,
    this.rpExpiryPeriod,
    this.rpExpiryType,
    this.domain,
  });

  ShopSettingRq copyWith({
    String? name,
    String? startDate,
    int? defaultProfitPercent,
    int? currencyId,
    String? currencySymbolPlacement,
    String? timeZone,
    // String? businessLogo,
    int? fyStartMonth,
    String? accountingMethod,
    int? transactionEditDays,
    String? dateFormat,
    dynamic timeFormat,
    String? taxLabel1,
    String? taxNumber1,
    String? taxLabel2,
    String? taxNumber2,
    int? enableInlineTax,
    String? skuPrefix,
    int? enableProductExpiry,
    String? expiryType,
    String? onProductExpiry,
    int? stopSellingBefore,
    int? enableBrand,
    int? enableCategory,
    int? enableSubCategory,
    int? enablePriceTax,
    int? enableSubUnits,
    int? enableRacks,
    int? enableRow,
    int? enablePosition,
    int? defaultUnit,
    String? defaultSalesDiscount,
    dynamic defaultSalesTax,
    dynamic itemAdditionMethod,
    CommonSettings? commonSettings,
    PosSettings? posSettings,
    Shortcuts? shortcuts,
    String? salesCmsnAgnt,
    WeighingScaleSetting? weighingScaleSetting,
    RefNoPrefixes? refNoPrefixes,
    EmailSettings? emailSettings,
    SmsSettings? smsSettings,
    CustomLabels? customLabels,
    Settings? settings,
    int? enableEditingProductFromPurchase,
    int? enablePurchaseStatus,
    int? enableLotNumber,
    int? stockExpiryAlertDays,
    String? themeColor,
    int? enableTooltip,
    int? enableRp,
    String? rpName,
    dynamic amountForUnitRp,
    dynamic minOrderTotalForRp,
    dynamic maxRpPerOrder,
    dynamic redeemAmountPerUnitRp,
    dynamic minOrderTotalForRedeem,
    dynamic minRedeemPoint,
    dynamic maxRedeemPoint,
    dynamic rpExpiryPeriod,
    String? rpExpiryType,
    String? domain,
  }) =>
      ShopSettingRq(
        name: name ?? this.name,
        startDate: startDate ?? this.startDate,
        defaultProfitPercent: defaultProfitPercent ?? this.defaultProfitPercent,
        currencyId: currencyId ?? this.currencyId,
        currencySymbolPlacement:
            currencySymbolPlacement ?? this.currencySymbolPlacement,
        timeZone: timeZone ?? this.timeZone,
        // businessLogo: businessLogo ?? this.businessLogo,
        fyStartMonth: fyStartMonth ?? this.fyStartMonth,
        accountingMethod: accountingMethod ?? this.accountingMethod,
        transactionEditDays: transactionEditDays ?? this.transactionEditDays,
        dateFormat: dateFormat ?? this.dateFormat,
        timeFormat: timeFormat ?? this.timeFormat,
        taxLabel1: taxLabel1 ?? this.taxLabel1,
        taxNumber1: taxNumber1 ?? this.taxNumber1,
        taxLabel2: taxLabel2 ?? this.taxLabel2,
        taxNumber2: taxNumber2 ?? this.taxNumber2,
        enableInlineTax: enableInlineTax ?? this.enableInlineTax,
        skuPrefix: skuPrefix ?? this.skuPrefix,
        enableProductExpiry: enableProductExpiry ?? this.enableProductExpiry,
        expiryType: expiryType ?? this.expiryType,
        onProductExpiry: onProductExpiry ?? this.onProductExpiry,
        stopSellingBefore: stopSellingBefore ?? this.stopSellingBefore,
        enableBrand: enableBrand ?? this.enableBrand,
        enableCategory: enableCategory ?? this.enableCategory,
        enableSubCategory: enableSubCategory ?? this.enableSubCategory,
        enablePriceTax: enablePriceTax ?? this.enablePriceTax,
        enableSubUnits: enableSubUnits ?? this.enableSubUnits,
        enableRacks: enableRacks ?? this.enableRacks,
        enableRow: enableRow ?? this.enableRow,
        enablePosition: enablePosition ?? this.enablePosition,
        defaultUnit: defaultUnit ?? this.defaultUnit,
        defaultSalesDiscount: defaultSalesDiscount ?? this.defaultSalesDiscount,
        defaultSalesTax: defaultSalesTax ?? this.defaultSalesTax,
        itemAdditionMethod: itemAdditionMethod ?? this.itemAdditionMethod,
        commonSettings: commonSettings ?? this.commonSettings,
        posSettings: posSettings ?? this.posSettings,
        shortcuts: shortcuts ?? this.shortcuts,
        salesCmsnAgnt: salesCmsnAgnt ?? this.salesCmsnAgnt,
        weighingScaleSetting: weighingScaleSetting ?? this.weighingScaleSetting,
        refNoPrefixes: refNoPrefixes ?? this.refNoPrefixes,
        emailSettings: emailSettings ?? this.emailSettings,
        smsSettings: smsSettings ?? this.smsSettings,
        customLabels: customLabels ?? this.customLabels,
        settings: settings ?? this.settings,
        enableEditingProductFromPurchase: enableEditingProductFromPurchase ??
            this.enableEditingProductFromPurchase,
        enablePurchaseStatus: enablePurchaseStatus ?? this.enablePurchaseStatus,
        enableLotNumber: enableLotNumber ?? this.enableLotNumber,
        stockExpiryAlertDays: stockExpiryAlertDays ?? this.stockExpiryAlertDays,
        themeColor: themeColor ?? this.themeColor,
        enableTooltip: enableTooltip ?? this.enableTooltip,
        enableRp: enableRp ?? this.enableRp,
        rpName: rpName ?? this.rpName,
        amountForUnitRp: amountForUnitRp ?? this.amountForUnitRp,
        minOrderTotalForRp: minOrderTotalForRp ?? this.minOrderTotalForRp,
        maxRpPerOrder: maxRpPerOrder ?? this.maxRpPerOrder,
        redeemAmountPerUnitRp:
            redeemAmountPerUnitRp ?? this.redeemAmountPerUnitRp,
        minOrderTotalForRedeem:
            minOrderTotalForRedeem ?? this.minOrderTotalForRedeem,
        minRedeemPoint: minRedeemPoint ?? this.minRedeemPoint,
        maxRedeemPoint: maxRedeemPoint ?? this.maxRedeemPoint,
        rpExpiryPeriod: rpExpiryPeriod ?? this.rpExpiryPeriod,
        rpExpiryType: rpExpiryType ?? this.rpExpiryType,
        domain: domain ?? this.domain,
      );

  factory ShopSettingRq.fromRawJson(String str) =>
      ShopSettingRq.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShopSettingRq.fromJson(Map<String, dynamic> json) => ShopSettingRq(
        name: json["name"],
        startDate: json["start_date"],
        defaultProfitPercent: json["default_profit_percent"],
        currencyId: json["currency_id"],
        currencySymbolPlacement: json["currency_symbol_placement"],
        timeZone: json["time_zone"],
        // businessLogo: json["business_logo"],
        fyStartMonth: json["fy_start_month"],
        accountingMethod: json["accounting_method"],
        transactionEditDays: json["transaction_edit_days"],
        dateFormat: json["date_format"],
        timeFormat: json["time_format"],
        taxLabel1: json["tax_label_1"],
        taxNumber1: json["tax_number_1"],
        taxLabel2: json["tax_label_2"],
        taxNumber2: json["tax_number_2"],
        enableInlineTax: json["enable_inline_tax"],
        skuPrefix: json["sku_prefix"],
        enableProductExpiry: json["enable_product_expiry"],
        expiryType: json["expiry_type"],
        onProductExpiry: json["on_product_expiry"],
        stopSellingBefore: json["stop_selling_before"],
        enableBrand: json["enable_brand"],
        enableCategory: json["enable_category"],
        enableSubCategory: json["enable_sub_category"],
        enablePriceTax: json["enable_price_tax"],
        enableSubUnits: json["enable_sub_units"],
        enableRacks: json["enable_racks"],
        enableRow: json["enable_row"],
        enablePosition: json["enable_position"],
        defaultUnit: json["default_unit"],
        defaultSalesDiscount: json["default_sales_discount"],
        defaultSalesTax: json["default_sales_tax"],
        itemAdditionMethod: json["item_addition_method"],
        commonSettings: json["common_settings"] == null
            ? null
            : CommonSettings.fromJson(json["common_settings"]),
        posSettings: json["pos_settings"] == null
            ? null
            : PosSettings.fromJson(json["pos_settings"]),
        shortcuts: json["shortcuts"] == null
            ? null
            : Shortcuts.fromJson(json["shortcuts"]),
        salesCmsnAgnt: json["sales_cmsn_agnt"],
        weighingScaleSetting: json["weighing_scale_setting"] == null
            ? null
            : WeighingScaleSetting.fromJson(json["weighing_scale_setting"]),
        refNoPrefixes: json["ref_no_prefixes"] == null
            ? null
            : RefNoPrefixes.fromJson(json["ref_no_prefixes"]),
        emailSettings: json["email_settings"] == null
            ? null
            : EmailSettings.fromJson(json["email_settings"]),
        smsSettings: json["sms_settings"] == null
            ? null
            : SmsSettings.fromJson(json["sms_settings"]),
        customLabels: json["custom_labels"] == null
            ? null
            : CustomLabels.fromJson(json["custom_labels"]),
        settings: json["settings"] == null
            ? null
            : Settings.fromJson(json["settings"]),
        enableEditingProductFromPurchase:
            json["enable_editing_product_from_purchase"],
        enablePurchaseStatus: json["enable_purchase_status"],
        enableLotNumber: json["enable_lot_number"],
        stockExpiryAlertDays: json["stock_expiry_alert_days"],
        themeColor: json["theme_color"],
        enableTooltip: json["enable_tooltip"],
        enableRp: json["enable_rp"],
        rpName: json["rp_name"],
        amountForUnitRp: json["amount_for_unit_rp"],
        minOrderTotalForRp: json["min_order_total_for_rp"],
        maxRpPerOrder: json["max_rp_per_order"],
        redeemAmountPerUnitRp: json["redeem_amount_per_unit_rp"],
        minOrderTotalForRedeem: json["min_order_total_for_redeem"],
        minRedeemPoint: json["min_redeem_point"],
        maxRedeemPoint: json["max_redeem_point"],
        rpExpiryPeriod: json["rp_expiry_period"],
        rpExpiryType: json["rp_expiry_type"],
        domain: json["domain"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "start_date": startDate,
        "default_profit_percent": defaultProfitPercent,
        "currency_id": currencyId,
        "currency_symbol_placement": currencySymbolPlacement,
        "time_zone": timeZone,
        // "business_logo": businessLogo,
        "fy_start_month": fyStartMonth,
        "accounting_method": accountingMethod,
        "transaction_edit_days": transactionEditDays,
        "date_format": dateFormat,
        "time_format": timeFormat,
        "tax_label_1": taxLabel1,
        "tax_number_1": taxNumber1,
        "tax_label_2": taxLabel2,
        "tax_number_2": taxNumber2,
        "enable_inline_tax": enableInlineTax,
        "sku_prefix": skuPrefix,
        "enable_product_expiry": enableProductExpiry,
        "expiry_type": expiryType,
        "on_product_expiry": onProductExpiry,
        "stop_selling_before": stopSellingBefore,
        "enable_brand": enableBrand,
        "enable_category": enableCategory,
        "enable_sub_category": enableSubCategory,
        "enable_price_tax": enablePriceTax,
        "enable_sub_units": enableSubUnits,
        "enable_racks": enableRacks,
        "enable_row": enableRow,
        "enable_position": enablePosition,
        "default_unit": defaultUnit,
        "default_sales_discount": defaultSalesDiscount,
        "default_sales_tax": defaultSalesTax,
        "item_addition_method": itemAdditionMethod,
        "common_settings": commonSettings?.toJson(),
        "pos_settings": posSettings?.toJson(),
        "shortcuts": shortcuts?.toJson(),
        "sales_cmsn_agnt": salesCmsnAgnt,
        "weighing_scale_setting": weighingScaleSetting?.toJson(),
        "ref_no_prefixes": refNoPrefixes?.toJson(),
        "email_settings": emailSettings?.toJson(),
        "sms_settings": smsSettings?.toJson(),
        "custom_labels": customLabels?.toJson(),
        "settings": settings?.toJson(),
        "enable_editing_product_from_purchase":
            enableEditingProductFromPurchase,
        "enable_purchase_status": enablePurchaseStatus,
        "enable_lot_number": enableLotNumber,
        "stock_expiry_alert_days": stockExpiryAlertDays,
        "theme_color": themeColor,
        "enable_tooltip": enableTooltip,
        "enable_rp": enableRp,
        "rp_name": rpName,
        "amount_for_unit_rp": amountForUnitRp,
        "min_order_total_for_rp": minOrderTotalForRp,
        "max_rp_per_order": maxRpPerOrder,
        "redeem_amount_per_unit_rp": redeemAmountPerUnitRp,
        "min_order_total_for_redeem": minOrderTotalForRedeem,
        "min_redeem_point": minRedeemPoint,
        "max_redeem_point": maxRedeemPoint,
        "rp_expiry_period": rpExpiryPeriod,
        "rp_expiry_type": rpExpiryType,
        "domain": domain,
      };
}

class CommonSettings {
  int? enableProductWarranty;
  String? defaultCreditLimit;
  int? enablePurchaseOrder;
  String? defaultDatatablePageEntries;

  CommonSettings({
    this.enableProductWarranty,
    this.defaultCreditLimit,
    this.enablePurchaseOrder,
    this.defaultDatatablePageEntries,
  });

  CommonSettings copyWith({
    int? enableProductWarranty,
    String? defaultCreditLimit,
    int? enablePurchaseOrder,
    String? defaultDatatablePageEntries,
  }) =>
      CommonSettings(
        enableProductWarranty:
            enableProductWarranty ?? this.enableProductWarranty,
        defaultCreditLimit: defaultCreditLimit ?? this.defaultCreditLimit,
        enablePurchaseOrder: enablePurchaseOrder ?? this.enablePurchaseOrder,
        defaultDatatablePageEntries:
            defaultDatatablePageEntries ?? this.defaultDatatablePageEntries,
      );

  factory CommonSettings.fromRawJson(String str) =>
      CommonSettings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommonSettings.fromJson(Map<String, dynamic> json) => CommonSettings(
        enableProductWarranty: json["enable_product_warranty"],
        defaultCreditLimit: json["default_credit_limit"],
        enablePurchaseOrder: json["enable_purchase_order"],
        defaultDatatablePageEntries: json["default_datatable_page_entries"],
      );

  Map<String, dynamic> toJson() => {
        "enable_product_warranty": enableProductWarranty,
        "default_credit_limit": defaultCreditLimit,
        "enable_purchase_order": enablePurchaseOrder,
        "default_datatable_page_entries": defaultDatatablePageEntries,
      };
}

class CustomLabels {
  Payments? payments;
  Contact? contact;
  ProductBusinessSetting? product;
  Location? location;
  UserBusinessSetting? user;
  Purchase? purchase;
  PurchaseShipping? purchaseShipping;
  Sell? sell;
  Shipping? shipping;
  TypesOfService? typesOfService;

  CustomLabels({
    this.payments,
    this.contact,
    this.product,
    this.location,
    this.user,
    this.purchase,
    this.purchaseShipping,
    this.sell,
    this.shipping,
    this.typesOfService,
  });

  CustomLabels copyWith({
    Payments? payments,
    Contact? contact,
    ProductBusinessSetting? product,
    Location? location,
    UserBusinessSetting? user,
    Purchase? purchase,
    PurchaseShipping? purchaseShipping,
    Sell? sell,
    Shipping? shipping,
    TypesOfService? typesOfService,
  }) =>
      CustomLabels(
        payments: payments ?? this.payments,
        contact: contact ?? this.contact,
        product: product ?? this.product,
        location: location ?? this.location,
        user: user ?? this.user,
        purchase: purchase ?? this.purchase,
        purchaseShipping: purchaseShipping ?? this.purchaseShipping,
        sell: sell ?? this.sell,
        shipping: shipping ?? this.shipping,
        typesOfService: typesOfService ?? this.typesOfService,
      );

  factory CustomLabels.fromRawJson(String str) =>
      CustomLabels.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomLabels.fromJson(Map<String, dynamic> json) => CustomLabels(
        payments: json["payments"] == null
            ? null
            : Payments.fromJson(json["payments"]),
        contact:
            json["contact"] == null ? null : Contact.fromJson(json["contact"]),
        product: json["product"] == null
            ? null
            : ProductBusinessSetting.fromJson(json["product"]),
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        user: json["user"] == null
            ? null
            : UserBusinessSetting.fromJson(json["user"]),
        purchase: json["purchase"] == null
            ? null
            : Purchase.fromJson(json["purchase"]),
        purchaseShipping: json["purchase_shipping"] == null
            ? null
            : PurchaseShipping.fromJson(json["purchase_shipping"]),
        sell: json["sell"] == null ? null : Sell.fromJson(json["sell"]),
        shipping: json["shipping"] == null
            ? null
            : Shipping.fromJson(json["shipping"]),
        typesOfService: json["types_of_service"] == null
            ? null
            : TypesOfService.fromJson(json["types_of_service"]),
      );

  Map<String, dynamic> toJson() => {
        "payments": payments?.toJson(),
        "contact": contact?.toJson(),
        "product": product?.toJson(),
        "location": location?.toJson(),
        "user": user?.toJson(),
        "purchase": purchase?.toJson(),
        "purchase_shipping": purchaseShipping?.toJson(),
        "sell": sell?.toJson(),
        "shipping": shipping?.toJson(),
        "types_of_service": typesOfService?.toJson(),
      };
}

class Contact {
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;
  String? customField5;
  String? customField6;
  String? customField7;
  String? customField8;
  String? customField9;
  String? customField10;

  Contact({
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
    this.customField5,
    this.customField6,
    this.customField7,
    this.customField8,
    this.customField9,
    this.customField10,
  });

  Contact copyWith({
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
    String? customField5,
    String? customField6,
    String? customField7,
    String? customField8,
    String? customField9,
    String? customField10,
  }) =>
      Contact(
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        customField5: customField5 ?? this.customField5,
        customField6: customField6 ?? this.customField6,
        customField7: customField7 ?? this.customField7,
        customField8: customField8 ?? this.customField8,
        customField9: customField9 ?? this.customField9,
        customField10: customField10 ?? this.customField10,
      );

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        customField1: json["custom_field_1"],
        customField2: json["custom_field_2"],
        customField3: json["custom_field_3"],
        customField4: json["custom_field_4"],
        customField5: json["custom_field_5"],
        customField6: json["custom_field_6"],
        customField7: json["custom_field_7"],
        customField8: json["custom_field_8"],
        customField9: json["custom_field_9"],
        customField10: json["custom_field_10"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "custom_field_2": customField2,
        "custom_field_3": customField3,
        "custom_field_4": customField4,
        "custom_field_5": customField5,
        "custom_field_6": customField6,
        "custom_field_7": customField7,
        "custom_field_8": customField8,
        "custom_field_9": customField9,
        "custom_field_10": customField10,
      };
}

class ProductBusinessSetting {
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;

  ProductBusinessSetting({
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
  });

  ProductBusinessSetting copyWith({
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
  }) =>
      ProductBusinessSetting(
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
      );

  factory ProductBusinessSetting.fromRawJson(String str) =>
      ProductBusinessSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductBusinessSetting.fromJson(Map<String, dynamic> json) =>
      ProductBusinessSetting(
        customField1: json["custom_field_1"],
        customField2: json["custom_field_2"],
        customField3: json["custom_field_3"],
        customField4: json["custom_field_4"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "custom_field_2": customField2,
        "custom_field_3": customField3,
        "custom_field_4": customField4,
      };
}

class Location {
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;

  Location({
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
  });

  Location copyWith({
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
  }) =>
      Location(
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
      );

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        customField1: json["custom_field_1"],
        customField2: json["custom_field_2"],
        customField3: json["custom_field_3"],
        customField4: json["custom_field_4"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "custom_field_2": customField2,
        "custom_field_3": customField3,
        "custom_field_4": customField4,
      };
}

class UserBusinessSetting {
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;

  UserBusinessSetting({
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
  });

  UserBusinessSetting copyWith({
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
  }) =>
      UserBusinessSetting(
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
      );

  factory UserBusinessSetting.fromRawJson(String str) =>
      UserBusinessSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserBusinessSetting.fromJson(Map<String, dynamic> json) =>
      UserBusinessSetting(
        customField1: json["custom_field_1"],
        customField2: json["custom_field_2"],
        customField3: json["custom_field_3"],
        customField4: json["custom_field_4"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "custom_field_2": customField2,
        "custom_field_3": customField3,
        "custom_field_4": customField4,
      };
}

class Payments {
  String? customPay1;
  String? customPay2;
  String? customPay3;
  String? customPay4;
  String? customPay5;
  String? customPay6;
  String? customPay7;

  Payments({
    this.customPay1,
    this.customPay2,
    this.customPay3,
    this.customPay4,
    this.customPay5,
    this.customPay6,
    this.customPay7,
  });

  Payments copyWith({
    String? customPay1,
    String? customPay2,
    String? customPay3,
    String? customPay4,
    String? customPay5,
    String? customPay6,
    String? customPay7,
  }) =>
      Payments(
        customPay1: customPay1 ?? this.customPay1,
        customPay2: customPay2 ?? this.customPay2,
        customPay3: customPay3 ?? this.customPay3,
        customPay4: customPay4 ?? this.customPay4,
        customPay5: customPay5 ?? this.customPay5,
        customPay6: customPay6 ?? this.customPay6,
        customPay7: customPay7 ?? this.customPay7,
      );

  factory Payments.fromRawJson(String str) =>
      Payments.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payments.fromJson(Map<String, dynamic> json) => Payments(
        customPay1: json["custom_pay_1"],
        customPay2: json["custom_pay_2"],
        customPay3: json["custom_pay_3"],
        customPay4: json["custom_pay_4"],
        customPay5: json["custom_pay_5"],
        customPay6: json["custom_pay_6"],
        customPay7: json["custom_pay_7"],
      );

  Map<String, dynamic> toJson() => {
        "custom_pay_1": customPay1,
        "custom_pay_2": customPay2,
        "custom_pay_3": customPay3,
        "custom_pay_4": customPay4,
        "custom_pay_5": customPay5,
        "custom_pay_6": customPay6,
        "custom_pay_7": customPay7,
      };
}

class Purchase {
  String? customField1;
  int? isCustomField1Required;
  String? customField2;
  int? isCustomField2Required;
  String? customField3;
  int? isCustomField3Required;
  String? customField4;
  int? isCustomField4Required;

  Purchase({
    this.customField1,
    this.isCustomField1Required,
    this.customField2,
    this.isCustomField2Required,
    this.customField3,
    this.isCustomField3Required,
    this.customField4,
    this.isCustomField4Required,
  });

  Purchase copyWith({
    String? customField1,
    int? isCustomField1Required,
    String? customField2,
    int? isCustomField2Required,
    String? customField3,
    int? isCustomField3Required,
    String? customField4,
    int? isCustomField4Required,
  }) =>
      Purchase(
        customField1: customField1 ?? this.customField1,
        isCustomField1Required:
            isCustomField1Required ?? this.isCustomField1Required,
        customField2: customField2 ?? this.customField2,
        isCustomField2Required:
            isCustomField2Required ?? this.isCustomField2Required,
        customField3: customField3 ?? this.customField3,
        isCustomField3Required:
            isCustomField3Required ?? this.isCustomField3Required,
        customField4: customField4 ?? this.customField4,
        isCustomField4Required:
            isCustomField4Required ?? this.isCustomField4Required,
      );

  factory Purchase.fromRawJson(String str) =>
      Purchase.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Purchase.fromJson(Map<String, dynamic> json) => Purchase(
        customField1: json["custom_field_1"],
        isCustomField1Required: json["is_custom_field_1_required"],
        customField2: json["custom_field_2"],
        isCustomField2Required: json["is_custom_field_2_required"],
        customField3: json["custom_field_3"],
        isCustomField3Required: json["is_custom_field_3_required"],
        customField4: json["custom_field_4"],
        isCustomField4Required: json["is_custom_field_4_required"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "is_custom_field_1_required": isCustomField1Required,
        "custom_field_2": customField2,
        "is_custom_field_2_required": isCustomField2Required,
        "custom_field_3": customField3,
        "is_custom_field_3_required": isCustomField3Required,
        "custom_field_4": customField4,
        "is_custom_field_4_required": isCustomField4Required,
      };
}

class Sell {
  String? customField1;
  int? isCustomField1Required;
  String? customField2;
  int? isCustomField2Required;
  String? customField3;
  int? isCustomField3Required;
  String? customField4;
  int? isCustomField4Required;

  Sell({
    this.customField1,
    this.isCustomField1Required,
    this.customField2,
    this.isCustomField2Required,
    this.customField3,
    this.isCustomField3Required,
    this.customField4,
    this.isCustomField4Required,
  });

  Sell copyWith({
    String? customField1,
    int? isCustomField1Required,
    String? customField2,
    int? isCustomField2Required,
    String? customField3,
    int? isCustomField3Required,
    String? customField4,
    int? isCustomField4Required,
  }) =>
      Sell(
        customField1: customField1 ?? this.customField1,
        isCustomField1Required:
            isCustomField1Required ?? this.isCustomField1Required,
        customField2: customField2 ?? this.customField2,
        isCustomField2Required:
            isCustomField2Required ?? this.isCustomField2Required,
        customField3: customField3 ?? this.customField3,
        isCustomField3Required:
            isCustomField3Required ?? this.isCustomField3Required,
        customField4: customField4 ?? this.customField4,
        isCustomField4Required:
            isCustomField4Required ?? this.isCustomField4Required,
      );

  factory Sell.fromRawJson(String str) => Sell.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Sell.fromJson(Map<String, dynamic> json) => Sell(
        customField1: json["custom_field_1"],
        isCustomField1Required: json["is_custom_field_1_required"],
        customField2: json["custom_field_2"],
        isCustomField2Required: json["is_custom_field_2_required"],
        customField3: json["custom_field_3"],
        isCustomField3Required: json["is_custom_field_3_required"],
        customField4: json["custom_field_4"],
        isCustomField4Required: json["is_custom_field_4_required"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "is_custom_field_1_required": isCustomField1Required,
        "custom_field_2": customField2,
        "is_custom_field_2_required": isCustomField2Required,
        "custom_field_3": customField3,
        "is_custom_field_3_required": isCustomField3Required,
        "custom_field_4": customField4,
        "is_custom_field_4_required": isCustomField4Required,
      };
}

class PurchaseShipping {
  String? customField1;
  int? isCustomField1Required;
  String? customField2;
  int? isCustomField2Required;
  String? customField3;
  int? isCustomField3Required;
  String? customField4;
  int? isCustomField4Required;
  String? customField5;
  int? isCustomField5Required;

  PurchaseShipping({
    this.customField1,
    this.isCustomField1Required,
    this.customField2,
    this.isCustomField2Required,
    this.customField3,
    this.isCustomField3Required,
    this.customField4,
    this.isCustomField4Required,
    this.customField5,
    this.isCustomField5Required,
  });

  PurchaseShipping copyWith({
    String? customField1,
    int? isCustomField1Required,
    String? customField2,
    int? isCustomField2Required,
    String? customField3,
    int? isCustomField3Required,
    String? customField4,
    int? isCustomField4Required,
    String? customField5,
    int? isCustomField5Required,
  }) =>
      PurchaseShipping(
        customField1: customField1 ?? this.customField1,
        isCustomField1Required:
            isCustomField1Required ?? this.isCustomField1Required,
        customField2: customField2 ?? this.customField2,
        isCustomField2Required:
            isCustomField2Required ?? this.isCustomField2Required,
        customField3: customField3 ?? this.customField3,
        isCustomField3Required:
            isCustomField3Required ?? this.isCustomField3Required,
        customField4: customField4 ?? this.customField4,
        isCustomField4Required:
            isCustomField4Required ?? this.isCustomField4Required,
        customField5: customField5 ?? this.customField5,
        isCustomField5Required:
            isCustomField5Required ?? this.isCustomField5Required,
      );

  factory PurchaseShipping.fromRawJson(String str) =>
      PurchaseShipping.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurchaseShipping.fromJson(Map<String, dynamic> json) =>
      PurchaseShipping(
        customField1: json["custom_field_1"],
        isCustomField1Required: json["is_custom_field_1_required"],
        customField2: json["custom_field_2"],
        isCustomField2Required: json["is_custom_field_2_required"],
        customField3: json["custom_field_3"],
        isCustomField3Required: json["is_custom_field_3_required"],
        customField4: json["custom_field_4"],
        isCustomField4Required: json["is_custom_field_4_required"],
        customField5: json["custom_field_5"],
        isCustomField5Required: json["is_custom_field_5_required"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "is_custom_field_1_required": isCustomField1Required,
        "custom_field_2": customField2,
        "is_custom_field_2_required": isCustomField2Required,
        "custom_field_3": customField3,
        "is_custom_field_3_required": isCustomField3Required,
        "custom_field_4": customField4,
        "is_custom_field_4_required": isCustomField4Required,
        "custom_field_5": customField5,
        "is_custom_field_5_required": isCustomField5Required,
      };
}

class Shipping {
  String? customField1;
  int? isCustomField1Required;
  int? isCustomField1ContactDefault;
  String? customField2;
  int? isCustomField2Required;
  int? isCustomField2ContactDefault;
  String? customField3;
  int? isCustomField3Required;
  int? isCustomField3ContactDefault;
  String? customField4;
  int? isCustomField4Required;
  int? isCustomField4ContactDefault;
  String? customField5;
  int? isCustomField5Required;
  int? isCustomField5ContactDefault;

  Shipping({
    this.customField1,
    this.isCustomField1Required,
    this.isCustomField1ContactDefault,
    this.customField2,
    this.isCustomField2Required,
    this.isCustomField2ContactDefault,
    this.customField3,
    this.isCustomField3Required,
    this.isCustomField3ContactDefault,
    this.customField4,
    this.isCustomField4Required,
    this.isCustomField4ContactDefault,
    this.customField5,
    this.isCustomField5Required,
    this.isCustomField5ContactDefault,
  });

  Shipping copyWith({
    String? customField1,
    int? isCustomField1Required,
    int? isCustomField1ContactDefault,
    String? customField2,
    int? isCustomField2Required,
    int? isCustomField2ContactDefault,
    String? customField3,
    int? isCustomField3Required,
    int? isCustomField3ContactDefault,
    String? customField4,
    int? isCustomField4Required,
    int? isCustomField4ContactDefault,
    String? customField5,
    int? isCustomField5Required,
    int? isCustomField5ContactDefault,
  }) =>
      Shipping(
        customField1: customField1 ?? this.customField1,
        isCustomField1Required:
            isCustomField1Required ?? this.isCustomField1Required,
        isCustomField1ContactDefault:
            isCustomField1ContactDefault ?? this.isCustomField1ContactDefault,
        customField2: customField2 ?? this.customField2,
        isCustomField2Required:
            isCustomField2Required ?? this.isCustomField2Required,
        isCustomField2ContactDefault:
            isCustomField2ContactDefault ?? this.isCustomField2ContactDefault,
        customField3: customField3 ?? this.customField3,
        isCustomField3Required:
            isCustomField3Required ?? this.isCustomField3Required,
        isCustomField3ContactDefault:
            isCustomField3ContactDefault ?? this.isCustomField3ContactDefault,
        customField4: customField4 ?? this.customField4,
        isCustomField4Required:
            isCustomField4Required ?? this.isCustomField4Required,
        isCustomField4ContactDefault:
            isCustomField4ContactDefault ?? this.isCustomField4ContactDefault,
        customField5: customField5 ?? this.customField5,
        isCustomField5Required:
            isCustomField5Required ?? this.isCustomField5Required,
        isCustomField5ContactDefault:
            isCustomField5ContactDefault ?? this.isCustomField5ContactDefault,
      );

  factory Shipping.fromRawJson(String str) =>
      Shipping.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shipping.fromJson(Map<String, dynamic> json) => Shipping(
        customField1: json["custom_field_1"],
        isCustomField1Required: json["is_custom_field_1_required"],
        isCustomField1ContactDefault: json["is_custom_field_1_contact_default"],
        customField2: json["custom_field_2"],
        isCustomField2Required: json["is_custom_field_2_required"],
        isCustomField2ContactDefault: json["is_custom_field_2_contact_default"],
        customField3: json["custom_field_3"],
        isCustomField3Required: json["is_custom_field_3_required"],
        isCustomField3ContactDefault: json["is_custom_field_3_contact_default"],
        customField4: json["custom_field_4"],
        isCustomField4Required: json["is_custom_field_4_required"],
        isCustomField4ContactDefault: json["is_custom_field_4_contact_default"],
        customField5: json["custom_field_5"],
        isCustomField5Required: json["is_custom_field_5_required"],
        isCustomField5ContactDefault: json["is_custom_field_5_contact_default"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "is_custom_field_1_required": isCustomField1Required,
        "is_custom_field_1_contact_default": isCustomField1ContactDefault,
        "custom_field_2": customField2,
        "is_custom_field_2_required": isCustomField2Required,
        "is_custom_field_2_contact_default": isCustomField2ContactDefault,
        "custom_field_3": customField3,
        "is_custom_field_3_required": isCustomField3Required,
        "is_custom_field_3_contact_default": isCustomField3ContactDefault,
        "custom_field_4": customField4,
        "is_custom_field_4_required": isCustomField4Required,
        "is_custom_field_4_contact_default": isCustomField4ContactDefault,
        "custom_field_5": customField5,
        "is_custom_field_5_required": isCustomField5Required,
        "is_custom_field_5_contact_default": isCustomField5ContactDefault,
      };
}

class TypesOfService {
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;
  String? customField5;
  String? customField6;

  TypesOfService({
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
    this.customField5,
    this.customField6,
  });

  TypesOfService copyWith({
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
    String? customField5,
    String? customField6,
  }) =>
      TypesOfService(
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        customField5: customField5 ?? this.customField5,
        customField6: customField6 ?? this.customField6,
      );

  factory TypesOfService.fromRawJson(String str) =>
      TypesOfService.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TypesOfService.fromJson(Map<String, dynamic> json) => TypesOfService(
        customField1: json["custom_field_1"],
        customField2: json["custom_field_2"],
        customField3: json["custom_field_3"],
        customField4: json["custom_field_4"],
        customField5: json["custom_field_5"],
        customField6: json["custom_field_6"],
      );

  Map<String, dynamic> toJson() => {
        "custom_field_1": customField1,
        "custom_field_2": customField2,
        "custom_field_3": customField3,
        "custom_field_4": customField4,
        "custom_field_5": customField5,
        "custom_field_6": customField6,
      };
}

class EmailSettings {
  String? mailDriver;
  String? mailHost;
  String? mailPort;
  String? mailUsername;
  String? mailPassword;
  String? mailEncryption;
  String? mailFromAddress;
  String? mailFromName;

  EmailSettings({
    this.mailDriver,
    this.mailHost,
    this.mailPort,
    this.mailUsername,
    this.mailPassword,
    this.mailEncryption,
    this.mailFromAddress,
    this.mailFromName,
  });

  EmailSettings copyWith({
    String? mailDriver,
    String? mailHost,
    String? mailPort,
    String? mailUsername,
    String? mailPassword,
    String? mailEncryption,
    String? mailFromAddress,
    String? mailFromName,
  }) =>
      EmailSettings(
        mailDriver: mailDriver ?? this.mailDriver,
        mailHost: mailHost ?? this.mailHost,
        mailPort: mailPort ?? this.mailPort,
        mailUsername: mailUsername ?? this.mailUsername,
        mailPassword: mailPassword ?? this.mailPassword,
        mailEncryption: mailEncryption ?? this.mailEncryption,
        mailFromAddress: mailFromAddress ?? this.mailFromAddress,
        mailFromName: mailFromName ?? this.mailFromName,
      );

  factory EmailSettings.fromRawJson(String str) =>
      EmailSettings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmailSettings.fromJson(Map<String, dynamic> json) => EmailSettings(
        mailDriver: json["mail_driver"],
        mailHost: json["mail_host"],
        mailPort: json["mail_port"],
        mailUsername: json["mail_username"],
        mailPassword: json["mail_password"],
        mailEncryption: json["mail_encryption"],
        mailFromAddress: json["mail_from_address"],
        mailFromName: json["mail_from_name"],
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
      };
}

class PosSettings {
  dynamic amountRoundingMethod;
  int? enableMsp;
  int? allowOverselling;
  int? enableSalesOrder;
  int? isPayTermRequired;
  String? cmmsnCalculationType;
  int? isCommissionAgentRequired;
  int? enablePaymentLink;
  String? razorPayKeyId;
  String? razorPayKeySecret;
  String? stripePublicKey;
  String? stripeSecretKey;
  int? disablePayCheckout;
  int? disableDraft;
  int? disableExpressCheckout;
  int? hideProductSuggestion;
  int? hideRecentTrans;
  int? disableDiscount;
  int? disableOrderTax;
  int? isPosSubtotalEditable;
  int? disableSuspend;
  int? enableTransactionDate;
  int? inlineServiceStaff;
  int? isServiceStaffRequired;
  int? disableCreditSaleButton;
  int? enableWeighingScale;
  int? showInvoiceScheme;
  int? showInvoiceLayout;
  int? printOnSuspend;
  int? showPricingOnProductSugesstion;
  String? cashDenominations;

  PosSettings({
    this.amountRoundingMethod,
    this.enableMsp,
    this.allowOverselling,
    this.enableSalesOrder,
    this.isPayTermRequired,
    this.cmmsnCalculationType,
    this.isCommissionAgentRequired,
    this.enablePaymentLink,
    this.razorPayKeyId,
    this.razorPayKeySecret,
    this.stripePublicKey,
    this.stripeSecretKey,
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
    this.cashDenominations,
  });

  PosSettings copyWith({
    dynamic amountRoundingMethod,
    int? enableMsp,
    int? allowOverselling,
    int? enableSalesOrder,
    int? isPayTermRequired,
    String? cmmsnCalculationType,
    int? isCommissionAgentRequired,
    int? enablePaymentLink,
    String? razorPayKeyId,
    String? razorPayKeySecret,
    String? stripePublicKey,
    String? stripeSecretKey,
    int? disablePayCheckout,
    int? disableDraft,
    int? disableExpressCheckout,
    int? hideProductSuggestion,
    int? hideRecentTrans,
    int? disableDiscount,
    int? disableOrderTax,
    int? isPosSubtotalEditable,
    int? disableSuspend,
    int? enableTransactionDate,
    int? inlineServiceStaff,
    int? isServiceStaffRequired,
    int? disableCreditSaleButton,
    int? enableWeighingScale,
    int? showInvoiceScheme,
    int? showInvoiceLayout,
    int? printOnSuspend,
    int? showPricingOnProductSugesstion,
    String? cashDenominations,
  }) =>
      PosSettings(
        amountRoundingMethod: amountRoundingMethod ?? this.amountRoundingMethod,
        enableMsp: enableMsp ?? this.enableMsp,
        allowOverselling: allowOverselling ?? this.allowOverselling,
        enableSalesOrder: enableSalesOrder ?? this.enableSalesOrder,
        isPayTermRequired: isPayTermRequired ?? this.isPayTermRequired,
        cmmsnCalculationType: cmmsnCalculationType ?? this.cmmsnCalculationType,
        isCommissionAgentRequired:
            isCommissionAgentRequired ?? this.isCommissionAgentRequired,
        enablePaymentLink: enablePaymentLink ?? this.enablePaymentLink,
        razorPayKeyId: razorPayKeyId ?? this.razorPayKeyId,
        razorPayKeySecret: razorPayKeySecret ?? this.razorPayKeySecret,
        stripePublicKey: stripePublicKey ?? this.stripePublicKey,
        stripeSecretKey: stripeSecretKey ?? this.stripeSecretKey,
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
        cashDenominations: cashDenominations ?? this.cashDenominations,
      );

  factory PosSettings.fromRawJson(String str) =>
      PosSettings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PosSettings.fromJson(Map<String, dynamic> json) => PosSettings(
        amountRoundingMethod: json["amount_rounding_method"]?.toDouble(),
        enableMsp: json["enable_msp"],
        allowOverselling: json["allow_overselling"],
        enableSalesOrder: json["enable_sales_order"],
        isPayTermRequired: json["is_pay_term_required"],
        cmmsnCalculationType: json["cmmsn_calculation_type"],
        isCommissionAgentRequired: json["is_commission_agent_required"],
        enablePaymentLink: json["enable_payment_link"],
        razorPayKeyId: json["razor_pay_key_id"],
        razorPayKeySecret: json["razor_pay_key_secret"],
        stripePublicKey: json["stripe_public_key"],
        stripeSecretKey: json["stripe_secret_key"],
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
        cashDenominations: json["cash_denominations"],
      );

  Map<String, dynamic> toJson() => {
        "amount_rounding_method": amountRoundingMethod,
        "enable_msp": enableMsp,
        "allow_overselling": allowOverselling,
        "enable_sales_order": enableSalesOrder,
        "is_pay_term_required": isPayTermRequired,
        "cmmsn_calculation_type": cmmsnCalculationType,
        "is_commission_agent_required": isCommissionAgentRequired,
        "enable_payment_link": enablePaymentLink,
        "razor_pay_key_id": razorPayKeyId,
        "razor_pay_key_secret": razorPayKeySecret,
        "stripe_public_key": stripePublicKey,
        "stripe_secret_key": stripeSecretKey,
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
        "cash_denominations": cashDenominations,
      };
}

class RefNoPrefixes {
  String? purchase;
  String? purchaseReturn;
  String? purchaseOrder;
  String? stockTransfer;
  String? stockAdjustment;
  String? sellReturn;
  String? expense;
  String? contacts;
  String? purchasePayment;
  String? sellPayment;
  String? expensePayment;
  String? businessLocation;
  String? username;
  String? subscription;
  String? draft;
  String? salesOrder;

  RefNoPrefixes({
    this.purchase,
    this.purchaseReturn,
    this.purchaseOrder,
    this.stockTransfer,
    this.stockAdjustment,
    this.sellReturn,
    this.expense,
    this.contacts,
    this.purchasePayment,
    this.sellPayment,
    this.expensePayment,
    this.businessLocation,
    this.username,
    this.subscription,
    this.draft,
    this.salesOrder,
  });

  RefNoPrefixes copyWith({
    String? purchase,
    String? purchaseReturn,
    String? purchaseOrder,
    String? stockTransfer,
    String? stockAdjustment,
    String? sellReturn,
    String? expense,
    String? contacts,
    String? purchasePayment,
    String? sellPayment,
    String? expensePayment,
    String? businessLocation,
    String? username,
    String? subscription,
    String? draft,
    String? salesOrder,
  }) =>
      RefNoPrefixes(
        purchase: purchase ?? this.purchase,
        purchaseReturn: purchaseReturn ?? this.purchaseReturn,
        purchaseOrder: purchaseOrder ?? this.purchaseOrder,
        stockTransfer: stockTransfer ?? this.stockTransfer,
        stockAdjustment: stockAdjustment ?? this.stockAdjustment,
        sellReturn: sellReturn ?? this.sellReturn,
        expense: expense ?? this.expense,
        contacts: contacts ?? this.contacts,
        purchasePayment: purchasePayment ?? this.purchasePayment,
        sellPayment: sellPayment ?? this.sellPayment,
        expensePayment: expensePayment ?? this.expensePayment,
        businessLocation: businessLocation ?? this.businessLocation,
        username: username ?? this.username,
        subscription: subscription ?? this.subscription,
        draft: draft ?? this.draft,
        salesOrder: salesOrder ?? this.salesOrder,
      );

  factory RefNoPrefixes.fromRawJson(String str) =>
      RefNoPrefixes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RefNoPrefixes.fromJson(Map<String, dynamic> json) => RefNoPrefixes(
        purchase: json["purchase"],
        purchaseReturn: json["purchase_return"],
        purchaseOrder: json["purchase_order"],
        stockTransfer: json["stock_transfer"],
        stockAdjustment: json["stock_adjustment"],
        sellReturn: json["sell_return"],
        expense: json["expense"],
        contacts: json["contacts"],
        purchasePayment: json["purchase_payment"],
        sellPayment: json["sell_payment"],
        expensePayment: json["expense_payment"],
        businessLocation: json["business_location"],
        username: json["username"],
        subscription: json["subscription"],
        draft: json["draft"],
        salesOrder: json["sales_order"],
      );

  Map<String, dynamic> toJson() => {
        "purchase": purchase,
        "purchase_return": purchaseReturn,
        "purchase_order": purchaseOrder,
        "stock_transfer": stockTransfer,
        "stock_adjustment": stockAdjustment,
        "sell_return": sellReturn,
        "expense": expense,
        "contacts": contacts,
        "purchase_payment": purchasePayment,
        "sell_payment": sellPayment,
        "expense_payment": expensePayment,
        "business_location": businessLocation,
        "username": username,
        "subscription": subscription,
        "draft": draft,
        "sales_order": salesOrder,
      };
}

class Settings {
  String? lazadaClientId;
  String? lazadaSecretKey;
  String? shopeeClientId;
  String? shopeeSecretKey;

  Settings({
    this.lazadaClientId,
    this.lazadaSecretKey,
    this.shopeeClientId,
    this.shopeeSecretKey,
  });

  Settings copyWith({
    String? lazadaClientId,
    String? lazadaSecretKey,
    String? shopeeClientId,
    String? shopeeSecretKey,
  }) =>
      Settings(
        lazadaClientId: lazadaClientId ?? this.lazadaClientId,
        lazadaSecretKey: lazadaSecretKey ?? this.lazadaSecretKey,
        shopeeClientId: shopeeClientId ?? this.shopeeClientId,
        shopeeSecretKey: shopeeSecretKey ?? this.shopeeSecretKey,
      );

  factory Settings.fromRawJson(String str) =>
      Settings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        lazadaClientId: json["lazada_client_id"],
        lazadaSecretKey: json["lazada_secret_key"],
        shopeeClientId: json["shopee_client_id"],
        shopeeSecretKey: json["shopee_secret_key"],
      );

  Map<String, dynamic> toJson() => {
        "lazada_client_id": lazadaClientId,
        "lazada_secret_key": lazadaSecretKey,
        "shopee_client_id": shopeeClientId,
        "shopee_secret_key": shopeeSecretKey,
      };
}

class Shortcuts {
  Pos? pos;

  Shortcuts({
    this.pos,
  });

  Shortcuts copyWith({
    Pos? pos,
  }) =>
      Shortcuts(
        pos: pos ?? this.pos,
      );

  factory Shortcuts.fromRawJson(String str) =>
      Shortcuts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shortcuts.fromJson(Map<String, dynamic> json) => Shortcuts(
        pos: json["pos"] == null ? null : Pos.fromJson(json["pos"]),
      );

  Map<String, dynamic> toJson() => {
        "pos": pos?.toJson(),
      };
}

class Pos {
  String? expressCheckout;
  String? payNCkeckout;
  String? draft;
  String? cancel;
  String? recentProductQuantity;
  String? weighingScale;
  String? editDiscount;
  String? editOrderTax;
  String? addPaymentRow;
  String? finalizePayment;
  String? addNewProduct;

  Pos({
    this.expressCheckout,
    this.payNCkeckout,
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

  Pos copyWith({
    String? expressCheckout,
    String? payNCkeckout,
    String? draft,
    String? cancel,
    String? recentProductQuantity,
    String? weighingScale,
    String? editDiscount,
    String? editOrderTax,
    String? addPaymentRow,
    String? finalizePayment,
    String? addNewProduct,
  }) =>
      Pos(
        expressCheckout: expressCheckout ?? this.expressCheckout,
        payNCkeckout: payNCkeckout ?? this.payNCkeckout,
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

  factory Pos.fromRawJson(String str) => Pos.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pos.fromJson(Map<String, dynamic> json) => Pos(
        expressCheckout: json["express_checkout"],
        payNCkeckout: json["pay_n_ckeckout"],
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
        "pay_n_ckeckout": payNCkeckout,
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

class SmsSettings {
  String? smsService;
  String? nexmoKey;
  String? nexmoSecret;
  String? nexmoFrom;
  String? twilioSid;
  String? twilioToken;
  String? twilioFrom;
  String? speedToken;
  String? speedFrom;
  String? smsStartLesson;
  String? url;
  String? sendToParamName;
  String? msgParamName;
  String? requestMethod;
  String? param1;
  String? paramVal1;
  String? param2;
  String? paramVal2;
  String? param3;
  String? paramVal3;
  String? param4;
  String? paramVal4;
  String? param5;
  String? paramVal5;
  String? param6;
  String? paramVal6;
  String? param7;
  String? paramVal7;
  String? param8;
  String? paramVal8;
  String? param9;
  String? paramVal9;
  String? param10;
  String? paramVal10;
  String? header1;
  String? header2;
  String? header3;
  String? headerVal1;
  String? headerVal2;
  String? headerVal3;

  SmsSettings({
    this.smsService,
    this.nexmoKey,
    this.nexmoSecret,
    this.nexmoFrom,
    this.twilioSid,
    this.twilioToken,
    this.twilioFrom,
    this.speedToken,
    this.speedFrom,
    this.smsStartLesson,
    this.url,
    this.sendToParamName,
    this.msgParamName,
    this.requestMethod,
    this.param1,
    this.paramVal1,
    this.param2,
    this.paramVal2,
    this.param3,
    this.paramVal3,
    this.param4,
    this.paramVal4,
    this.param5,
    this.paramVal5,
    this.param6,
    this.paramVal6,
    this.param7,
    this.paramVal7,
    this.param8,
    this.paramVal8,
    this.param9,
    this.paramVal9,
    this.param10,
    this.paramVal10,
    this.header1,
    this.header2,
    this.header3,
    this.headerVal1,
    this.headerVal2,
    this.headerVal3,
  });

  SmsSettings copyWith({
    String? smsService,
    String? nexmoKey,
    String? nexmoSecret,
    String? nexmoFrom,
    String? twilioSid,
    String? twilioToken,
    String? twilioFrom,
    String? speedToken,
    String? speedFrom,
    String? smsStartLesson,
    String? url,
    String? sendToParamName,
    String? msgParamName,
    String? requestMethod,
    String? param1,
    String? paramVal1,
    String? param2,
    String? paramVal2,
    String? param3,
    String? paramVal3,
    String? param4,
    String? paramVal4,
    String? param5,
    String? paramVal5,
    String? param6,
    String? paramVal6,
    String? param7,
    String? paramVal7,
    String? param8,
    String? paramVal8,
    String? param9,
    String? paramVal9,
    String? param10,
    String? paramVal10,
    String? header1,
    String? header2,
    String? header3,
    String? headerVal1,
    String? headerVal2,
    String? headerVal3,
  }) =>
      SmsSettings(
        smsService: smsService ?? this.smsService,
        nexmoKey: nexmoKey ?? this.nexmoKey,
        nexmoSecret: nexmoSecret ?? this.nexmoSecret,
        nexmoFrom: nexmoFrom ?? this.nexmoFrom,
        twilioSid: twilioSid ?? this.twilioSid,
        twilioToken: twilioToken ?? this.twilioToken,
        twilioFrom: twilioFrom ?? this.twilioFrom,
        speedToken: speedToken ?? this.speedToken,
        speedFrom: speedFrom ?? this.speedFrom,
        smsStartLesson: smsStartLesson ?? this.smsStartLesson,
        url: url ?? this.url,
        sendToParamName: sendToParamName ?? this.sendToParamName,
        msgParamName: msgParamName ?? this.msgParamName,
        requestMethod: requestMethod ?? this.requestMethod,
        param1: param1 ?? this.param1,
        paramVal1: paramVal1 ?? this.paramVal1,
        param2: param2 ?? this.param2,
        paramVal2: paramVal2 ?? this.paramVal2,
        param3: param3 ?? this.param3,
        paramVal3: paramVal3 ?? this.paramVal3,
        param4: param4 ?? this.param4,
        paramVal4: paramVal4 ?? this.paramVal4,
        param5: param5 ?? this.param5,
        paramVal5: paramVal5 ?? this.paramVal5,
        param6: param6 ?? this.param6,
        paramVal6: paramVal6 ?? this.paramVal6,
        param7: param7 ?? this.param7,
        paramVal7: paramVal7 ?? this.paramVal7,
        param8: param8 ?? this.param8,
        paramVal8: paramVal8 ?? this.paramVal8,
        param9: param9 ?? this.param9,
        paramVal9: paramVal9 ?? this.paramVal9,
        param10: param10 ?? this.param10,
        paramVal10: paramVal10 ?? this.paramVal10,
        header1: header1 ?? this.header1,
        header2: header2 ?? this.header2,
        header3: header3 ?? this.header3,
        headerVal1: headerVal1 ?? this.headerVal1,
        headerVal2: headerVal2 ?? this.headerVal2,
        headerVal3: headerVal3 ?? this.headerVal3,
      );

  factory SmsSettings.fromRawJson(String str) =>
      SmsSettings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SmsSettings.fromJson(Map<String, dynamic> json) => SmsSettings(
        smsService: json["sms_service"],
        nexmoKey: json["nexmo_key"],
        nexmoSecret: json["nexmo_secret"],
        nexmoFrom: json["nexmo_from"],
        twilioSid: json["twilio_sid"],
        twilioToken: json["twilio_token"],
        twilioFrom: json["twilio_from"],
        speedToken: json["speed_token"],
        speedFrom: json["speed_from"],
        smsStartLesson: json["sms_start_lesson"],
        url: json["url"],
        sendToParamName: json["send_to_param_name"],
        msgParamName: json["msg_param_name"],
        requestMethod: json["request_method"],
        param1: json["param_1"],
        paramVal1: json["param_val_1"],
        param2: json["param_2"],
        paramVal2: json["param_val_2"],
        param3: json["param_3"],
        paramVal3: json["param_val_3"],
        param4: json["param_4"],
        paramVal4: json["param_val_4"],
        param5: json["param_5"],
        paramVal5: json["param_val_5"],
        param6: json["param_6"],
        paramVal6: json["param_val_6"],
        param7: json["param_7"],
        paramVal7: json["param_val_7"],
        param8: json["param_8"],
        paramVal8: json["param_val_8"],
        param9: json["param_9"],
        paramVal9: json["param_val_9"],
        param10: json["param_10"],
        paramVal10: json["param_val_10"],
        header1: json["header_1"],
        header2: json["header_2"],
        header3: json["header_3"],
        headerVal1: json["header_val_1"],
        headerVal2: json["header_val_2"],
        headerVal3: json["header_val_3"],
      );

  Map<String, dynamic> toJson() => {
        "sms_service": smsService,
        "nexmo_key": nexmoKey,
        "nexmo_secret": nexmoSecret,
        "nexmo_from": nexmoFrom,
        "twilio_sid": twilioSid,
        "twilio_token": twilioToken,
        "twilio_from": twilioFrom,
        "speed_token": speedToken,
        "speed_from": speedFrom,
        "sms_start_lesson": smsStartLesson,
        "url": url,
        "send_to_param_name": sendToParamName,
        "msg_param_name": msgParamName,
        "request_method": requestMethod,
        "param_1": param1,
        "param_val_1": paramVal1,
        "param_2": param2,
        "param_val_2": paramVal2,
        "param_3": param3,
        "param_val_3": paramVal3,
        "param_4": param4,
        "param_val_4": paramVal4,
        "param_5": param5,
        "param_val_5": paramVal5,
        "param_6": param6,
        "param_val_6": paramVal6,
        "param_7": param7,
        "param_val_7": paramVal7,
        "param_8": param8,
        "param_val_8": paramVal8,
        "param_9": param9,
        "param_val_9": paramVal9,
        "param_10": param10,
        "param_val_10": paramVal10,
        "header_1": header1,
        "header_2": header2,
        "header_3": header3,
        "header_val_1": headerVal1,
        "header_val_2": headerVal2,
        "header_val_3": headerVal3,
      };
}

class WeighingScaleSetting {
  String? labelPrefix;
  String? productSkuLength;
  String? qtyLength;
  String? qtyLengthDecimal;

  WeighingScaleSetting({
    this.labelPrefix,
    this.productSkuLength,
    this.qtyLength,
    this.qtyLengthDecimal,
  });

  WeighingScaleSetting copyWith({
    String? labelPrefix,
    String? productSkuLength,
    String? qtyLength,
    String? qtyLengthDecimal,
  }) =>
      WeighingScaleSetting(
        labelPrefix: labelPrefix ?? this.labelPrefix,
        productSkuLength: productSkuLength ?? this.productSkuLength,
        qtyLength: qtyLength ?? this.qtyLength,
        qtyLengthDecimal: qtyLengthDecimal ?? this.qtyLengthDecimal,
      );

  factory WeighingScaleSetting.fromRawJson(String str) =>
      WeighingScaleSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeighingScaleSetting.fromJson(Map<String, dynamic> json) =>
      WeighingScaleSetting(
        labelPrefix: json["label_prefix"],
        productSkuLength: json["product_sku_length"],
        qtyLength: json["qty_length"],
        qtyLengthDecimal: json["qty_length_decimal"],
      );

  Map<String, dynamic> toJson() => {
        "label_prefix": labelPrefix,
        "product_sku_length": productSkuLength,
        "qty_length": qtyLength,
        "qty_length_decimal": qtyLengthDecimal,
      };
}
