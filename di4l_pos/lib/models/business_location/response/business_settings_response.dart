// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:di4l_pos/models/business_location/request/update_business_location_request.dart';

class BusinessSettingsResponse {
  BusinessSettings? data;

  BusinessSettingsResponse({this.data});

  BusinessSettingsResponse.fromJson(Map<dynamic, dynamic> json) {
    data =
        json['data'] != null ? BusinessSettings.fromJson(json['data']) : null;
  }

  factory BusinessSettingsResponse.fromRawJson(dynamic str) =>
      BusinessSettingsResponse.fromJson(json.decode(str));

  dynamic toRawJson() => json.encode(toJson());

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }

  BusinessSettingsResponse copyWith({
    BusinessSettings? data,
  }) {
    return BusinessSettingsResponse(
      data: data ?? this.data,
    );
  }
}

class BusinessSettings {
  dynamic id;
  dynamic name;
  dynamic currencyId;
  dynamic startDate;
  dynamic taxNumber1;
  dynamic taxLabel1;
  dynamic taxNumber2;
  dynamic taxLabel2;
  dynamic codeLabel1;
  dynamic code1;
  dynamic codeLabel2;
  dynamic code2;
  dynamic defaultSalesTax;
  dynamic defaultProfitPercent;
  dynamic ownerId;
  dynamic timeZone;
  dynamic fyStartMonth;
  dynamic accountingMethod;
  dynamic defaultSalesDiscount;
  dynamic sellPriceTax;
  dynamic logo;
  dynamic skuPrefix;
  dynamic enableProductExpiry;
  dynamic expiryType;
  dynamic onProductExpiry;
  dynamic stopSellingBefore;
  dynamic enableTooltip;
  dynamic purchaseInDiffCurrency;
  dynamic purchaseCurrencyId;
  dynamic pExchangeRate;
  dynamic transactionEditDays;
  dynamic stockExpiryAlertDays;
  KeyboardShortcuts? keyboardShortcuts;
  PosSettings? posSettings;
  dynamic manufacturingSettings;
  dynamic woocommerceSkippedOrders;
  dynamic woocommerceWhOcSecret;
  dynamic woocommerceWhOuSecret;
  dynamic woocommerceWhOdSecret;
  dynamic woocommerceWhOrSecret;
  dynamic essentialsSettings;
  WeighingScaleSetting? weighingScaleSetting;
  dynamic enableBrand;
  dynamic enableCategory;
  dynamic enableSubCategory;
  dynamic enablePriceTax;
  dynamic enablePurchaseStatus;
  dynamic enableLotNumber;
  dynamic defaultUnit;
  dynamic enableSubUnits;
  dynamic enableRacks;
  dynamic enableRow;
  dynamic enablePosition;
  dynamic enableEditingProductFromPurchase;
  dynamic salesCmsnAgnt;
  dynamic itemAdditionMethod;
  dynamic enableInlineTax;
  dynamic currencySymbolPlacement;
  List<dynamic>? enabledModules;
  dynamic dateFormat;
  dynamic timeFormat;
  RefNoPrefixes? refNoPrefixes;
  dynamic themeColor;
  dynamic createdBy;
  dynamic assetSettings;
  dynamic repairSettings;
  dynamic enableRp;
  dynamic rpName;
  dynamic amountForUnitRp;
  dynamic minOrderTotalForRp;
  dynamic maxRpPerOrder;
  dynamic redeemAmountPerUnitRp;
  dynamic minOrderTotalForRedeem;
  dynamic minRedeemPoint;
  dynamic maxRedeemPoint;
  dynamic rpExpiryPeriod;
  dynamic rpExpiryType;
  EmailSettings? emailSettings;
  SmsSettings? smsSettings;
  CustomLabels? customLabels;
  dynamic commonSettings;
  dynamic isActive;
  dynamic isSetupModules;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic lastLogin;
  List<Locations>? locations;
  CurrencySettings? currency;
  List<Printers>? printers;
  dynamic currencyPrecision;
  dynamic quantityPrecision;

  BusinessSettings(
      {this.id,
      this.name,
      this.currencyId,
      this.startDate,
      this.taxNumber1,
      this.taxLabel1,
      this.taxNumber2,
      this.taxLabel2,
      this.codeLabel1,
      this.code1,
      this.codeLabel2,
      this.code2,
      this.defaultSalesTax,
      this.defaultProfitPercent,
      this.ownerId,
      this.timeZone,
      this.fyStartMonth,
      this.accountingMethod,
      this.defaultSalesDiscount,
      this.sellPriceTax,
      this.logo,
      this.skuPrefix,
      this.enableProductExpiry,
      this.expiryType,
      this.onProductExpiry,
      this.stopSellingBefore,
      this.enableTooltip,
      this.purchaseInDiffCurrency,
      this.purchaseCurrencyId,
      this.pExchangeRate,
      this.transactionEditDays,
      this.stockExpiryAlertDays,
      this.keyboardShortcuts,
      this.posSettings,
      this.manufacturingSettings,
      this.woocommerceSkippedOrders,
      this.woocommerceWhOcSecret,
      this.woocommerceWhOuSecret,
      this.woocommerceWhOdSecret,
      this.woocommerceWhOrSecret,
      this.essentialsSettings,
      this.weighingScaleSetting,
      this.enableBrand,
      this.enableCategory,
      this.enableSubCategory,
      this.enablePriceTax,
      this.enablePurchaseStatus,
      this.enableLotNumber,
      this.defaultUnit,
      this.enableSubUnits,
      this.enableRacks,
      this.enableRow,
      this.enablePosition,
      this.enableEditingProductFromPurchase,
      this.salesCmsnAgnt,
      this.itemAdditionMethod,
      this.enableInlineTax,
      this.currencySymbolPlacement,
      this.enabledModules,
      this.dateFormat,
      this.timeFormat,
      this.refNoPrefixes,
      this.themeColor,
      this.createdBy,
      this.assetSettings,
      this.repairSettings,
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
      this.emailSettings,
      this.smsSettings,
      this.customLabels,
      this.commonSettings,
      this.isActive,
      this.isSetupModules,
      this.createdAt,
      this.updatedAt,
      this.lastLogin,
      this.locations,
      this.currency,
      this.printers,
      this.currencyPrecision,
      this.quantityPrecision});
  factory BusinessSettings.fromRawJson(dynamic str) =>
      BusinessSettings.fromJson(json.decode(str));

  dynamic toRawJson() => json.encode(toJson());

  BusinessSettings.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    currencyId = json['currency_id'];
    startDate = json['start_date'];
    taxNumber1 = json['tax_number_1'];
    taxLabel1 = json['tax_label_1'];
    taxNumber2 = json['tax_number_2'];
    taxLabel2 = json['tax_label_2'];
    codeLabel1 = json['code_label_1'];
    code1 = json['code_1'];
    codeLabel2 = json['code_label_2'];
    code2 = json['code_2'];
    defaultSalesTax = json['default_sales_tax'];
    defaultProfitPercent = json['default_profit_percent'];
    ownerId = json['owner_id'];
    timeZone = json['time_zone'];
    fyStartMonth = json['fy_start_month'];
    accountingMethod = json['accounting_method'];
    defaultSalesDiscount = json['default_sales_discount'];
    sellPriceTax = json['sell_price_tax'];
    logo = json['logo'];
    skuPrefix = json['sku_prefix'];
    enableProductExpiry = json['enable_product_expiry'];
    expiryType = json['expiry_type'];
    onProductExpiry = json['on_product_expiry'];
    stopSellingBefore = json['stop_selling_before'];
    enableTooltip = json['enable_tooltip'];
    purchaseInDiffCurrency = json['purchase_in_diff_currency'];
    purchaseCurrencyId = json['purchase_currency_id'];
    pExchangeRate = json['p_exchange_rate'];
    transactionEditDays = json['transaction_edit_days'];
    stockExpiryAlertDays = json['stock_expiry_alert_days'];
    keyboardShortcuts = json['keyboard_shortcuts'] != null
        ? KeyboardShortcuts.fromJson(json['keyboard_shortcuts'])
        : null;
    posSettings = json['pos_settings'] != null
        ? PosSettings.fromJson(json['pos_settings'])
        : null;
    manufacturingSettings = json['manufacturing_settings'];
    woocommerceSkippedOrders = json['woocommerce_skipped_orders'];
    woocommerceWhOcSecret = json['woocommerce_wh_oc_secret'];
    woocommerceWhOuSecret = json['woocommerce_wh_ou_secret'];
    woocommerceWhOdSecret = json['woocommerce_wh_od_secret'];
    woocommerceWhOrSecret = json['woocommerce_wh_or_secret'];
    essentialsSettings = json['essentials_settings'];
    weighingScaleSetting = json['weighing_scale_setting'] != null
        ? WeighingScaleSetting.fromJson(json['weighing_scale_setting'])
        : null;
    enableBrand = json['enable_brand'];
    enableCategory = json['enable_category'];
    enableSubCategory = json['enable_sub_category'];
    enablePriceTax = json['enable_price_tax'];
    enablePurchaseStatus = json['enable_purchase_status'];
    enableLotNumber = json['enable_lot_number'];
    defaultUnit = json['default_unit'];
    enableSubUnits = json['enable_sub_units'];
    enableRacks = json['enable_racks'];
    enableRow = json['enable_row'];
    enablePosition = json['enable_position'];
    enableEditingProductFromPurchase =
        json['enable_editing_product_from_purchase'];
    salesCmsnAgnt = json['sales_cmsn_agnt'];
    itemAdditionMethod = json['item_addition_method'];
    enableInlineTax = json['enable_inline_tax'];
    currencySymbolPlacement = json['currency_symbol_placement'];
    enabledModules = json['enabled_modules'] == null
        ? null
        : json['enabled_modules'].cast<dynamic>();
    dateFormat = json['date_format'];
    timeFormat = json['time_format'];
    refNoPrefixes = json['ref_no_prefixes'] != null
        ? RefNoPrefixes.fromJson(json['ref_no_prefixes'])
        : null;
    themeColor = json['theme_color'];
    createdBy = json['created_by'];
    assetSettings = json['asset_settings'];
    repairSettings = json['repair_settings'];
    enableRp = json['enable_rp'];
    rpName = json['rp_name'];
    amountForUnitRp = json['amount_for_unit_rp'];
    minOrderTotalForRp = json['min_order_total_for_rp'];
    maxRpPerOrder = json['max_rp_per_order'];
    redeemAmountPerUnitRp = json['redeem_amount_per_unit_rp'];
    minOrderTotalForRedeem = json['min_order_total_for_redeem'];
    minRedeemPoint = json['min_redeem_point'];
    maxRedeemPoint = json['max_redeem_point'];
    rpExpiryPeriod = json['rp_expiry_period'];
    rpExpiryType = json['rp_expiry_type'];
    emailSettings = json['email_settings'] != null
        ? EmailSettings.fromJson(json['email_settings'])
        : null;
    smsSettings = json['sms_settings'] != null
        ? SmsSettings.fromJson(json['sms_settings'])
        : null;
    customLabels = json['custom_labels'] != null
        ? CustomLabels.fromJson(json['custom_labels'])
        : null;
    commonSettings = json['common_settings'];
    isActive = json['is_active'];
    isSetupModules = json['is_setup_modules'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    lastLogin = json['last_login'];
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) {
        locations!.add(Locations.fromJson(v));
      });
    }
    currency = json['currency'] != null
        ? CurrencySettings.fromJson(json['currency'])
        : null;
    if (json['printers'] != null) {
      printers = <Printers>[];
      json['printers'].forEach((v) {
        printers!.add(Printers.fromJson(v));
      });
    }
    currencyPrecision = json['currency_precision'];
    quantityPrecision = json['quantity_precision'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['currency_id'] = currencyId;
    data['start_date'] = startDate;
    data['tax_number_1'] = taxNumber1;
    data['tax_label_1'] = taxLabel1;
    data['tax_number_2'] = taxNumber2;
    data['tax_label_2'] = taxLabel2;
    data['code_label_1'] = codeLabel1;
    data['code_1'] = code1;
    data['code_label_2'] = codeLabel2;
    data['code_2'] = code2;
    data['default_sales_tax'] = defaultSalesTax;
    data['default_profit_percent'] = defaultProfitPercent;
    data['owner_id'] = ownerId;
    data['time_zone'] = timeZone;
    data['fy_start_month'] = fyStartMonth;
    data['accounting_method'] = accountingMethod;
    data['default_sales_discount'] = defaultSalesDiscount;
    data['sell_price_tax'] = sellPriceTax;
    data['logo'] = logo;
    data['sku_prefix'] = skuPrefix;
    data['enable_product_expiry'] = enableProductExpiry;
    data['expiry_type'] = expiryType;
    data['on_product_expiry'] = onProductExpiry;
    data['stop_selling_before'] = stopSellingBefore;
    data['enable_tooltip'] = enableTooltip;
    data['purchase_in_diff_currency'] = purchaseInDiffCurrency;
    data['purchase_currency_id'] = purchaseCurrencyId;
    data['p_exchange_rate'] = pExchangeRate;
    data['transaction_edit_days'] = transactionEditDays;
    data['stock_expiry_alert_days'] = stockExpiryAlertDays;
    if (keyboardShortcuts != null) {
      data['keyboard_shortcuts'] = keyboardShortcuts!.toJson();
    }
    if (posSettings != null) {
      data['pos_settings'] = posSettings!.toJson();
    }
    data['manufacturing_settings'] = manufacturingSettings;
    data['woocommerce_skipped_orders'] = woocommerceSkippedOrders;
    data['woocommerce_wh_oc_secret'] = woocommerceWhOcSecret;
    data['woocommerce_wh_ou_secret'] = woocommerceWhOuSecret;
    data['woocommerce_wh_od_secret'] = woocommerceWhOdSecret;
    data['woocommerce_wh_or_secret'] = woocommerceWhOrSecret;
    data['essentials_settings'] = essentialsSettings;
    if (weighingScaleSetting != null) {
      data['weighing_scale_setting'] = weighingScaleSetting!.toJson();
    }
    data['enable_brand'] = enableBrand;
    data['enable_category'] = enableCategory;
    data['enable_sub_category'] = enableSubCategory;
    data['enable_price_tax'] = enablePriceTax;
    data['enable_purchase_status'] = enablePurchaseStatus;
    data['enable_lot_number'] = enableLotNumber;
    data['default_unit'] = defaultUnit;
    data['enable_sub_units'] = enableSubUnits;
    data['enable_racks'] = enableRacks;
    data['enable_row'] = enableRow;
    data['enable_position'] = enablePosition;
    data['enable_editing_product_from_purchase'] =
        enableEditingProductFromPurchase;
    data['sales_cmsn_agnt'] = salesCmsnAgnt;
    data['item_addition_method'] = itemAdditionMethod;
    data['enable_inline_tax'] = enableInlineTax;
    data['currency_symbol_placement'] = currencySymbolPlacement;
    data['enabled_modules'] = enabledModules;
    data['date_format'] = dateFormat;
    data['time_format'] = timeFormat;
    if (refNoPrefixes != null) {
      data['ref_no_prefixes'] = refNoPrefixes!.toJson();
    }
    data['theme_color'] = themeColor;
    data['created_by'] = createdBy;
    data['asset_settings'] = assetSettings;
    data['repair_settings'] = repairSettings;
    data['enable_rp'] = enableRp;
    data['rp_name'] = rpName;
    data['amount_for_unit_rp'] = amountForUnitRp;
    data['min_order_total_for_rp'] = minOrderTotalForRp;
    data['max_rp_per_order'] = maxRpPerOrder;
    data['redeem_amount_per_unit_rp'] = redeemAmountPerUnitRp;
    data['min_order_total_for_redeem'] = minOrderTotalForRedeem;
    data['min_redeem_point'] = minRedeemPoint;
    data['max_redeem_point'] = maxRedeemPoint;
    data['rp_expiry_period'] = rpExpiryPeriod;
    data['rp_expiry_type'] = rpExpiryType;
    if (emailSettings != null) {
      data['email_settings'] = emailSettings!.toJson();
    }
    if (smsSettings != null) {
      data['sms_settings'] = smsSettings!.toJson();
    }
    if (customLabels != null) {
      data['custom_labels'] = customLabels!.toJson();
    }
    if (commonSettings != null) {
      data['common_settings'] = commonSettings;
    }
    data['is_active'] = isActive;
    data['is_setup_modules'] = isSetupModules;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['last_login'] = lastLogin;
    if (locations != null) {
      data['locations'] = locations!.map((v) => v.toJson()).toList();
    }
    if (currency != null) {
      data['currency'] = currency!.toJson();
    }
    if (printers != null) {
      data['printers'] = printers!.map((v) => v.toJson()).toList();
    }
    data['currency_precision'] = currencyPrecision;
    data['quantity_precision'] = quantityPrecision;
    return data;
  }
}

class KeyboardShortcuts {
  Pos? pos;

  KeyboardShortcuts({this.pos});

  KeyboardShortcuts.fromJson(Map<dynamic, dynamic> json) {
    pos = json['pos'] != null ? Pos.fromJson(json['pos']) : null;
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    if (pos != null) {
      data['pos'] = pos!.toJson();
    }
    return data;
  }
}

class Pos {
  dynamic expressCheckout;
  dynamic payNCkeckout;
  dynamic draft;
  dynamic cancel;
  dynamic recentProductQuantity;
  dynamic weighingScale;
  dynamic editDiscount;
  dynamic editOrderTax;
  dynamic addPaymentRow;
  dynamic finalizePayment;
  dynamic addNewProduct;

  Pos(
      {this.expressCheckout,
      this.payNCkeckout,
      this.draft,
      this.cancel,
      this.recentProductQuantity,
      this.weighingScale,
      this.editDiscount,
      this.editOrderTax,
      this.addPaymentRow,
      this.finalizePayment,
      this.addNewProduct});

  Pos.fromJson(Map<dynamic, dynamic> json) {
    expressCheckout = json['express_checkout'];
    payNCkeckout = json['pay_n_ckeckout'];
    draft = json['draft'];
    cancel = json['cancel'];
    recentProductQuantity = json['recent_product_quantity'];
    weighingScale = json['weighing_scale'];
    editDiscount = json['edit_discount'];
    editOrderTax = json['edit_order_tax'];
    addPaymentRow = json['add_payment_row'];
    finalizePayment = json['finalize_payment'];
    addNewProduct = json['add_new_product'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['express_checkout'] = expressCheckout;
    data['pay_n_ckeckout'] = payNCkeckout;
    data['draft'] = draft;
    data['cancel'] = cancel;
    data['recent_product_quantity'] = recentProductQuantity;
    data['weighing_scale'] = weighingScale;
    data['edit_discount'] = editDiscount;
    data['edit_order_tax'] = editOrderTax;
    data['add_payment_row'] = addPaymentRow;
    data['finalize_payment'] = finalizePayment;
    data['add_new_product'] = addNewProduct;
    return data;
  }
}

class PosSettings {
  dynamic amountRoundingMethod;
  dynamic enableMsp;
  dynamic allowOverselling;
  dynamic cmmsnCalculationType;
  dynamic enablePaymentLink;
  dynamic razorPayKeyId;
  dynamic razorPayKeySecret;
  dynamic stripePublicKey;
  dynamic stripeSecretKey;
  dynamic cashDenominations;
  dynamic disablePayCheckout;
  dynamic disableDraft;
  dynamic disableExpressCheckout;
  dynamic hideProductSuggestion;
  dynamic hideRecentTrans;
  dynamic disableDiscount;
  dynamic disableOrderTax;
  dynamic isPosSubtotalEditable;

  PosSettings(
      {this.amountRoundingMethod,
      this.enableMsp,
      this.allowOverselling,
      this.cmmsnCalculationType,
      this.enablePaymentLink,
      this.razorPayKeyId,
      this.razorPayKeySecret,
      this.stripePublicKey,
      this.stripeSecretKey,
      this.cashDenominations,
      this.disablePayCheckout,
      this.disableDraft,
      this.disableExpressCheckout,
      this.hideProductSuggestion,
      this.hideRecentTrans,
      this.disableDiscount,
      this.disableOrderTax,
      this.isPosSubtotalEditable});

  PosSettings.fromJson(Map<dynamic, dynamic> json) {
    amountRoundingMethod = json['amount_rounding_method'];
    enableMsp = json['enable_msp'];
    allowOverselling = json['allow_overselling'];
    cmmsnCalculationType = json['cmmsn_calculation_type'];
    enablePaymentLink = json['enable_payment_link'];
    razorPayKeyId = json['razor_pay_key_id'];
    razorPayKeySecret = json['razor_pay_key_secret'];
    stripePublicKey = json['stripe_public_key'];
    stripeSecretKey = json['stripe_secret_key'];
    cashDenominations = json['cash_denominations'];
    disablePayCheckout = json['disable_pay_checkout'];
    disableDraft = json['disable_draft'];
    disableExpressCheckout = json['disable_express_checkout'];
    hideProductSuggestion = json['hide_product_suggestion'];
    hideRecentTrans = json['hide_recent_trans'];
    disableDiscount = json['disable_discount'];
    disableOrderTax = json['disable_order_tax'];
    isPosSubtotalEditable = json['is_pos_subtotal_editable'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['amount_rounding_method'] = amountRoundingMethod;
    data['enable_msp'] = enableMsp;
    data['allow_overselling'] = allowOverselling;
    data['cmmsn_calculation_type'] = cmmsnCalculationType;
    data['enable_payment_link'] = enablePaymentLink;
    data['razor_pay_key_id'] = razorPayKeyId;
    data['razor_pay_key_secret'] = razorPayKeySecret;
    data['stripe_public_key'] = stripePublicKey;
    data['stripe_secret_key'] = stripeSecretKey;
    data['cash_denominations'] = cashDenominations;
    data['disable_pay_checkout'] = disablePayCheckout;
    data['disable_draft'] = disableDraft;
    data['disable_express_checkout'] = disableExpressCheckout;
    data['hide_product_suggestion'] = hideProductSuggestion;
    data['hide_recent_trans'] = hideRecentTrans;
    data['disable_discount'] = disableDiscount;
    data['disable_order_tax'] = disableOrderTax;
    data['is_pos_subtotal_editable'] = isPosSubtotalEditable;
    return data;
  }
}

class WeighingScaleSetting {
  dynamic labelPrefix;
  dynamic productSkuLength;
  dynamic qtyLength;
  dynamic qtyLengthDecimal;

  WeighingScaleSetting(
      {this.labelPrefix,
      this.productSkuLength,
      this.qtyLength,
      this.qtyLengthDecimal});

  WeighingScaleSetting.fromJson(Map<dynamic, dynamic> json) {
    labelPrefix = json['label_prefix'];
    productSkuLength = json['product_sku_length'];
    qtyLength = json['qty_length'];
    qtyLengthDecimal = json['qty_length_decimal'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['label_prefix'] = labelPrefix;
    data['product_sku_length'] = productSkuLength;
    data['qty_length'] = qtyLength;
    data['qty_length_decimal'] = qtyLengthDecimal;
    return data;
  }
}

class RefNoPrefixes {
  dynamic purchase;
  dynamic purchaseReturn;
  dynamic purchaseOrder;
  dynamic stockTransfer;
  dynamic stockAdjustment;
  dynamic sellReturn;
  dynamic expense;
  dynamic contacts;
  dynamic purchasePayment;
  dynamic sellPayment;
  dynamic expensePayment;
  dynamic businessLocation;
  dynamic username;
  dynamic subscription;
  dynamic draft;
  dynamic salesOrder;

  RefNoPrefixes(
      {this.purchase,
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
      this.salesOrder});

  RefNoPrefixes.fromJson(Map<dynamic, dynamic> json) {
    purchase = json['purchase'];
    purchaseReturn = json['purchase_return'];
    purchaseOrder = json['purchase_order'];
    stockTransfer = json['stock_transfer'];
    stockAdjustment = json['stock_adjustment'];
    sellReturn = json['sell_return'];
    expense = json['expense'];
    contacts = json['contacts'];
    purchasePayment = json['purchase_payment'];
    sellPayment = json['sell_payment'];
    expensePayment = json['expense_payment'];
    businessLocation = json['business_location'];
    username = json['username'];
    subscription = json['subscription'];
    draft = json['draft'];
    salesOrder = json['sales_order'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['purchase'] = purchase;
    data['purchase_return'] = purchaseReturn;
    data['purchase_order'] = purchaseOrder;
    data['stock_transfer'] = stockTransfer;
    data['stock_adjustment'] = stockAdjustment;
    data['sell_return'] = sellReturn;
    data['expense'] = expense;
    data['contacts'] = contacts;
    data['purchase_payment'] = purchasePayment;
    data['sell_payment'] = sellPayment;
    data['expense_payment'] = expensePayment;
    data['business_location'] = businessLocation;
    data['username'] = username;
    data['subscription'] = subscription;
    data['draft'] = draft;
    data['sales_order'] = salesOrder;
    return data;
  }
}

class EmailSettings {
  dynamic mailDriver;
  dynamic mailHost;
  dynamic mailPort;
  dynamic mailUsername;
  dynamic mailPassword;
  dynamic mailEncryption;
  dynamic mailFromAddress;
  dynamic mailFromName;
  dynamic mailFromStartLesson;

  EmailSettings(
      {this.mailDriver,
      this.mailHost,
      this.mailPort,
      this.mailUsername,
      this.mailPassword,
      this.mailEncryption,
      this.mailFromAddress,
      this.mailFromName,
      this.mailFromStartLesson});

  EmailSettings.fromJson(Map<dynamic, dynamic> json) {
    mailDriver = json['mail_driver'];
    mailHost = json['mail_host'];
    mailPort = json['mail_port'];
    mailUsername = json['mail_username'];
    mailPassword = json['mail_password'];
    mailEncryption = json['mail_encryption'];
    mailFromAddress = json['mail_from_address'];
    mailFromName = json['mail_from_name'];
    mailFromStartLesson = json['mail_from_start_lesson'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['mail_driver'] = mailDriver;
    data['mail_host'] = mailHost;
    data['mail_port'] = mailPort;
    data['mail_username'] = mailUsername;
    data['mail_password'] = mailPassword;
    data['mail_encryption'] = mailEncryption;
    data['mail_from_address'] = mailFromAddress;
    data['mail_from_name'] = mailFromName;
    data['mail_from_start_lesson'] = mailFromStartLesson;
    return data;
  }
}

class SmsSettings {
  dynamic smsService;
  dynamic smsStartLesson;
  dynamic nexmoKey;
  dynamic nexmoSecret;
  dynamic nexmoFrom;
  dynamic twilioSid;
  dynamic twilioToken;
  dynamic twilioFrom;
  dynamic url;
  dynamic sendToParamName;
  dynamic msgParamName;
  dynamic requestMethod;
  dynamic header1;
  dynamic headerVal1;
  dynamic header2;
  dynamic headerVal2;
  dynamic header3;
  dynamic headerVal3;
  dynamic param1;
  dynamic paramVal1;
  dynamic param2;
  dynamic paramVal2;
  dynamic param3;
  dynamic paramVal3;
  dynamic param4;
  dynamic paramVal4;
  dynamic param5;
  dynamic paramVal5;
  dynamic param6;
  dynamic paramVal6;
  dynamic param7;
  dynamic paramVal7;
  dynamic param8;
  dynamic paramVal8;
  dynamic param9;
  dynamic paramVal9;
  dynamic param10;
  dynamic paramVal10;

  SmsSettings(
      {this.smsService,
      this.smsStartLesson,
      this.nexmoKey,
      this.nexmoSecret,
      this.nexmoFrom,
      this.twilioSid,
      this.twilioToken,
      this.twilioFrom,
      this.url,
      this.sendToParamName,
      this.msgParamName,
      this.requestMethod,
      this.header1,
      this.headerVal1,
      this.header2,
      this.headerVal2,
      this.header3,
      this.headerVal3,
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
      this.paramVal10});

  SmsSettings.fromJson(Map<dynamic, dynamic> json) {
    smsService = json['sms_service'];
    smsStartLesson = json['sms_start_lesson'];
    nexmoKey = json['nexmo_key'];
    nexmoSecret = json['nexmo_secret'];
    nexmoFrom = json['nexmo_from'];
    twilioSid = json['twilio_sid'];
    twilioToken = json['twilio_token'];
    twilioFrom = json['twilio_from'];
    url = json['url'];
    sendToParamName = json['send_to_param_name'];
    msgParamName = json['msg_param_name'];
    requestMethod = json['request_method'];
    header1 = json['header_1'];
    headerVal1 = json['header_val_1'];
    header2 = json['header_2'];
    headerVal2 = json['header_val_2'];
    header3 = json['header_3'];
    headerVal3 = json['header_val_3'];
    param1 = json['param_1'];
    paramVal1 = json['param_val_1'];
    param2 = json['param_2'];
    paramVal2 = json['param_val_2'];
    param3 = json['param_3'];
    paramVal3 = json['param_val_3'];
    param4 = json['param_4'];
    paramVal4 = json['param_val_4'];
    param5 = json['param_5'];
    paramVal5 = json['param_val_5'];
    param6 = json['param_6'];
    paramVal6 = json['param_val_6'];
    param7 = json['param_7'];
    paramVal7 = json['param_val_7'];
    param8 = json['param_8'];
    paramVal8 = json['param_val_8'];
    param9 = json['param_9'];
    paramVal9 = json['param_val_9'];
    param10 = json['param_10'];
    paramVal10 = json['param_val_10'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['sms_service'] = smsService;
    data['sms_start_lesson'] = smsStartLesson;
    data['nexmo_key'] = nexmoKey;
    data['nexmo_secret'] = nexmoSecret;
    data['nexmo_from'] = nexmoFrom;
    data['twilio_sid'] = twilioSid;
    data['twilio_token'] = twilioToken;
    data['twilio_from'] = twilioFrom;
    data['url'] = url;
    data['send_to_param_name'] = sendToParamName;
    data['msg_param_name'] = msgParamName;
    data['request_method'] = requestMethod;
    data['header_1'] = header1;
    data['header_val_1'] = headerVal1;
    data['header_2'] = header2;
    data['header_val_2'] = headerVal2;
    data['header_3'] = header3;
    data['header_val_3'] = headerVal3;
    data['param_1'] = param1;
    data['param_val_1'] = paramVal1;
    data['param_2'] = param2;
    data['param_val_2'] = paramVal2;
    data['param_3'] = param3;
    data['param_val_3'] = paramVal3;
    data['param_4'] = param4;
    data['param_val_4'] = paramVal4;
    data['param_5'] = param5;
    data['param_val_5'] = paramVal5;
    data['param_6'] = param6;
    data['param_val_6'] = paramVal6;
    data['param_7'] = param7;
    data['param_val_7'] = paramVal7;
    data['param_8'] = param8;
    data['param_val_8'] = paramVal8;
    data['param_9'] = param9;
    data['param_val_9'] = paramVal9;
    data['param_10'] = param10;
    data['param_val_10'] = paramVal10;
    return data;
  }
}

class CustomLabels {
  Payments? payments;
  Contact? contact;
  Product? product;
  Product? location;
  Product? user;
  Product? purchase;
  PurchaseShipping? purchaseShipping;
  Product? sell;
  Shipping? shipping;
  TypesOfService? typesOfService;

  CustomLabels(
      {this.payments,
      this.contact,
      this.product,
      this.location,
      this.user,
      this.purchase,
      this.purchaseShipping,
      this.sell,
      this.shipping,
      this.typesOfService});

  CustomLabels.fromJson(Map<dynamic, dynamic> json) {
    payments =
        json['payments'] != null ? Payments.fromJson(json['payments']) : null;
    contact =
        json['contact'] != null ? Contact.fromJson(json['contact']) : null;
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
    location =
        json['location'] != null ? Product.fromJson(json['location']) : null;
    user = json['user'] != null ? Product.fromJson(json['user']) : null;
    purchase =
        json['purchase'] != null ? Product.fromJson(json['purchase']) : null;
    purchaseShipping = json['purchase_shipping'] != null
        ? PurchaseShipping.fromJson(json['purchase_shipping'])
        : null;
    sell = json['sell'] != null ? Product.fromJson(json['sell']) : null;
    shipping =
        json['shipping'] != null ? Shipping.fromJson(json['shipping']) : null;
    typesOfService = json['types_of_service'] != null
        ? TypesOfService.fromJson(json['types_of_service'])
        : null;
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    if (payments != null) {
      data['payments'] = payments!.toJson();
    }
    if (contact != null) {
      data['contact'] = contact!.toJson();
    }
    if (product != null) {
      data['product'] = product!.toJson();
    }
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (purchase != null) {
      data['purchase'] = purchase!.toJson();
    }
    if (purchaseShipping != null) {
      data['purchase_shipping'] = purchaseShipping!.toJson();
    }
    if (sell != null) {
      data['sell'] = sell!.toJson();
    }
    if (shipping != null) {
      data['shipping'] = shipping!.toJson();
    }
    if (typesOfService != null) {
      data['types_of_service'] = typesOfService!.toJson();
    }
    return data;
  }
}

class Payments {
  dynamic customPay1;
  dynamic customPay2;
  dynamic customPay3;
  dynamic customPay4;
  dynamic customPay5;
  dynamic customPay6;
  dynamic customPay7;

  Payments(
      {this.customPay1,
      this.customPay2,
      this.customPay3,
      this.customPay4,
      this.customPay5,
      this.customPay6,
      this.customPay7});

  Payments.fromJson(Map<dynamic, dynamic> json) {
    customPay1 = json['custom_pay_1'];
    customPay2 = json['custom_pay_2'];
    customPay3 = json['custom_pay_3'];
    customPay4 = json['custom_pay_4'];
    customPay5 = json['custom_pay_5'];
    customPay6 = json['custom_pay_6'];
    customPay7 = json['custom_pay_7'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['custom_pay_1'] = customPay1;
    data['custom_pay_2'] = customPay2;
    data['custom_pay_3'] = customPay3;
    data['custom_pay_4'] = customPay4;
    data['custom_pay_5'] = customPay5;
    data['custom_pay_6'] = customPay6;
    data['custom_pay_7'] = customPay7;
    return data;
  }
}

class Contact {
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic customField5;
  dynamic customField6;
  dynamic customField7;
  dynamic customField8;
  dynamic customField9;
  dynamic customField10;

  Contact(
      {this.customField1,
      this.customField2,
      this.customField3,
      this.customField4,
      this.customField5,
      this.customField6,
      this.customField7,
      this.customField8,
      this.customField9,
      this.customField10});

  Contact.fromJson(Map<dynamic, dynamic> json) {
    customField1 = json['custom_field_1'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
    customField5 = json['custom_field_5'];
    customField6 = json['custom_field_6'];
    customField7 = json['custom_field_7'];
    customField8 = json['custom_field_8'];
    customField9 = json['custom_field_9'];
    customField10 = json['custom_field_10'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['custom_field_1'] = customField1;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    data['custom_field_5'] = customField5;
    data['custom_field_6'] = customField6;
    data['custom_field_7'] = customField7;
    data['custom_field_8'] = customField8;
    data['custom_field_9'] = customField9;
    data['custom_field_10'] = customField10;
    return data;
  }
}

class Product {
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;

  Product(
      {this.customField1,
      this.customField2,
      this.customField3,
      this.customField4});

  Product.fromJson(Map<dynamic, dynamic> json) {
    customField1 = json['custom_field_1'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['custom_field_1'] = customField1;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    return data;
  }
}

class PurchaseShipping {
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic customField5;

  PurchaseShipping(
      {this.customField1,
      this.customField2,
      this.customField3,
      this.customField4,
      this.customField5});

  PurchaseShipping.fromJson(Map<dynamic, dynamic> json) {
    customField1 = json['custom_field_1'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
    customField5 = json['custom_field_5'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['custom_field_1'] = customField1;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    data['custom_field_5'] = customField5;
    return data;
  }
}

class Shipping {
  dynamic customField1;
  dynamic isCustomField1Required;
  dynamic isCustomField1ContactDefault;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic customField5;

  Shipping(
      {this.customField1,
      this.isCustomField1Required,
      this.isCustomField1ContactDefault,
      this.customField2,
      this.customField3,
      this.customField4,
      this.customField5});

  Shipping.fromJson(Map<dynamic, dynamic> json) {
    customField1 = json['custom_field_1'];
    isCustomField1Required = json['is_custom_field_1_required'];
    isCustomField1ContactDefault = json['is_custom_field_1_contact_default'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
    customField5 = json['custom_field_5'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['custom_field_1'] = customField1;
    data['is_custom_field_1_required'] = isCustomField1Required;
    data['is_custom_field_1_contact_default'] = isCustomField1ContactDefault;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    data['custom_field_5'] = customField5;
    return data;
  }
}

class TypesOfService {
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic customField5;
  dynamic customField6;

  TypesOfService(
      {this.customField1,
      this.customField2,
      this.customField3,
      this.customField4,
      this.customField5,
      this.customField6});

  TypesOfService.fromJson(Map<dynamic, dynamic> json) {
    customField1 = json['custom_field_1'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
    customField5 = json['custom_field_5'];
    customField6 = json['custom_field_6'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['custom_field_1'] = customField1;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    data['custom_field_5'] = customField5;
    data['custom_field_6'] = customField6;
    return data;
  }
}

class CommonSettings {
  dynamic defaultCreditLimit;
  dynamic defaultDatatablePageEntries;

  CommonSettings({this.defaultCreditLimit, this.defaultDatatablePageEntries});

  CommonSettings.fromJson(Map<dynamic, dynamic> json) {
    defaultCreditLimit = json['default_credit_limit'];
    defaultDatatablePageEntries = json['default_datatable_page_entries'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['default_credit_limit'] = defaultCreditLimit;
    data['default_datatable_page_entries'] = defaultDatatablePageEntries;
    return data;
  }
}

class Locations {
  dynamic id;
  dynamic businessId;
  dynamic locationId;
  dynamic name;
  dynamic landmark;
  dynamic country;
  dynamic state;
  dynamic city;
  dynamic zipCode;
  dynamic invoiceSchemeId;
  dynamic invoiceLayoutId;
  dynamic saleInvoiceLayoutId;
  dynamic sellingPriceGroupId;
  dynamic printReceiptOnInvoice;
  dynamic receiptPrinterType;
  dynamic printerId;
  dynamic mobile;
  dynamic alternateNumber;
  dynamic email;
  dynamic website;
  dynamic featuredProducts;
  dynamic isActive;
  SettingsDefaultPaymentAccounts? defaultPaymentAccounts;
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic deletedAt;
  dynamic createdAt;
  dynamic updatedAt;

  Locations(
      {this.id,
      this.businessId,
      this.locationId,
      this.name,
      this.landmark,
      this.country,
      this.state,
      this.city,
      this.zipCode,
      this.invoiceSchemeId,
      this.invoiceLayoutId,
      this.saleInvoiceLayoutId,
      this.sellingPriceGroupId,
      this.printReceiptOnInvoice,
      this.receiptPrinterType,
      this.printerId,
      this.mobile,
      this.alternateNumber,
      this.email,
      this.website,
      this.featuredProducts,
      this.isActive,
      this.defaultPaymentAccounts,
      this.customField1,
      this.customField2,
      this.customField3,
      this.customField4,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  Locations.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    locationId = json['location_id'];
    name = json['name'];
    landmark = json['landmark'];
    country = json['country'];
    state = json['state'];
    city = json['city'];
    zipCode = json['zip_code'];
    invoiceSchemeId = json['invoice_scheme_id'];
    invoiceLayoutId = json['invoice_layout_id'];
    saleInvoiceLayoutId = json['sale_invoice_layout_id'];
    sellingPriceGroupId = json['selling_price_group_id'];
    printReceiptOnInvoice = json['print_receipt_on_invoice'];
    receiptPrinterType = json['receipt_printer_type'];
    printerId = json['printer_id'];
    mobile = json['mobile'];
    alternateNumber = json['alternate_number'];
    email = json['email'];
    website = json['website'];
    featuredProducts = json['featured_products'];
    isActive = json['is_active'];
    defaultPaymentAccounts = json['default_payment_accounts'] != null
        ? SettingsDefaultPaymentAccounts.fromJson(
            json['default_payment_accounts'])
        : null;
    customField1 = json['custom_field1'];
    customField2 = json['custom_field2'];
    customField3 = json['custom_field3'];
    customField4 = json['custom_field4'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['location_id'] = locationId;
    data['name'] = name;
    data['landmark'] = landmark;
    data['country'] = country;
    data['state'] = state;
    data['city'] = city;
    data['zip_code'] = zipCode;
    data['invoice_scheme_id'] = invoiceSchemeId;
    data['invoice_layout_id'] = invoiceLayoutId;
    data['sale_invoice_layout_id'] = saleInvoiceLayoutId;
    data['selling_price_group_id'] = sellingPriceGroupId;
    data['print_receipt_on_invoice'] = printReceiptOnInvoice;
    data['receipt_printer_type'] = receiptPrinterType;
    data['printer_id'] = printerId;
    data['mobile'] = mobile;
    data['alternate_number'] = alternateNumber;
    data['email'] = email;
    data['website'] = website;
    data['featured_products'] = featuredProducts;
    data['is_active'] = isActive;
    if (defaultPaymentAccounts != null) {
      data['default_payment_accounts'] = defaultPaymentAccounts!.toJson();
    }
    data['custom_field1'] = customField1;
    data['custom_field2'] = customField2;
    data['custom_field3'] = customField3;
    data['custom_field4'] = customField4;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class CurrencySettings {
  dynamic id;
  dynamic country;
  dynamic currency;
  dynamic code;
  dynamic symbol;
  dynamic thousandSeparator;
  dynamic decimalSeparator;
  dynamic createdAt;
  dynamic updatedAt;

  CurrencySettings(
      {this.id,
      this.country,
      this.currency,
      this.code,
      this.symbol,
      this.thousandSeparator,
      this.decimalSeparator,
      this.createdAt,
      this.updatedAt});

  CurrencySettings.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    country = json['country'];
    currency = json['currency'];
    code = json['code'];
    symbol = json['symbol'];
    thousandSeparator = json['thousand_separator'];
    decimalSeparator = json['decimal_separator'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['country'] = country;
    data['currency'] = currency;
    data['code'] = code;
    data['symbol'] = symbol;
    data['thousand_separator'] = thousandSeparator;
    data['decimal_separator'] = decimalSeparator;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Printers {
  dynamic id;
  dynamic businessId;
  dynamic name;
  dynamic connectionType;
  dynamic capabilityProfile;
  dynamic charPerLine;
  dynamic ipAddress;
  dynamic port;
  dynamic path;
  dynamic createdBy;
  dynamic createdAt;
  dynamic updatedAt;

  Printers(
      {this.id,
      this.businessId,
      this.name,
      this.connectionType,
      this.capabilityProfile,
      this.charPerLine,
      this.ipAddress,
      this.port,
      this.path,
      this.createdBy,
      this.createdAt,
      this.updatedAt});

  Printers.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    name = json['name'];
    connectionType = json['connection_type'];
    capabilityProfile = json['capability_profile'];
    charPerLine = json['char_per_line'];
    ipAddress = json['ip_address'];
    port = json['port'];
    path = json['path'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['name'] = name;
    data['connection_type'] = connectionType;
    data['capability_profile'] = capabilityProfile;
    data['char_per_line'] = charPerLine;
    data['ip_address'] = ipAddress;
    data['port'] = port;
    data['path'] = path;
    data['created_by'] = createdBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class SettingsDefaultPaymentAccounts {
  SettingsPayment? delivery;
  SettingsPayment? cash;
  SettingsPayment? card;
  SettingsPayment? cheque;
  SettingsPayment? bankTransfer;
  SettingsPayment? other;
  SettingsPayment? cashOnDelivery;
  SettingsPayment? customPay1;
  SettingsPayment? customPay2;
  SettingsPayment? customPay3;
  SettingsPayment? customPay4;
  SettingsPayment? customPay5;
  SettingsPayment? customPay6;
  SettingsPayment? customPay7;

  SettingsDefaultPaymentAccounts({
    this.delivery,
    this.cash,
    this.card,
    this.cheque,
    this.bankTransfer,
    this.other,
    this.cashOnDelivery,
    this.customPay1,
    this.customPay2,
    this.customPay3,
    this.customPay4,
    this.customPay5,
    this.customPay6,
    this.customPay7,
  });

  SettingsDefaultPaymentAccounts.fromJson(Map<String, dynamic> json) {
    delivery = json['delivery'] != null
        ? SettingsPayment.fromJson(json['delivery'])
        : null;
    cash = json['cash'] != null ? SettingsPayment.fromJson(json['cash']) : null;
    card = json['card'] != null ? SettingsPayment.fromJson(json['card']) : null;
    cheque = json['cheque'] != null
        ? SettingsPayment.fromJson(json['cheque'])
        : null;
    bankTransfer = json['bank_transfer'] != null
        ? SettingsPayment.fromJson(json['bank_transfer'])
        : null;
    other =
        json['other'] != null ? SettingsPayment.fromJson(json['other']) : null;
    cashOnDelivery = json['cash_on_delivery'] != null
        ? SettingsPayment.fromJson(json['cash_on_delivery'])
        : null;
    customPay1 = json['custom_pay_1'] != null
        ? SettingsPayment.fromJson(json['custom_pay_1'])
        : null;
    customPay2 = json['custom_pay_2'] != null
        ? SettingsPayment.fromJson(json['custom_pay_2'])
        : null;
    customPay3 = json['custom_pay_3'] != null
        ? SettingsPayment.fromJson(json['custom_pay_3'])
        : null;
    customPay4 = json['custom_pay_4'] != null
        ? SettingsPayment.fromJson(json['custom_pay_4'])
        : null;
    customPay5 = json['custom_pay_5'] != null
        ? SettingsPayment.fromJson(json['custom_pay_5'])
        : null;
    customPay6 = json['custom_pay_6'] != null
        ? SettingsPayment.fromJson(json['custom_pay_6'])
        : null;
    customPay7 = json['custom_pay_7'] != null
        ? SettingsPayment.fromJson(json['custom_pay_7'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (delivery != null) {
      data['delivery'] = delivery!.toJson();
    }
    if (cash != null) {
      data['cash'] = cash!.toJson();
    }
    if (card != null) {
      data['card'] = card!.toJson();
    }
    if (cheque != null) {
      data['cheque'] = cheque!.toJson();
    }
    if (bankTransfer != null) {
      data['bank_transfer'] = bankTransfer!.toJson();
    }
    if (other != null) {
      data['other'] = other!.toJson();
    }
    if (cashOnDelivery != null) {
      data['cash_on_delivery'] = cashOnDelivery!.toJson();
    }
    if (customPay1 != null) {
      data['custom_pay_1'] = customPay1!.toJson();
    }
    if (customPay2 != null) {
      data['custom_pay_2'] = customPay2!.toJson();
    }
    if (customPay3 != null) {
      data['custom_pay_3'] = customPay3!.toJson();
    }
    if (customPay4 != null) {
      data['custom_pay_4'] = customPay4!.toJson();
    }
    if (customPay5 != null) {
      data['custom_pay_5'] = customPay5!.toJson();
    }
    if (customPay6 != null) {
      data['custom_pay_6'] = customPay6!.toJson();
    }
    if (customPay7 != null) {
      data['custom_pay_7'] = customPay7!.toJson();
    }
    return data;
  }

  factory SettingsDefaultPaymentAccounts.fromRawJson(String str) =>
      SettingsDefaultPaymentAccounts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  SettingsDefaultPaymentAccounts copyWith({
    SettingsPayment? delivery,
    SettingsPayment? cash,
    SettingsPayment? card,
    SettingsPayment? cheque,
    SettingsPayment? bankTransfer,
    SettingsPayment? other,
    SettingsPayment? cashOnDelivery,
    SettingsPayment? customPay1,
    SettingsPayment? customPay2,
    SettingsPayment? customPay3,
    SettingsPayment? customPay4,
    SettingsPayment? customPay5,
    SettingsPayment? customPay6,
    SettingsPayment? customPay7,
  }) {
    return SettingsDefaultPaymentAccounts(
      delivery: delivery ?? this.delivery,
      cash: cash ?? this.cash,
      card: card ?? this.card,
      cheque: cheque ?? this.cheque,
      bankTransfer: bankTransfer ?? this.bankTransfer,
      other: other ?? this.other,
      cashOnDelivery: cashOnDelivery ?? this.cashOnDelivery,
      customPay1: customPay1 ?? this.customPay1,
      customPay2: customPay2 ?? this.customPay2,
      customPay3: customPay3 ?? this.customPay3,
      customPay4: customPay4 ?? this.customPay4,
      customPay5: customPay5 ?? this.customPay5,
      customPay6: customPay6 ?? this.customPay6,
      customPay7: customPay7 ?? this.customPay7,
    );
  }
}

class SettingsPayment {
  String? isEnabled;
  String? account;

  SettingsPayment({this.isEnabled, this.account});

  SettingsPayment.fromJson(Map<String, dynamic> json) {
    isEnabled =
        json['is_enabled'] != null ? json['is_enabled'].toString() : null;
    account = json['account'] != null ? json['account'].toString() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_enabled'] = isEnabled;
    data['account'] = account;
    return data;
  }

  factory SettingsPayment.fromRawJson(String str) =>
      SettingsPayment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  SettingsPayment copyWith({
    String? isEnabled,
    String? account,
  }) {
    return SettingsPayment(
      isEnabled: isEnabled ?? this.isEnabled,
      account: account ?? this.account,
    );
  }
}
