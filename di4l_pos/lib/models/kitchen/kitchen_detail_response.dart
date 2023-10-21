class KitchenDetailResponse {
  Sell? sell;
  PaymentTypes? paymentTypes;
  List<dynamic>? orderTaxes;
  PosSettings? posSettings;
  List<Activities>? activities;
  dynamic salesOrders;
  List<dynamic>? lineTaxes;
  dynamic deliveryPartner;
  String? statusDelivery;
  dynamic shippingFee;

  KitchenDetailResponse(
      {this.sell,
      this.paymentTypes,
      this.orderTaxes,
      this.posSettings,
      this.activities,
      this.salesOrders,
      this.lineTaxes,
      this.deliveryPartner,
      this.statusDelivery,
      this.shippingFee});

  KitchenDetailResponse.fromJson(Map<String, dynamic> json) {
    sell = json['sell'] != null ? Sell.fromJson(json['sell']) : null;
    paymentTypes = json['payment_types'] != null
        ? PaymentTypes.fromJson(json['payment_types'])
        : null;
    if (json['order_taxes'] != null) {
      orderTaxes = <dynamic>[];
      json['order_taxes'].forEach((v) {
        // orderTaxes!.add(Null.fromJson(v));
      });
    }
    posSettings = json['pos_settings'] != null
        ? PosSettings.fromJson(json['pos_settings'])
        : null;
    if (json['activities'] != null) {
      activities = <Activities>[];
      json['activities'].forEach((v) {
        activities!.add(Activities.fromJson(v));
      });
    }
    salesOrders = json['sales_orders'];
    if (json['line_taxes'] != null) {
      lineTaxes = <dynamic>[];
      json['line_taxes'].forEach((v) {
        // lineTaxes!.add(Null.fromJson(v));
      });
    }
    deliveryPartner = json['deliveryPartner'];
    statusDelivery = json['status_delivery'];
    shippingFee = json['shippingFee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sell != null) {
      data['sell'] = sell!.toJson();
    }
    if (paymentTypes != null) {
      data['payment_types'] = paymentTypes!.toJson();
    }
    if (orderTaxes != null) {
      data['order_taxes'] = orderTaxes!.map((v) => v.toJson()).toList();
    }
    if (posSettings != null) {
      data['pos_settings'] = posSettings!.toJson();
    }
    if (activities != null) {
      data['activities'] = activities!.map((v) => v.toJson()).toList();
    }
    data['sales_orders'] = salesOrders;
    if (lineTaxes != null) {
      data['line_taxes'] = lineTaxes!.map((v) => v.toJson()).toList();
    }
    data['deliveryPartner'] = deliveryPartner;
    data['status_delivery'] = statusDelivery;
    data['shippingFee'] = shippingFee;
    return data;
  }
}

class Sell {
  int? id;
  int? businessId;
  int? locationId;
  int? resTableId;
  dynamic resWaiterId;
  dynamic resOrderStatus;
  String? type;
  dynamic subType;
  String? status;
  dynamic subStatus;
  int? isQuotation;
  String? paymentStatus;
  dynamic adjustmentType;
  int? contactId;
  int? customerGroupId;
  String? invoiceNo;
  String? refNo;
  dynamic source;
  dynamic subscriptionNo;
  dynamic subscriptionRepeatOn;
  String? transactionDate;
  String? totalBeforeTax;
  dynamic taxId;
  String? taxAmount;
  String? discountType;
  String? discountAmount;
  int? rpRedeemed;
  String? rpRedeemedAmount;
  dynamic shippingDetails;
  dynamic shippingAddress;
  dynamic shippingStatus;
  String? shippingMethod;
  dynamic deliveredTo;
  dynamic deliveryPartner;
  dynamic deliveryCode;
  dynamic deliveryCodAmount;
  dynamic deliveryStatus;
  dynamic deliveryData;
  String? shippingCharges;
  dynamic shippingCustomField1;
  dynamic shippingCustomField2;
  dynamic shippingCustomField3;
  dynamic shippingCustomField4;
  dynamic shippingCustomField5;
  dynamic additionalNotes;
  dynamic staffNote;
  int? isExport;
  dynamic exportCustomFieldsInfo;
  String? roundOffAmount;
  dynamic additionalExpenseKey1;
  String? additionalExpenseValue1;
  dynamic additionalExpenseKey2;
  String? additionalExpenseValue2;
  dynamic additionalExpenseKey3;
  String? additionalExpenseValue3;
  dynamic additionalExpenseKey4;
  String? additionalExpenseValue4;
  String? finalTotal;
  dynamic expenseCategoryId;
  dynamic expenseSubCategoryId;
  dynamic expenseFor;
  dynamic commissionAgent;
  dynamic document;
  int? isDirectSale;
  int? isSuspend;
  String? exchangeRate;
  dynamic totalAmountRecovered;
  dynamic transferParentId;
  dynamic returnParentId;
  dynamic openingStockProductId;
  int? createdBy;
  dynamic mfgParentProductionPurchaseId;
  dynamic mfgWastedUnits;
  String? mfgProductionCost;
  String? mfgProductionCostType;
  int? mfgIsFinal;
  dynamic repairCompletedOn;
  dynamic repairWarrantyId;
  dynamic repairBrandId;
  dynamic repairStatusId;
  dynamic repairModelId;
  dynamic repairJobSheetId;
  dynamic repairDefects;
  dynamic repairSerialNo;
  dynamic repairChecklist;
  dynamic repairSecurityPwd;
  dynamic repairSecurityPattern;
  dynamic repairDueDate;
  dynamic repairDeviceId;
  int? repairUpdatesNotif;
  int? crmIsOrderRequest;
  dynamic woocommerceOrderId;
  String? essentialsDuration;
  dynamic essentialsDurationUnit;
  String? essentialsAmountPerUnitDuration;
  dynamic essentialsAllowances;
  dynamic essentialsDeductions;
  dynamic preferPaymentMethod;
  dynamic preferPaymentAccount;
  dynamic salesOrderIds;
  dynamic purchaseOrderIds;
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic importBatch;
  dynamic importTime;
  dynamic typesOfServiceId;
  String? packingCharge;
  dynamic packingChargeType;
  dynamic serviceCustomField1;
  dynamic serviceCustomField2;
  dynamic serviceCustomField3;
  dynamic serviceCustomField4;
  dynamic serviceCustomField5;
  dynamic serviceCustomField6;
  int? isCreatedFromApi;
  int? rpEarned;
  dynamic orderAddresses;
  int? isRecurring;
  int? recurInterval;
  String? recurIntervalType;
  int? recurRepetitions;
  dynamic recurStoppedOn;
  dynamic recurParentId;
  String? invoiceToken;
  dynamic payTermNumber;
  dynamic payTermType;
  dynamic pjtProjectId;
  dynamic pjtTitle;
  int? sellingPriceGroupId;
  String? createdAt;
  String? updatedAt;
  Contact? contact;
  List<SellLines>? sellLines;
  List<dynamic>? paymentLines;
  dynamic tax;
  Table? table;
  dynamic serviceStaff;
  dynamic typesOfService;
  List<dynamic>? media;

  Sell(
      {this.id,
      this.businessId,
      this.locationId,
      this.resTableId,
      this.resWaiterId,
      this.resOrderStatus,
      this.type,
      this.subType,
      this.status,
      this.subStatus,
      this.isQuotation,
      this.paymentStatus,
      this.adjustmentType,
      this.contactId,
      this.customerGroupId,
      this.invoiceNo,
      this.refNo,
      this.source,
      this.subscriptionNo,
      this.subscriptionRepeatOn,
      this.transactionDate,
      this.totalBeforeTax,
      this.taxId,
      this.taxAmount,
      this.discountType,
      this.discountAmount,
      this.rpRedeemed,
      this.rpRedeemedAmount,
      this.shippingDetails,
      this.shippingAddress,
      this.shippingStatus,
      this.shippingMethod,
      this.deliveredTo,
      this.deliveryPartner,
      this.deliveryCode,
      this.deliveryCodAmount,
      this.deliveryStatus,
      this.deliveryData,
      this.shippingCharges,
      this.shippingCustomField1,
      this.shippingCustomField2,
      this.shippingCustomField3,
      this.shippingCustomField4,
      this.shippingCustomField5,
      this.additionalNotes,
      this.staffNote,
      this.isExport,
      this.exportCustomFieldsInfo,
      this.roundOffAmount,
      this.additionalExpenseKey1,
      this.additionalExpenseValue1,
      this.additionalExpenseKey2,
      this.additionalExpenseValue2,
      this.additionalExpenseKey3,
      this.additionalExpenseValue3,
      this.additionalExpenseKey4,
      this.additionalExpenseValue4,
      this.finalTotal,
      this.expenseCategoryId,
      this.expenseSubCategoryId,
      this.expenseFor,
      this.commissionAgent,
      this.document,
      this.isDirectSale,
      this.isSuspend,
      this.exchangeRate,
      this.totalAmountRecovered,
      this.transferParentId,
      this.returnParentId,
      this.openingStockProductId,
      this.createdBy,
      this.mfgParentProductionPurchaseId,
      this.mfgWastedUnits,
      this.mfgProductionCost,
      this.mfgProductionCostType,
      this.mfgIsFinal,
      this.repairCompletedOn,
      this.repairWarrantyId,
      this.repairBrandId,
      this.repairStatusId,
      this.repairModelId,
      this.repairJobSheetId,
      this.repairDefects,
      this.repairSerialNo,
      this.repairChecklist,
      this.repairSecurityPwd,
      this.repairSecurityPattern,
      this.repairDueDate,
      this.repairDeviceId,
      this.repairUpdatesNotif,
      this.crmIsOrderRequest,
      this.woocommerceOrderId,
      this.essentialsDuration,
      this.essentialsDurationUnit,
      this.essentialsAmountPerUnitDuration,
      this.essentialsAllowances,
      this.essentialsDeductions,
      this.preferPaymentMethod,
      this.preferPaymentAccount,
      this.salesOrderIds,
      this.purchaseOrderIds,
      this.customField1,
      this.customField2,
      this.customField3,
      this.customField4,
      this.importBatch,
      this.importTime,
      this.typesOfServiceId,
      this.packingCharge,
      this.packingChargeType,
      this.serviceCustomField1,
      this.serviceCustomField2,
      this.serviceCustomField3,
      this.serviceCustomField4,
      this.serviceCustomField5,
      this.serviceCustomField6,
      this.isCreatedFromApi,
      this.rpEarned,
      this.orderAddresses,
      this.isRecurring,
      this.recurInterval,
      this.recurIntervalType,
      this.recurRepetitions,
      this.recurStoppedOn,
      this.recurParentId,
      this.invoiceToken,
      this.payTermNumber,
      this.payTermType,
      this.pjtProjectId,
      this.pjtTitle,
      this.sellingPriceGroupId,
      this.createdAt,
      this.updatedAt,
      this.contact,
      this.sellLines,
      this.paymentLines,
      this.tax,
      this.table,
      this.serviceStaff,
      this.typesOfService,
      this.media});

  Sell.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    locationId = json['location_id'];
    resTableId = json['res_table_id'];
    resWaiterId = json['res_waiter_id'];
    resOrderStatus = json['res_order_status'];
    type = json['type'];
    subType = json['sub_type'];
    status = json['status'];
    subStatus = json['sub_status'];
    isQuotation = json['is_quotation'];
    paymentStatus = json['payment_status'];
    adjustmentType = json['adjustment_type'];
    contactId = json['contact_id'];
    customerGroupId = json['customer_group_id'];
    invoiceNo = json['invoice_no'];
    refNo = json['ref_no'];
    source = json['source'];
    subscriptionNo = json['subscription_no'];
    subscriptionRepeatOn = json['subscription_repeat_on'];
    transactionDate = json['transaction_date'];
    totalBeforeTax = json['total_before_tax'];
    taxId = json['tax_id'];
    taxAmount = json['tax_amount'];
    discountType = json['discount_type'];
    discountAmount = json['discount_amount'];
    rpRedeemed = json['rp_redeemed'];
    rpRedeemedAmount = json['rp_redeemed_amount'];
    shippingDetails = json['shipping_details'];
    shippingAddress = json['shipping_address'];
    shippingStatus = json['shipping_status'];
    shippingMethod = json['shipping_method'];
    deliveredTo = json['delivered_to'];
    deliveryPartner = json['delivery_partner'];
    deliveryCode = json['delivery_code'];
    deliveryCodAmount = json['delivery_cod_amount'];
    deliveryStatus = json['delivery_status'];
    deliveryData = json['delivery_data'];
    shippingCharges = json['shipping_charges'];
    shippingCustomField1 = json['shipping_custom_field_1'];
    shippingCustomField2 = json['shipping_custom_field_2'];
    shippingCustomField3 = json['shipping_custom_field_3'];
    shippingCustomField4 = json['shipping_custom_field_4'];
    shippingCustomField5 = json['shipping_custom_field_5'];
    additionalNotes = json['additional_notes'];
    staffNote = json['staff_note'];
    isExport = json['is_export'];
    exportCustomFieldsInfo = json['export_custom_fields_info'];
    roundOffAmount = json['round_off_amount'];
    additionalExpenseKey1 = json['additional_expense_key_1'];
    additionalExpenseValue1 = json['additional_expense_value_1'];
    additionalExpenseKey2 = json['additional_expense_key_2'];
    additionalExpenseValue2 = json['additional_expense_value_2'];
    additionalExpenseKey3 = json['additional_expense_key_3'];
    additionalExpenseValue3 = json['additional_expense_value_3'];
    additionalExpenseKey4 = json['additional_expense_key_4'];
    additionalExpenseValue4 = json['additional_expense_value_4'];
    finalTotal = json['final_total'];
    expenseCategoryId = json['expense_category_id'];
    expenseSubCategoryId = json['expense_sub_category_id'];
    expenseFor = json['expense_for'];
    commissionAgent = json['commission_agent'];
    document = json['document'];
    isDirectSale = json['is_direct_sale'];
    isSuspend = json['is_suspend'];
    exchangeRate = json['exchange_rate'];
    totalAmountRecovered = json['total_amount_recovered'];
    transferParentId = json['transfer_parent_id'];
    returnParentId = json['return_parent_id'];
    openingStockProductId = json['opening_stock_product_id'];
    createdBy = json['created_by'];
    mfgParentProductionPurchaseId = json['mfg_parent_production_purchase_id'];
    mfgWastedUnits = json['mfg_wasted_units'];
    mfgProductionCost = json['mfg_production_cost'];
    mfgProductionCostType = json['mfg_production_cost_type'];
    mfgIsFinal = json['mfg_is_final'];
    repairCompletedOn = json['repair_completed_on'];
    repairWarrantyId = json['repair_warranty_id'];
    repairBrandId = json['repair_brand_id'];
    repairStatusId = json['repair_status_id'];
    repairModelId = json['repair_model_id'];
    repairJobSheetId = json['repair_job_sheet_id'];
    repairDefects = json['repair_defects'];
    repairSerialNo = json['repair_serial_no'];
    repairChecklist = json['repair_checklist'];
    repairSecurityPwd = json['repair_security_pwd'];
    repairSecurityPattern = json['repair_security_pattern'];
    repairDueDate = json['repair_due_date'];
    repairDeviceId = json['repair_device_id'];
    repairUpdatesNotif = json['repair_updates_notif'];
    crmIsOrderRequest = json['crm_is_order_request'];
    woocommerceOrderId = json['woocommerce_order_id'];
    essentialsDuration = json['essentials_duration'];
    essentialsDurationUnit = json['essentials_duration_unit'];
    essentialsAmountPerUnitDuration =
        json['essentials_amount_per_unit_duration'];
    essentialsAllowances = json['essentials_allowances'];
    essentialsDeductions = json['essentials_deductions'];
    preferPaymentMethod = json['prefer_payment_method'];
    preferPaymentAccount = json['prefer_payment_account'];
    salesOrderIds = json['sales_order_ids'];
    purchaseOrderIds = json['purchase_order_ids'];
    customField1 = json['custom_field_1'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
    importBatch = json['import_batch'];
    importTime = json['import_time'];
    typesOfServiceId = json['types_of_service_id'];
    packingCharge = json['packing_charge'];
    packingChargeType = json['packing_charge_type'];
    serviceCustomField1 = json['service_custom_field_1'];
    serviceCustomField2 = json['service_custom_field_2'];
    serviceCustomField3 = json['service_custom_field_3'];
    serviceCustomField4 = json['service_custom_field_4'];
    serviceCustomField5 = json['service_custom_field_5'];
    serviceCustomField6 = json['service_custom_field_6'];
    isCreatedFromApi = json['is_created_from_api'];
    rpEarned = json['rp_earned'];
    orderAddresses = json['order_addresses'];
    isRecurring = json['is_recurring'];
    recurInterval = json['recur_interval'];
    recurIntervalType = json['recur_interval_type'];
    recurRepetitions = json['recur_repetitions'];
    recurStoppedOn = json['recur_stopped_on'];
    recurParentId = json['recur_parent_id'];
    invoiceToken = json['invoice_token'];
    payTermNumber = json['pay_term_number'];
    payTermType = json['pay_term_type'];
    pjtProjectId = json['pjt_project_id'];
    pjtTitle = json['pjt_title'];
    sellingPriceGroupId = json['selling_price_group_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    contact =
        json['contact'] != null ? Contact.fromJson(json['contact']) : null;
    if (json['sell_lines'] != null) {
      sellLines = <SellLines>[];
      json['sell_lines'].forEach((v) {
        sellLines!.add(SellLines.fromJson(v));
      });
    }
    if (json['payment_lines'] != null) {
      paymentLines = <Null>[];
      json['payment_lines'].forEach((v) {
        // paymentLines!.add(new Null.fromJson(v));
      });
    }
    tax = json['tax'];
    table = json['table'] != null ? Table.fromJson(json['table']) : null;
    serviceStaff = json['service_staff'];
    typesOfService = json['types_of_service'];
    if (json['media'] != null) {
      media = <Null>[];
      json['media'].forEach((v) {
        // media!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['location_id'] = locationId;
    data['res_table_id'] = resTableId;
    data['res_waiter_id'] = resWaiterId;
    data['res_order_status'] = resOrderStatus;
    data['type'] = type;
    data['sub_type'] = subType;
    data['status'] = status;
    data['sub_status'] = subStatus;
    data['is_quotation'] = isQuotation;
    data['payment_status'] = paymentStatus;
    data['adjustment_type'] = adjustmentType;
    data['contact_id'] = contactId;
    data['customer_group_id'] = customerGroupId;
    data['invoice_no'] = invoiceNo;
    data['ref_no'] = refNo;
    data['source'] = source;
    data['subscription_no'] = subscriptionNo;
    data['subscription_repeat_on'] = subscriptionRepeatOn;
    data['transaction_date'] = transactionDate;
    data['total_before_tax'] = totalBeforeTax;
    data['tax_id'] = taxId;
    data['tax_amount'] = taxAmount;
    data['discount_type'] = discountType;
    data['discount_amount'] = discountAmount;
    data['rp_redeemed'] = rpRedeemed;
    data['rp_redeemed_amount'] = rpRedeemedAmount;
    data['shipping_details'] = shippingDetails;
    data['shipping_address'] = shippingAddress;
    data['shipping_status'] = shippingStatus;
    data['shipping_method'] = shippingMethod;
    data['delivered_to'] = deliveredTo;
    data['delivery_partner'] = deliveryPartner;
    data['delivery_code'] = deliveryCode;
    data['delivery_cod_amount'] = deliveryCodAmount;
    data['delivery_status'] = deliveryStatus;
    data['delivery_data'] = deliveryData;
    data['shipping_charges'] = shippingCharges;
    data['shipping_custom_field_1'] = shippingCustomField1;
    data['shipping_custom_field_2'] = shippingCustomField2;
    data['shipping_custom_field_3'] = shippingCustomField3;
    data['shipping_custom_field_4'] = shippingCustomField4;
    data['shipping_custom_field_5'] = shippingCustomField5;
    data['additional_notes'] = additionalNotes;
    data['staff_note'] = staffNote;
    data['is_export'] = isExport;
    data['export_custom_fields_info'] = exportCustomFieldsInfo;
    data['round_off_amount'] = roundOffAmount;
    data['additional_expense_key_1'] = additionalExpenseKey1;
    data['additional_expense_value_1'] = additionalExpenseValue1;
    data['additional_expense_key_2'] = additionalExpenseKey2;
    data['additional_expense_value_2'] = additionalExpenseValue2;
    data['additional_expense_key_3'] = additionalExpenseKey3;
    data['additional_expense_value_3'] = additionalExpenseValue3;
    data['additional_expense_key_4'] = additionalExpenseKey4;
    data['additional_expense_value_4'] = additionalExpenseValue4;
    data['final_total'] = finalTotal;
    data['expense_category_id'] = expenseCategoryId;
    data['expense_sub_category_id'] = expenseSubCategoryId;
    data['expense_for'] = expenseFor;
    data['commission_agent'] = commissionAgent;
    data['document'] = document;
    data['is_direct_sale'] = isDirectSale;
    data['is_suspend'] = isSuspend;
    data['exchange_rate'] = exchangeRate;
    data['total_amount_recovered'] = totalAmountRecovered;
    data['transfer_parent_id'] = transferParentId;
    data['return_parent_id'] = returnParentId;
    data['opening_stock_product_id'] = openingStockProductId;
    data['created_by'] = createdBy;
    data['mfg_parent_production_purchase_id'] = mfgParentProductionPurchaseId;
    data['mfg_wasted_units'] = mfgWastedUnits;
    data['mfg_production_cost'] = mfgProductionCost;
    data['mfg_production_cost_type'] = mfgProductionCostType;
    data['mfg_is_final'] = mfgIsFinal;
    data['repair_completed_on'] = repairCompletedOn;
    data['repair_warranty_id'] = repairWarrantyId;
    data['repair_brand_id'] = repairBrandId;
    data['repair_status_id'] = repairStatusId;
    data['repair_model_id'] = repairModelId;
    data['repair_job_sheet_id'] = repairJobSheetId;
    data['repair_defects'] = repairDefects;
    data['repair_serial_no'] = repairSerialNo;
    data['repair_checklist'] = repairChecklist;
    data['repair_security_pwd'] = repairSecurityPwd;
    data['repair_security_pattern'] = repairSecurityPattern;
    data['repair_due_date'] = repairDueDate;
    data['repair_device_id'] = repairDeviceId;
    data['repair_updates_notif'] = repairUpdatesNotif;
    data['crm_is_order_request'] = crmIsOrderRequest;
    data['woocommerce_order_id'] = woocommerceOrderId;
    data['essentials_duration'] = essentialsDuration;
    data['essentials_duration_unit'] = essentialsDurationUnit;
    data['essentials_amount_per_unit_duration'] =
        essentialsAmountPerUnitDuration;
    data['essentials_allowances'] = essentialsAllowances;
    data['essentials_deductions'] = essentialsDeductions;
    data['prefer_payment_method'] = preferPaymentMethod;
    data['prefer_payment_account'] = preferPaymentAccount;
    data['sales_order_ids'] = salesOrderIds;
    data['purchase_order_ids'] = purchaseOrderIds;
    data['custom_field_1'] = customField1;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    data['import_batch'] = importBatch;
    data['import_time'] = importTime;
    data['types_of_service_id'] = typesOfServiceId;
    data['packing_charge'] = packingCharge;
    data['packing_charge_type'] = packingChargeType;
    data['service_custom_field_1'] = serviceCustomField1;
    data['service_custom_field_2'] = serviceCustomField2;
    data['service_custom_field_3'] = serviceCustomField3;
    data['service_custom_field_4'] = serviceCustomField4;
    data['service_custom_field_5'] = serviceCustomField5;
    data['service_custom_field_6'] = serviceCustomField6;
    data['is_created_from_api'] = isCreatedFromApi;
    data['rp_earned'] = rpEarned;
    data['order_addresses'] = orderAddresses;
    data['is_recurring'] = isRecurring;
    data['recur_interval'] = recurInterval;
    data['recur_interval_type'] = recurIntervalType;
    data['recur_repetitions'] = recurRepetitions;
    data['recur_stopped_on'] = recurStoppedOn;
    data['recur_parent_id'] = recurParentId;
    data['invoice_token'] = invoiceToken;
    data['pay_term_number'] = payTermNumber;
    data['pay_term_type'] = payTermType;
    data['pjt_project_id'] = pjtProjectId;
    data['pjt_title'] = pjtTitle;
    data['selling_price_group_id'] = sellingPriceGroupId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (contact != null) {
      data['contact'] = contact!.toJson();
    }
    if (sellLines != null) {
      data['sell_lines'] = sellLines!.map((v) => v.toJson()).toList();
    }
    if (paymentLines != null) {
      data['payment_lines'] = paymentLines!.map((v) => v.toJson()).toList();
    }
    data['tax'] = tax;
    if (table != null) {
      data['table'] = table!.toJson();
    }
    data['service_staff'] = serviceStaff;
    data['types_of_service'] = typesOfService;
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Contact {
  int? id;
  int? businessId;
  String? type;
  dynamic supplierBusinessName;
  String? name;
  String? prefix;
  String? firstName;
  String? middleName;
  String? lastName;
  dynamic email;
  dynamic contactId;
  String? contactStatus;
  dynamic taxNumber;
  dynamic city;
  dynamic state;
  dynamic country;
  dynamic addressLine1;
  dynamic addressLine2;
  dynamic zipCode;
  String? dob;
  String? mobile;
  dynamic landline;
  dynamic alternateNumber;
  dynamic payTermNumber;
  dynamic payTermType;
  dynamic creditLimit;
  int? createdBy;
  dynamic convertedBy;
  dynamic convertedOn;
  String? balance;
  int? totalRp;
  int? totalRpUsed;
  int? totalRpExpired;
  int? isDefault;
  dynamic shippingAddress;
  dynamic shippingCustomFieldDetails;
  int? isExport;
  dynamic exportCustomField1;
  dynamic exportCustomField2;
  dynamic exportCustomField3;
  dynamic exportCustomField4;
  dynamic exportCustomField5;
  dynamic exportCustomField6;
  dynamic position;
  int? customerGroupId;
  dynamic crmSource;
  dynamic crmLifeStage;
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
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  dynamic parentId;
  dynamic provinceId;
  dynamic districtId;
  dynamic wardId;

  Contact(
      {this.id,
      this.businessId,
      this.type,
      this.supplierBusinessName,
      this.name,
      this.prefix,
      this.firstName,
      this.middleName,
      this.lastName,
      this.email,
      this.contactId,
      this.contactStatus,
      this.taxNumber,
      this.city,
      this.state,
      this.country,
      this.addressLine1,
      this.addressLine2,
      this.zipCode,
      this.dob,
      this.mobile,
      this.landline,
      this.alternateNumber,
      this.payTermNumber,
      this.payTermType,
      this.creditLimit,
      this.createdBy,
      this.convertedBy,
      this.convertedOn,
      this.balance,
      this.totalRp,
      this.totalRpUsed,
      this.totalRpExpired,
      this.isDefault,
      this.shippingAddress,
      this.shippingCustomFieldDetails,
      this.isExport,
      this.exportCustomField1,
      this.exportCustomField2,
      this.exportCustomField3,
      this.exportCustomField4,
      this.exportCustomField5,
      this.exportCustomField6,
      this.position,
      this.customerGroupId,
      this.crmSource,
      this.crmLifeStage,
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
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.parentId,
      this.provinceId,
      this.districtId,
      this.wardId});

  Contact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    type = json['type'];
    supplierBusinessName = json['supplier_business_name'];
    name = json['name'];
    prefix = json['prefix'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    email = json['email'];
    contactId = json['contact_id'];
    contactStatus = json['contact_status'];
    taxNumber = json['tax_number'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    addressLine1 = json['address_line_1'];
    addressLine2 = json['address_line_2'];
    zipCode = json['zip_code'];
    dob = json['dob'];
    mobile = json['mobile'];
    landline = json['landline'];
    alternateNumber = json['alternate_number'];
    payTermNumber = json['pay_term_number'];
    payTermType = json['pay_term_type'];
    creditLimit = json['credit_limit'];
    createdBy = json['created_by'];
    convertedBy = json['converted_by'];
    convertedOn = json['converted_on'];
    balance = json['balance'];
    totalRp = json['total_rp'];
    totalRpUsed = json['total_rp_used'];
    totalRpExpired = json['total_rp_expired'];
    isDefault = json['is_default'];
    shippingAddress = json['shipping_address'];
    shippingCustomFieldDetails = json['shipping_custom_field_details'];
    isExport = json['is_export'];
    exportCustomField1 = json['export_custom_field_1'];
    exportCustomField2 = json['export_custom_field_2'];
    exportCustomField3 = json['export_custom_field_3'];
    exportCustomField4 = json['export_custom_field_4'];
    exportCustomField5 = json['export_custom_field_5'];
    exportCustomField6 = json['export_custom_field_6'];
    position = json['position'];
    customerGroupId = json['customer_group_id'];
    crmSource = json['crm_source'];
    crmLifeStage = json['crm_life_stage'];
    customField1 = json['custom_field1'];
    customField2 = json['custom_field2'];
    customField3 = json['custom_field3'];
    customField4 = json['custom_field4'];
    customField5 = json['custom_field5'];
    customField6 = json['custom_field6'];
    customField7 = json['custom_field7'];
    customField8 = json['custom_field8'];
    customField9 = json['custom_field9'];
    customField10 = json['custom_field10'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    parentId = json['parent_id'];
    provinceId = json['province_id'];
    districtId = json['district_id'];
    wardId = json['ward_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['type'] = type;
    data['supplier_business_name'] = supplierBusinessName;
    data['name'] = name;
    data['prefix'] = prefix;
    data['first_name'] = firstName;
    data['middle_name'] = middleName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['contact_id'] = contactId;
    data['contact_status'] = contactStatus;
    data['tax_number'] = taxNumber;
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['address_line_1'] = addressLine1;
    data['address_line_2'] = addressLine2;
    data['zip_code'] = zipCode;
    data['dob'] = dob;
    data['mobile'] = mobile;
    data['landline'] = landline;
    data['alternate_number'] = alternateNumber;
    data['pay_term_number'] = payTermNumber;
    data['pay_term_type'] = payTermType;
    data['credit_limit'] = creditLimit;
    data['created_by'] = createdBy;
    data['converted_by'] = convertedBy;
    data['converted_on'] = convertedOn;
    data['balance'] = balance;
    data['total_rp'] = totalRp;
    data['total_rp_used'] = totalRpUsed;
    data['total_rp_expired'] = totalRpExpired;
    data['is_default'] = isDefault;
    data['shipping_address'] = shippingAddress;
    data['shipping_custom_field_details'] = shippingCustomFieldDetails;
    data['is_export'] = isExport;
    data['export_custom_field_1'] = exportCustomField1;
    data['export_custom_field_2'] = exportCustomField2;
    data['export_custom_field_3'] = exportCustomField3;
    data['export_custom_field_4'] = exportCustomField4;
    data['export_custom_field_5'] = exportCustomField5;
    data['export_custom_field_6'] = exportCustomField6;
    data['position'] = position;
    data['customer_group_id'] = customerGroupId;
    data['crm_source'] = crmSource;
    data['crm_life_stage'] = crmLifeStage;
    data['custom_field1'] = customField1;
    data['custom_field2'] = customField2;
    data['custom_field3'] = customField3;
    data['custom_field4'] = customField4;
    data['custom_field5'] = customField5;
    data['custom_field6'] = customField6;
    data['custom_field7'] = customField7;
    data['custom_field8'] = customField8;
    data['custom_field9'] = customField9;
    data['custom_field10'] = customField10;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['parent_id'] = parentId;
    data['province_id'] = provinceId;
    data['district_id'] = districtId;
    data['ward_id'] = wardId;
    return data;
  }
}

class SellLines {
  int? id;
  int? transactionId;
  int? productId;
  int? variationId;
  int? quantity;
  String? mfgWastePercent;
  dynamic mfgIngredientGroupId;
  String? quantityReturned;
  String? unitPriceBeforeDiscount;
  String? unitPrice;
  String? lineDiscountType;
  String? lineDiscountAmount;
  String? unitPriceIncTax;
  String? itemTax;
  dynamic taxId;
  dynamic discountId;
  dynamic lotNoLineId;
  String? sellLineNote;
  dynamic woocommerceLineItemsId;
  dynamic soLineId;
  String? soQuantityInvoiced;
  dynamic resServiceStaffId;
  dynamic resLineOrderStatus;
  dynamic parentSellLineId;
  String? childrenType;
  dynamic subUnitId;
  String? createdAt;
  String? updatedAt;
  Product? product;
  Variations? variations;
  List<dynamic>? modifiers;
  dynamic lotDetails;
  dynamic subUnit;
  dynamic serviceStaff;
  List<dynamic>? warranties;

  SellLines(
      {this.id,
      this.transactionId,
      this.productId,
      this.variationId,
      this.quantity,
      this.mfgWastePercent,
      this.mfgIngredientGroupId,
      this.quantityReturned,
      this.unitPriceBeforeDiscount,
      this.unitPrice,
      this.lineDiscountType,
      this.lineDiscountAmount,
      this.unitPriceIncTax,
      this.itemTax,
      this.taxId,
      this.discountId,
      this.lotNoLineId,
      this.sellLineNote,
      this.woocommerceLineItemsId,
      this.soLineId,
      this.soQuantityInvoiced,
      this.resServiceStaffId,
      this.resLineOrderStatus,
      this.parentSellLineId,
      this.childrenType,
      this.subUnitId,
      this.createdAt,
      this.updatedAt,
      this.product,
      this.variations,
      this.modifiers,
      this.lotDetails,
      this.subUnit,
      this.serviceStaff,
      this.warranties});

  SellLines.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    transactionId = json['transaction_id'];
    productId = json['product_id'];
    variationId = json['variation_id'];
    quantity = json['quantity'];
    mfgWastePercent = json['mfg_waste_percent'];
    mfgIngredientGroupId = json['mfg_ingredient_group_id'];
    quantityReturned = json['quantity_returned'];
    unitPriceBeforeDiscount = json['unit_price_before_discount'];
    unitPrice = json['unit_price'];
    lineDiscountType = json['line_discount_type'];
    lineDiscountAmount = json['line_discount_amount'];
    unitPriceIncTax = json['unit_price_inc_tax'];
    itemTax = json['item_tax'];
    taxId = json['tax_id'];
    discountId = json['discount_id'];
    lotNoLineId = json['lot_no_line_id'];
    sellLineNote = json['sell_line_note'];
    woocommerceLineItemsId = json['woocommerce_line_items_id'];
    soLineId = json['so_line_id'];
    soQuantityInvoiced = json['so_quantity_invoiced'];
    resServiceStaffId = json['res_service_staff_id'];
    resLineOrderStatus = json['res_line_order_status'];
    parentSellLineId = json['parent_sell_line_id'];
    childrenType = json['children_type'];
    subUnitId = json['sub_unit_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
    variations = json['variations'] != null
        ? Variations.fromJson(json['variations'])
        : null;
    if (json['modifiers'] != null) {
      modifiers = <Null>[];
      json['modifiers'].forEach((v) {
        // modifiers!.add(new Null.fromJson(v));
      });
    }
    lotDetails = json['lot_details'];
    subUnit = json['sub_unit'];
    serviceStaff = json['service_staff'];
    if (json['warranties'] != null) {
      warranties = <Null>[];
      json['warranties'].forEach((v) {
        // warranties!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['transaction_id'] = transactionId;
    data['product_id'] = productId;
    data['variation_id'] = variationId;
    data['quantity'] = quantity;
    data['mfg_waste_percent'] = mfgWastePercent;
    data['mfg_ingredient_group_id'] = mfgIngredientGroupId;
    data['quantity_returned'] = quantityReturned;
    data['unit_price_before_discount'] = unitPriceBeforeDiscount;
    data['unit_price'] = unitPrice;
    data['line_discount_type'] = lineDiscountType;
    data['line_discount_amount'] = lineDiscountAmount;
    data['unit_price_inc_tax'] = unitPriceIncTax;
    data['item_tax'] = itemTax;
    data['tax_id'] = taxId;
    data['discount_id'] = discountId;
    data['lot_no_line_id'] = lotNoLineId;
    data['sell_line_note'] = sellLineNote;
    data['woocommerce_line_items_id'] = woocommerceLineItemsId;
    data['so_line_id'] = soLineId;
    data['so_quantity_invoiced'] = soQuantityInvoiced;
    data['res_service_staff_id'] = resServiceStaffId;
    data['res_line_order_status'] = resLineOrderStatus;
    data['parent_sell_line_id'] = parentSellLineId;
    data['children_type'] = childrenType;
    data['sub_unit_id'] = subUnitId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (product != null) {
      data['product'] = product!.toJson();
    }
    if (variations != null) {
      data['variations'] = variations!.toJson();
    }
    if (modifiers != null) {
      data['modifiers'] = modifiers!.map((v) => v.toJson()).toList();
    }
    data['lot_details'] = lotDetails;
    data['sub_unit'] = subUnit;
    data['service_staff'] = serviceStaff;
    if (warranties != null) {
      data['warranties'] = warranties!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  int? id;
  String? name;
  String? slug;
  int? businessId;
  int? featured;
  String? type;
  int? unitId;
  dynamic subUnitIds;
  dynamic brandId;
  dynamic categoryId;
  dynamic subCategoryId;
  dynamic tax;
  String? taxType;
  int? enableStock;
  String? alertQuantity;
  String? sku;
  String? barcodeType;
  dynamic expiryPeriod;
  dynamic expiryPeriodType;
  int? enableSrNo;
  dynamic weight;
  dynamic productCustomField1;
  dynamic productCustomField2;
  dynamic productCustomField3;
  dynamic productCustomField4;
  dynamic image;
  dynamic woocommerceMediaId;
  dynamic productDescription;
  int? createdBy;
  dynamic woocommerceProductId;
  int? woocommerceDisableSync;
  dynamic warrantyId;
  int? isInactive;
  dynamic repairModelId;
  int? notForSelling;
  dynamic metaTitle;
  dynamic metaKeyword;
  dynamic metaDescription;
  String? createdAt;
  String? updatedAt;
  String? imageUrl;
  Unit? unit;
  List<Media>? media;

  Product(
      {this.id,
      this.name,
      this.slug,
      this.businessId,
      this.featured,
      this.type,
      this.unitId,
      this.subUnitIds,
      this.brandId,
      this.categoryId,
      this.subCategoryId,
      this.tax,
      this.taxType,
      this.enableStock,
      this.alertQuantity,
      this.sku,
      this.barcodeType,
      this.expiryPeriod,
      this.expiryPeriodType,
      this.enableSrNo,
      this.weight,
      this.productCustomField1,
      this.productCustomField2,
      this.productCustomField3,
      this.productCustomField4,
      this.image,
      this.woocommerceMediaId,
      this.productDescription,
      this.createdBy,
      this.woocommerceProductId,
      this.woocommerceDisableSync,
      this.warrantyId,
      this.isInactive,
      this.repairModelId,
      this.notForSelling,
      this.metaTitle,
      this.metaKeyword,
      this.metaDescription,
      this.createdAt,
      this.updatedAt,
      this.imageUrl,
      this.unit,
      this.media});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    businessId = json['business_id'];
    featured = json['featured'];
    type = json['type'];
    unitId = json['unit_id'];
    subUnitIds = json['sub_unit_ids'];
    brandId = json['brand_id'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    tax = json['tax'];
    taxType = json['tax_type'];
    enableStock = json['enable_stock'];
    alertQuantity = json['alert_quantity'];
    sku = json['sku'];
    barcodeType = json['barcode_type'];
    expiryPeriod = json['expiry_period'];
    expiryPeriodType = json['expiry_period_type'];
    enableSrNo = json['enable_sr_no'];
    weight = json['weight'];
    productCustomField1 = json['product_custom_field1'];
    productCustomField2 = json['product_custom_field2'];
    productCustomField3 = json['product_custom_field3'];
    productCustomField4 = json['product_custom_field4'];
    image = json['image'];
    woocommerceMediaId = json['woocommerce_media_id'];
    productDescription = json['product_description'];
    createdBy = json['created_by'];
    woocommerceProductId = json['woocommerce_product_id'];
    woocommerceDisableSync = json['woocommerce_disable_sync'];
    warrantyId = json['warranty_id'];
    isInactive = json['is_inactive'];
    repairModelId = json['repair_model_id'];
    notForSelling = json['not_for_selling'];
    metaTitle = json['meta_title'];
    metaKeyword = json['meta_keyword'];
    metaDescription = json['meta_description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageUrl = json['image_url'];
    unit = json['unit'] != null ? Unit.fromJson(json['unit']) : null;
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['business_id'] = businessId;
    data['featured'] = featured;
    data['type'] = type;
    data['unit_id'] = unitId;
    data['sub_unit_ids'] = subUnitIds;
    data['brand_id'] = brandId;
    data['category_id'] = categoryId;
    data['sub_category_id'] = subCategoryId;
    data['tax'] = tax;
    data['tax_type'] = taxType;
    data['enable_stock'] = enableStock;
    data['alert_quantity'] = alertQuantity;
    data['sku'] = sku;
    data['barcode_type'] = barcodeType;
    data['expiry_period'] = expiryPeriod;
    data['expiry_period_type'] = expiryPeriodType;
    data['enable_sr_no'] = enableSrNo;
    data['weight'] = weight;
    data['product_custom_field1'] = productCustomField1;
    data['product_custom_field2'] = productCustomField2;
    data['product_custom_field3'] = productCustomField3;
    data['product_custom_field4'] = productCustomField4;
    data['image'] = image;
    data['woocommerce_media_id'] = woocommerceMediaId;
    data['product_description'] = productDescription;
    data['created_by'] = createdBy;
    data['woocommerce_product_id'] = woocommerceProductId;
    data['woocommerce_disable_sync'] = woocommerceDisableSync;
    data['warranty_id'] = warrantyId;
    data['is_inactive'] = isInactive;
    data['repair_model_id'] = repairModelId;
    data['not_for_selling'] = notForSelling;
    data['meta_title'] = metaTitle;
    data['meta_keyword'] = metaKeyword;
    data['meta_description'] = metaDescription;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image_url'] = imageUrl;
    if (unit != null) {
      data['unit'] = unit!.toJson();
    }
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Unit {
  int? id;
  int? businessId;
  String? actualName;
  String? shortName;
  int? allowDecimal;
  dynamic baseUnitId;
  dynamic baseUnitMultiplier;
  int? createdBy;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Unit(
      {this.id,
      this.businessId,
      this.actualName,
      this.shortName,
      this.allowDecimal,
      this.baseUnitId,
      this.baseUnitMultiplier,
      this.createdBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  Unit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    actualName = json['actual_name'];
    shortName = json['short_name'];
    allowDecimal = json['allow_decimal'];
    baseUnitId = json['base_unit_id'];
    baseUnitMultiplier = json['base_unit_multiplier'];
    createdBy = json['created_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['actual_name'] = actualName;
    data['short_name'] = shortName;
    data['allow_decimal'] = allowDecimal;
    data['base_unit_id'] = baseUnitId;
    data['base_unit_multiplier'] = baseUnitMultiplier;
    data['created_by'] = createdBy;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Media {
  int? id;
  int? businessId;
  String? fileName;
  dynamic description;
  int? uploadedBy;
  String? modelType;
  dynamic woocommerceMediaId;
  dynamic modelMediaType;
  int? modelId;
  String? createdAt;
  String? updatedAt;
  String? displayName;
  String? displayUrl;

  Media(
      {this.id,
      this.businessId,
      this.fileName,
      this.description,
      this.uploadedBy,
      this.modelType,
      this.woocommerceMediaId,
      this.modelMediaType,
      this.modelId,
      this.createdAt,
      this.updatedAt,
      this.displayName,
      this.displayUrl});

  Media.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    fileName = json['file_name'];
    description = json['description'];
    uploadedBy = json['uploaded_by'];
    modelType = json['model_type'];
    woocommerceMediaId = json['woocommerce_media_id'];
    modelMediaType = json['model_media_type'];
    modelId = json['model_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    displayName = json['display_name'];
    displayUrl = json['display_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['file_name'] = fileName;
    data['description'] = description;
    data['uploaded_by'] = uploadedBy;
    data['model_type'] = modelType;
    data['woocommerce_media_id'] = woocommerceMediaId;
    data['model_media_type'] = modelMediaType;
    data['model_id'] = modelId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['display_name'] = displayName;
    data['display_url'] = displayUrl;
    return data;
  }
}

class Variations {
  int? id;
  String? name;
  int? productId;
  String? subSku;
  int? productVariationId;
  dynamic woocommerceVariationId;
  dynamic variationValueId;
  String? defaultPurchasePrice;
  String? dppIncTax;
  String? profitPercent;
  String? defaultSellPrice;
  String? sellPriceIncTax;
  String? regularPrice;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<dynamic>? comboVariations;
  ProductVariation? productVariation;

  Variations(
      {this.id,
      this.name,
      this.productId,
      this.subSku,
      this.productVariationId,
      this.woocommerceVariationId,
      this.variationValueId,
      this.defaultPurchasePrice,
      this.dppIncTax,
      this.profitPercent,
      this.defaultSellPrice,
      this.sellPriceIncTax,
      this.regularPrice,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.comboVariations,
      this.productVariation});

  Variations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    productId = json['product_id'];
    subSku = json['sub_sku'];
    productVariationId = json['product_variation_id'];
    woocommerceVariationId = json['woocommerce_variation_id'];
    variationValueId = json['variation_value_id'];
    defaultPurchasePrice = json['default_purchase_price'];
    dppIncTax = json['dpp_inc_tax'];
    profitPercent = json['profit_percent'];
    defaultSellPrice = json['default_sell_price'];
    sellPriceIncTax = json['sell_price_inc_tax'];
    regularPrice = json['regular_price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    if (json['combo_variations'] != null) {
      comboVariations = <Null>[];
      json['combo_variations'].forEach((v) {
        // comboVariations!.add(new Null.fromJson(v));
      });
    }
    productVariation = json['product_variation'] != null
        ? ProductVariation.fromJson(json['product_variation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['product_id'] = productId;
    data['sub_sku'] = subSku;
    data['product_variation_id'] = productVariationId;
    data['woocommerce_variation_id'] = woocommerceVariationId;
    data['variation_value_id'] = variationValueId;
    data['default_purchase_price'] = defaultPurchasePrice;
    data['dpp_inc_tax'] = dppIncTax;
    data['profit_percent'] = profitPercent;
    data['default_sell_price'] = defaultSellPrice;
    data['sell_price_inc_tax'] = sellPriceIncTax;
    data['regular_price'] = regularPrice;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    if (comboVariations != null) {
      data['combo_variations'] =
          comboVariations!.map((v) => v.toJson()).toList();
    }
    if (productVariation != null) {
      data['product_variation'] = productVariation!.toJson();
    }
    return data;
  }
}

class ProductVariation {
  int? id;
  dynamic variationTemplateId;
  String? name;
  int? productId;
  int? isDummy;
  String? createdAt;
  String? updatedAt;

  ProductVariation(
      {this.id,
      this.variationTemplateId,
      this.name,
      this.productId,
      this.isDummy,
      this.createdAt,
      this.updatedAt});

  ProductVariation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    variationTemplateId = json['variation_template_id'];
    name = json['name'];
    productId = json['product_id'];
    isDummy = json['is_dummy'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['variation_template_id'] = variationTemplateId;
    data['name'] = name;
    data['product_id'] = productId;
    data['is_dummy'] = isDummy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Table {
  int? id;
  int? businessId;
  int? locationId;
  String? name;
  dynamic description;
  int? createdBy;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Table(
      {this.id,
      this.businessId,
      this.locationId,
      this.name,
      this.description,
      this.createdBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  Table.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    locationId = json['location_id'];
    name = json['name'];
    description = json['description'];
    createdBy = json['created_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['location_id'] = locationId;
    data['name'] = name;
    data['description'] = description;
    data['created_by'] = createdBy;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class PaymentTypes {
  String? advance;
  String? cash;
  String? card;
  String? cheque;
  String? bankTransfer;
  String? other;
  String? customPay1;
  String? customPay2;
  String? customPay3;
  String? customPay4;
  String? customPay5;
  String? customPay6;
  String? customPay7;

  PaymentTypes(
      {this.advance,
      this.cash,
      this.card,
      this.cheque,
      this.bankTransfer,
      this.other,
      this.customPay1,
      this.customPay2,
      this.customPay3,
      this.customPay4,
      this.customPay5,
      this.customPay6,
      this.customPay7});

  PaymentTypes.fromJson(Map<String, dynamic> json) {
    advance = json['advance'];
    cash = json['cash'];
    card = json['card'];
    cheque = json['cheque'];
    bankTransfer = json['bank_transfer'];
    other = json['other'];
    customPay1 = json['custom_pay_1'];
    customPay2 = json['custom_pay_2'];
    customPay3 = json['custom_pay_3'];
    customPay4 = json['custom_pay_4'];
    customPay5 = json['custom_pay_5'];
    customPay6 = json['custom_pay_6'];
    customPay7 = json['custom_pay_7'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['advance'] = advance;
    data['cash'] = cash;
    data['card'] = card;
    data['cheque'] = cheque;
    data['bank_transfer'] = bankTransfer;
    data['other'] = other;
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

class PosSettings {
  dynamic amountRoundingMethod;
  String? cmmsnCalculationType;
  dynamic razorPayKeyId;
  dynamic razorPayKeySecret;
  dynamic stripePublicKey;
  dynamic stripeSecretKey;
  dynamic cashDenominations;
  int? disablePayCheckout;
  int? disableDraft;
  int? disableExpressCheckout;
  int? hideProductSuggestion;
  int? hideRecentTrans;
  int? disableDiscount;
  int? disableOrderTax;
  int? isPosSubtotalEditable;

  PosSettings(
      {this.amountRoundingMethod,
      this.cmmsnCalculationType,
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

  PosSettings.fromJson(Map<String, dynamic> json) {
    amountRoundingMethod = json['amount_rounding_method'];
    cmmsnCalculationType = json['cmmsn_calculation_type'];
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amount_rounding_method'] = amountRoundingMethod;
    data['cmmsn_calculation_type'] = cmmsnCalculationType;
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

class Activities {
  int? id;
  String? logName;
  String? description;
  int? subjectId;
  String? subjectType;
  int? businessId;
  int? causerId;
  String? causerType;
  Properties? properties;
  String? createdAt;
  String? updatedAt;
  int? isAction;
  Causer? causer;
  Subject? subject;

  Activities(
      {this.id,
      this.logName,
      this.description,
      this.subjectId,
      this.subjectType,
      this.businessId,
      this.causerId,
      this.causerType,
      this.properties,
      this.createdAt,
      this.updatedAt,
      this.isAction,
      this.causer,
      this.subject});

  Activities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logName = json['log_name'];
    description = json['description'];
    subjectId = json['subject_id'];
    subjectType = json['subject_type'];
    businessId = json['business_id'];
    causerId = json['causer_id'];
    causerType = json['causer_type'];
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isAction = json['is_action'];
    causer = json['causer'] != null ? Causer.fromJson(json['causer']) : null;
    subject =
        json['subject'] != null ? Subject.fromJson(json['subject']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['log_name'] = logName;
    data['description'] = description;
    data['subject_id'] = subjectId;
    data['subject_type'] = subjectType;
    data['business_id'] = businessId;
    data['causer_id'] = causerId;
    data['causer_type'] = causerType;
    if (properties != null) {
      data['properties'] = properties!.toJson();
    }
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['is_action'] = isAction;
    if (causer != null) {
      data['causer'] = causer!.toJson();
    }
    if (subject != null) {
      data['subject'] = subject!.toJson();
    }
    return data;
  }
}

class Properties {
  Attributes? attributes;

  Properties({this.attributes});

  Properties.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (attributes != null) {
      data['attributes'] = attributes!.toJson();
    }
    return data;
  }
}

class Attributes {
  String? type;
  String? status;
  String? paymentStatus;
  int? finalTotal;

  Attributes({this.type, this.status, this.paymentStatus, this.finalTotal});

  Attributes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    status = json['status'];
    paymentStatus = json['payment_status'];
    finalTotal = json['final_total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['status'] = status;
    data['payment_status'] = paymentStatus;
    data['final_total'] = finalTotal;
    return data;
  }
}

class Causer {
  int? id;
  String? userType;
  String? surname;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? language;
  dynamic contactNo;
  dynamic address;
  String? di4lToken;
  String? apiToken;
  dynamic googleId;
  dynamic appleId;
  int? businessId;
  dynamic essentialsDepartmentId;
  dynamic essentialsDesignationId;
  dynamic essentialsSalary;
  dynamic essentialsPayPeriod;
  dynamic essentialsPayCycle;
  dynamic maxSalesDiscountPercent;
  int? allowLogin;
  String? status;
  dynamic crmContactId;
  int? isCmmsnAgnt;
  String? cmmsnPercent;
  int? selectedContacts;
  dynamic dob;
  dynamic gender;
  dynamic maritalStatus;
  dynamic bloodGroup;
  dynamic contactNumber;
  dynamic altNumber;
  dynamic familyNumber;
  dynamic fbLink;
  dynamic twitterLink;
  dynamic socialMedia1;
  dynamic socialMedia2;
  dynamic permanentAddress;
  dynamic currentAddress;
  dynamic guardianName;
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  String? bankDetails;
  dynamic idProofName;
  dynamic idProofNumber;
  dynamic locationId;
  dynamic crmDepartment;
  dynamic crmDesignation;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  dynamic numberId;
  String? essentialsCost;
  dynamic essentialsCostPeriod;
  dynamic experience;
  dynamic subjectHandle;
  dynamic achievementsOfStudents;
  dynamic certificate;
  String? verifyEmailAt;

  Causer(
      {this.id,
      this.userType,
      this.surname,
      this.firstName,
      this.lastName,
      this.username,
      this.email,
      this.language,
      this.contactNo,
      this.address,
      this.di4lToken,
      this.apiToken,
      this.googleId,
      this.appleId,
      this.businessId,
      this.essentialsDepartmentId,
      this.essentialsDesignationId,
      this.essentialsSalary,
      this.essentialsPayPeriod,
      this.essentialsPayCycle,
      this.maxSalesDiscountPercent,
      this.allowLogin,
      this.status,
      this.crmContactId,
      this.isCmmsnAgnt,
      this.cmmsnPercent,
      this.selectedContacts,
      this.dob,
      this.gender,
      this.maritalStatus,
      this.bloodGroup,
      this.contactNumber,
      this.altNumber,
      this.familyNumber,
      this.fbLink,
      this.twitterLink,
      this.socialMedia1,
      this.socialMedia2,
      this.permanentAddress,
      this.currentAddress,
      this.guardianName,
      this.customField1,
      this.customField2,
      this.customField3,
      this.customField4,
      this.bankDetails,
      this.idProofName,
      this.idProofNumber,
      this.locationId,
      this.crmDepartment,
      this.crmDesignation,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.numberId,
      this.essentialsCost,
      this.essentialsCostPeriod,
      this.experience,
      this.subjectHandle,
      this.achievementsOfStudents,
      this.certificate,
      this.verifyEmailAt});

  Causer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userType = json['user_type'];
    surname = json['surname'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    email = json['email'];
    language = json['language'];
    contactNo = json['contact_no'];
    address = json['address'];
    di4lToken = json['di4l_token'];
    apiToken = json['api_token'];
    googleId = json['google_id'];
    appleId = json['apple_id'];
    businessId = json['business_id'];
    essentialsDepartmentId = json['essentials_department_id'];
    essentialsDesignationId = json['essentials_designation_id'];
    essentialsSalary = json['essentials_salary'];
    essentialsPayPeriod = json['essentials_pay_period'];
    essentialsPayCycle = json['essentials_pay_cycle'];
    maxSalesDiscountPercent = json['max_sales_discount_percent'];
    allowLogin = json['allow_login'];
    status = json['status'];
    crmContactId = json['crm_contact_id'];
    isCmmsnAgnt = json['is_cmmsn_agnt'];
    cmmsnPercent = json['cmmsn_percent'];
    selectedContacts = json['selected_contacts'];
    dob = json['dob'];
    gender = json['gender'];
    maritalStatus = json['marital_status'];
    bloodGroup = json['blood_group'];
    contactNumber = json['contact_number'];
    altNumber = json['alt_number'];
    familyNumber = json['family_number'];
    fbLink = json['fb_link'];
    twitterLink = json['twitter_link'];
    socialMedia1 = json['social_media_1'];
    socialMedia2 = json['social_media_2'];
    permanentAddress = json['permanent_address'];
    currentAddress = json['current_address'];
    guardianName = json['guardian_name'];
    customField1 = json['custom_field_1'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
    bankDetails = json['bank_details'];
    idProofName = json['id_proof_name'];
    idProofNumber = json['id_proof_number'];
    locationId = json['location_id'];
    crmDepartment = json['crm_department'];
    crmDesignation = json['crm_designation'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    numberId = json['number_id'];
    essentialsCost = json['essentials_cost'];
    essentialsCostPeriod = json['essentials_cost_period'];
    experience = json['experience'];
    subjectHandle = json['subject_handle'];
    achievementsOfStudents = json['achievements_of_students'];
    certificate = json['certificate'];
    verifyEmailAt = json['verify_email_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_type'] = userType;
    data['surname'] = surname;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['username'] = username;
    data['email'] = email;
    data['language'] = language;
    data['contact_no'] = contactNo;
    data['address'] = address;
    data['di4l_token'] = di4lToken;
    data['api_token'] = apiToken;
    data['google_id'] = googleId;
    data['apple_id'] = appleId;
    data['business_id'] = businessId;
    data['essentials_department_id'] = essentialsDepartmentId;
    data['essentials_designation_id'] = essentialsDesignationId;
    data['essentials_salary'] = essentialsSalary;
    data['essentials_pay_period'] = essentialsPayPeriod;
    data['essentials_pay_cycle'] = essentialsPayCycle;
    data['max_sales_discount_percent'] = maxSalesDiscountPercent;
    data['allow_login'] = allowLogin;
    data['status'] = status;
    data['crm_contact_id'] = crmContactId;
    data['is_cmmsn_agnt'] = isCmmsnAgnt;
    data['cmmsn_percent'] = cmmsnPercent;
    data['selected_contacts'] = selectedContacts;
    data['dob'] = dob;
    data['gender'] = gender;
    data['marital_status'] = maritalStatus;
    data['blood_group'] = bloodGroup;
    data['contact_number'] = contactNumber;
    data['alt_number'] = altNumber;
    data['family_number'] = familyNumber;
    data['fb_link'] = fbLink;
    data['twitter_link'] = twitterLink;
    data['social_media_1'] = socialMedia1;
    data['social_media_2'] = socialMedia2;
    data['permanent_address'] = permanentAddress;
    data['current_address'] = currentAddress;
    data['guardian_name'] = guardianName;
    data['custom_field_1'] = customField1;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    data['bank_details'] = bankDetails;
    data['id_proof_name'] = idProofName;
    data['id_proof_number'] = idProofNumber;
    data['location_id'] = locationId;
    data['crm_department'] = crmDepartment;
    data['crm_designation'] = crmDesignation;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['number_id'] = numberId;
    data['essentials_cost'] = essentialsCost;
    data['essentials_cost_period'] = essentialsCostPeriod;
    data['experience'] = experience;
    data['subject_handle'] = subjectHandle;
    data['achievements_of_students'] = achievementsOfStudents;
    data['certificate'] = certificate;
    data['verify_email_at'] = verifyEmailAt;
    return data;
  }
}

class Subject {
  int? id;
  int? businessId;
  int? locationId;
  int? resTableId;
  dynamic resWaiterId;
  dynamic resOrderStatus;
  String? type;
  dynamic subType;
  String? status;
  dynamic subStatus;
  int? isQuotation;
  String? paymentStatus;
  dynamic adjustmentType;
  int? contactId;
  int? customerGroupId;
  String? invoiceNo;
  String? refNo;
  dynamic source;
  dynamic subscriptionNo;
  dynamic subscriptionRepeatOn;
  String? transactionDate;
  String? totalBeforeTax;
  dynamic taxId;
  String? taxAmount;
  String? discountType;
  String? discountAmount;
  int? rpRedeemed;
  String? rpRedeemedAmount;
  dynamic shippingDetails;
  dynamic shippingAddress;
  dynamic shippingStatus;
  String? shippingMethod;
  dynamic deliveredTo;
  dynamic deliveryPartner;
  dynamic deliveryCode;
  dynamic deliveryCodAmount;
  dynamic deliveryStatus;
  dynamic deliveryData;
  String? shippingCharges;
  dynamic shippingCustomField1;
  dynamic shippingCustomField2;
  dynamic shippingCustomField3;
  dynamic shippingCustomField4;
  dynamic shippingCustomField5;
  dynamic additionalNotes;
  dynamic staffNote;
  int? isExport;
  dynamic exportCustomFieldsInfo;
  String? roundOffAmount;
  dynamic additionalExpenseKey1;
  String? additionalExpenseValue1;
  dynamic additionalExpenseKey2;
  String? additionalExpenseValue2;
  dynamic additionalExpenseKey3;
  String? additionalExpenseValue3;
  dynamic additionalExpenseKey4;
  String? additionalExpenseValue4;
  String? finalTotal;
  dynamic expenseCategoryId;
  dynamic expenseSubCategoryId;
  dynamic expenseFor;
  dynamic commissionAgent;
  dynamic document;
  int? isDirectSale;
  int? isSuspend;
  String? exchangeRate;
  dynamic totalAmountRecovered;
  dynamic transferParentId;
  dynamic returnParentId;
  dynamic openingStockProductId;
  int? createdBy;
  dynamic mfgParentProductionPurchaseId;
  dynamic mfgWastedUnits;
  String? mfgProductionCost;
  String? mfgProductionCostType;
  int? mfgIsFinal;
  dynamic repairCompletedOn;
  dynamic repairWarrantyId;
  dynamic repairBrandId;
  dynamic repairStatusId;
  dynamic repairModelId;
  dynamic repairJobSheetId;
  dynamic repairDefects;
  dynamic repairSerialNo;
  dynamic repairChecklist;
  dynamic repairSecurityPwd;
  dynamic repairSecurityPattern;
  dynamic repairDueDate;
  dynamic repairDeviceId;
  int? repairUpdatesNotif;
  int? crmIsOrderRequest;
  dynamic woocommerceOrderId;
  String? essentialsDuration;
  dynamic essentialsDurationUnit;
  String? essentialsAmountPerUnitDuration;
  dynamic essentialsAllowances;
  dynamic essentialsDeductions;
  dynamic preferPaymentMethod;
  dynamic preferPaymentAccount;
  dynamic salesOrderIds;
  dynamic purchaseOrderIds;
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic importBatch;
  dynamic importTime;
  dynamic typesOfServiceId;
  String? packingCharge;
  dynamic packingChargeType;
  dynamic serviceCustomField1;
  dynamic serviceCustomField2;
  dynamic serviceCustomField3;
  dynamic serviceCustomField4;
  dynamic serviceCustomField5;
  dynamic serviceCustomField6;
  int? isCreatedFromApi;
  int? rpEarned;
  dynamic orderAddresses;
  int? isRecurring;
  int? recurInterval;
  String? recurIntervalType;
  int? recurRepetitions;
  dynamic recurStoppedOn;
  dynamic recurParentId;
  String? invoiceToken;
  dynamic payTermNumber;
  dynamic payTermType;
  dynamic pjtProjectId;
  dynamic pjtTitle;
  int? sellingPriceGroupId;
  String? createdAt;
  String? updatedAt;

  Subject(
      {this.id,
      this.businessId,
      this.locationId,
      this.resTableId,
      this.resWaiterId,
      this.resOrderStatus,
      this.type,
      this.subType,
      this.status,
      this.subStatus,
      this.isQuotation,
      this.paymentStatus,
      this.adjustmentType,
      this.contactId,
      this.customerGroupId,
      this.invoiceNo,
      this.refNo,
      this.source,
      this.subscriptionNo,
      this.subscriptionRepeatOn,
      this.transactionDate,
      this.totalBeforeTax,
      this.taxId,
      this.taxAmount,
      this.discountType,
      this.discountAmount,
      this.rpRedeemed,
      this.rpRedeemedAmount,
      this.shippingDetails,
      this.shippingAddress,
      this.shippingStatus,
      this.shippingMethod,
      this.deliveredTo,
      this.deliveryPartner,
      this.deliveryCode,
      this.deliveryCodAmount,
      this.deliveryStatus,
      this.deliveryData,
      this.shippingCharges,
      this.shippingCustomField1,
      this.shippingCustomField2,
      this.shippingCustomField3,
      this.shippingCustomField4,
      this.shippingCustomField5,
      this.additionalNotes,
      this.staffNote,
      this.isExport,
      this.exportCustomFieldsInfo,
      this.roundOffAmount,
      this.additionalExpenseKey1,
      this.additionalExpenseValue1,
      this.additionalExpenseKey2,
      this.additionalExpenseValue2,
      this.additionalExpenseKey3,
      this.additionalExpenseValue3,
      this.additionalExpenseKey4,
      this.additionalExpenseValue4,
      this.finalTotal,
      this.expenseCategoryId,
      this.expenseSubCategoryId,
      this.expenseFor,
      this.commissionAgent,
      this.document,
      this.isDirectSale,
      this.isSuspend,
      this.exchangeRate,
      this.totalAmountRecovered,
      this.transferParentId,
      this.returnParentId,
      this.openingStockProductId,
      this.createdBy,
      this.mfgParentProductionPurchaseId,
      this.mfgWastedUnits,
      this.mfgProductionCost,
      this.mfgProductionCostType,
      this.mfgIsFinal,
      this.repairCompletedOn,
      this.repairWarrantyId,
      this.repairBrandId,
      this.repairStatusId,
      this.repairModelId,
      this.repairJobSheetId,
      this.repairDefects,
      this.repairSerialNo,
      this.repairChecklist,
      this.repairSecurityPwd,
      this.repairSecurityPattern,
      this.repairDueDate,
      this.repairDeviceId,
      this.repairUpdatesNotif,
      this.crmIsOrderRequest,
      this.woocommerceOrderId,
      this.essentialsDuration,
      this.essentialsDurationUnit,
      this.essentialsAmountPerUnitDuration,
      this.essentialsAllowances,
      this.essentialsDeductions,
      this.preferPaymentMethod,
      this.preferPaymentAccount,
      this.salesOrderIds,
      this.purchaseOrderIds,
      this.customField1,
      this.customField2,
      this.customField3,
      this.customField4,
      this.importBatch,
      this.importTime,
      this.typesOfServiceId,
      this.packingCharge,
      this.packingChargeType,
      this.serviceCustomField1,
      this.serviceCustomField2,
      this.serviceCustomField3,
      this.serviceCustomField4,
      this.serviceCustomField5,
      this.serviceCustomField6,
      this.isCreatedFromApi,
      this.rpEarned,
      this.orderAddresses,
      this.isRecurring,
      this.recurInterval,
      this.recurIntervalType,
      this.recurRepetitions,
      this.recurStoppedOn,
      this.recurParentId,
      this.invoiceToken,
      this.payTermNumber,
      this.payTermType,
      this.pjtProjectId,
      this.pjtTitle,
      this.sellingPriceGroupId,
      this.createdAt,
      this.updatedAt});

  Subject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    locationId = json['location_id'];
    resTableId = json['res_table_id'];
    resWaiterId = json['res_waiter_id'];
    resOrderStatus = json['res_order_status'];
    type = json['type'];
    subType = json['sub_type'];
    status = json['status'];
    subStatus = json['sub_status'];
    isQuotation = json['is_quotation'];
    paymentStatus = json['payment_status'];
    adjustmentType = json['adjustment_type'];
    contactId = json['contact_id'];
    customerGroupId = json['customer_group_id'];
    invoiceNo = json['invoice_no'];
    refNo = json['ref_no'];
    source = json['source'];
    subscriptionNo = json['subscription_no'];
    subscriptionRepeatOn = json['subscription_repeat_on'];
    transactionDate = json['transaction_date'];
    totalBeforeTax = json['total_before_tax'];
    taxId = json['tax_id'];
    taxAmount = json['tax_amount'];
    discountType = json['discount_type'];
    discountAmount = json['discount_amount'];
    rpRedeemed = json['rp_redeemed'];
    rpRedeemedAmount = json['rp_redeemed_amount'];
    shippingDetails = json['shipping_details'];
    shippingAddress = json['shipping_address'];
    shippingStatus = json['shipping_status'];
    shippingMethod = json['shipping_method'];
    deliveredTo = json['delivered_to'];
    deliveryPartner = json['delivery_partner'];
    deliveryCode = json['delivery_code'];
    deliveryCodAmount = json['delivery_cod_amount'];
    deliveryStatus = json['delivery_status'];
    deliveryData = json['delivery_data'];
    shippingCharges = json['shipping_charges'];
    shippingCustomField1 = json['shipping_custom_field_1'];
    shippingCustomField2 = json['shipping_custom_field_2'];
    shippingCustomField3 = json['shipping_custom_field_3'];
    shippingCustomField4 = json['shipping_custom_field_4'];
    shippingCustomField5 = json['shipping_custom_field_5'];
    additionalNotes = json['additional_notes'];
    staffNote = json['staff_note'];
    isExport = json['is_export'];
    exportCustomFieldsInfo = json['export_custom_fields_info'];
    roundOffAmount = json['round_off_amount'];
    additionalExpenseKey1 = json['additional_expense_key_1'];
    additionalExpenseValue1 = json['additional_expense_value_1'];
    additionalExpenseKey2 = json['additional_expense_key_2'];
    additionalExpenseValue2 = json['additional_expense_value_2'];
    additionalExpenseKey3 = json['additional_expense_key_3'];
    additionalExpenseValue3 = json['additional_expense_value_3'];
    additionalExpenseKey4 = json['additional_expense_key_4'];
    additionalExpenseValue4 = json['additional_expense_value_4'];
    finalTotal = json['final_total'];
    expenseCategoryId = json['expense_category_id'];
    expenseSubCategoryId = json['expense_sub_category_id'];
    expenseFor = json['expense_for'];
    commissionAgent = json['commission_agent'];
    document = json['document'];
    isDirectSale = json['is_direct_sale'];
    isSuspend = json['is_suspend'];
    exchangeRate = json['exchange_rate'];
    totalAmountRecovered = json['total_amount_recovered'];
    transferParentId = json['transfer_parent_id'];
    returnParentId = json['return_parent_id'];
    openingStockProductId = json['opening_stock_product_id'];
    createdBy = json['created_by'];
    mfgParentProductionPurchaseId = json['mfg_parent_production_purchase_id'];
    mfgWastedUnits = json['mfg_wasted_units'];
    mfgProductionCost = json['mfg_production_cost'];
    mfgProductionCostType = json['mfg_production_cost_type'];
    mfgIsFinal = json['mfg_is_final'];
    repairCompletedOn = json['repair_completed_on'];
    repairWarrantyId = json['repair_warranty_id'];
    repairBrandId = json['repair_brand_id'];
    repairStatusId = json['repair_status_id'];
    repairModelId = json['repair_model_id'];
    repairJobSheetId = json['repair_job_sheet_id'];
    repairDefects = json['repair_defects'];
    repairSerialNo = json['repair_serial_no'];
    repairChecklist = json['repair_checklist'];
    repairSecurityPwd = json['repair_security_pwd'];
    repairSecurityPattern = json['repair_security_pattern'];
    repairDueDate = json['repair_due_date'];
    repairDeviceId = json['repair_device_id'];
    repairUpdatesNotif = json['repair_updates_notif'];
    crmIsOrderRequest = json['crm_is_order_request'];
    woocommerceOrderId = json['woocommerce_order_id'];
    essentialsDuration = json['essentials_duration'];
    essentialsDurationUnit = json['essentials_duration_unit'];
    essentialsAmountPerUnitDuration =
        json['essentials_amount_per_unit_duration'];
    essentialsAllowances = json['essentials_allowances'];
    essentialsDeductions = json['essentials_deductions'];
    preferPaymentMethod = json['prefer_payment_method'];
    preferPaymentAccount = json['prefer_payment_account'];
    salesOrderIds = json['sales_order_ids'];
    purchaseOrderIds = json['purchase_order_ids'];
    customField1 = json['custom_field_1'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
    importBatch = json['import_batch'];
    importTime = json['import_time'];
    typesOfServiceId = json['types_of_service_id'];
    packingCharge = json['packing_charge'];
    packingChargeType = json['packing_charge_type'];
    serviceCustomField1 = json['service_custom_field_1'];
    serviceCustomField2 = json['service_custom_field_2'];
    serviceCustomField3 = json['service_custom_field_3'];
    serviceCustomField4 = json['service_custom_field_4'];
    serviceCustomField5 = json['service_custom_field_5'];
    serviceCustomField6 = json['service_custom_field_6'];
    isCreatedFromApi = json['is_created_from_api'];
    rpEarned = json['rp_earned'];
    orderAddresses = json['order_addresses'];
    isRecurring = json['is_recurring'];
    recurInterval = json['recur_interval'];
    recurIntervalType = json['recur_interval_type'];
    recurRepetitions = json['recur_repetitions'];
    recurStoppedOn = json['recur_stopped_on'];
    recurParentId = json['recur_parent_id'];
    invoiceToken = json['invoice_token'];
    payTermNumber = json['pay_term_number'];
    payTermType = json['pay_term_type'];
    pjtProjectId = json['pjt_project_id'];
    pjtTitle = json['pjt_title'];
    sellingPriceGroupId = json['selling_price_group_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['location_id'] = locationId;
    data['res_table_id'] = resTableId;
    data['res_waiter_id'] = resWaiterId;
    data['res_order_status'] = resOrderStatus;
    data['type'] = type;
    data['sub_type'] = subType;
    data['status'] = status;
    data['sub_status'] = subStatus;
    data['is_quotation'] = isQuotation;
    data['payment_status'] = paymentStatus;
    data['adjustment_type'] = adjustmentType;
    data['contact_id'] = contactId;
    data['customer_group_id'] = customerGroupId;
    data['invoice_no'] = invoiceNo;
    data['ref_no'] = refNo;
    data['source'] = source;
    data['subscription_no'] = subscriptionNo;
    data['subscription_repeat_on'] = subscriptionRepeatOn;
    data['transaction_date'] = transactionDate;
    data['total_before_tax'] = totalBeforeTax;
    data['tax_id'] = taxId;
    data['tax_amount'] = taxAmount;
    data['discount_type'] = discountType;
    data['discount_amount'] = discountAmount;
    data['rp_redeemed'] = rpRedeemed;
    data['rp_redeemed_amount'] = rpRedeemedAmount;
    data['shipping_details'] = shippingDetails;
    data['shipping_address'] = shippingAddress;
    data['shipping_status'] = shippingStatus;
    data['shipping_method'] = shippingMethod;
    data['delivered_to'] = deliveredTo;
    data['delivery_partner'] = deliveryPartner;
    data['delivery_code'] = deliveryCode;
    data['delivery_cod_amount'] = deliveryCodAmount;
    data['delivery_status'] = deliveryStatus;
    data['delivery_data'] = deliveryData;
    data['shipping_charges'] = shippingCharges;
    data['shipping_custom_field_1'] = shippingCustomField1;
    data['shipping_custom_field_2'] = shippingCustomField2;
    data['shipping_custom_field_3'] = shippingCustomField3;
    data['shipping_custom_field_4'] = shippingCustomField4;
    data['shipping_custom_field_5'] = shippingCustomField5;
    data['additional_notes'] = additionalNotes;
    data['staff_note'] = staffNote;
    data['is_export'] = isExport;
    data['export_custom_fields_info'] = exportCustomFieldsInfo;
    data['round_off_amount'] = roundOffAmount;
    data['additional_expense_key_1'] = additionalExpenseKey1;
    data['additional_expense_value_1'] = additionalExpenseValue1;
    data['additional_expense_key_2'] = additionalExpenseKey2;
    data['additional_expense_value_2'] = additionalExpenseValue2;
    data['additional_expense_key_3'] = additionalExpenseKey3;
    data['additional_expense_value_3'] = additionalExpenseValue3;
    data['additional_expense_key_4'] = additionalExpenseKey4;
    data['additional_expense_value_4'] = additionalExpenseValue4;
    data['final_total'] = finalTotal;
    data['expense_category_id'] = expenseCategoryId;
    data['expense_sub_category_id'] = expenseSubCategoryId;
    data['expense_for'] = expenseFor;
    data['commission_agent'] = commissionAgent;
    data['document'] = document;
    data['is_direct_sale'] = isDirectSale;
    data['is_suspend'] = isSuspend;
    data['exchange_rate'] = exchangeRate;
    data['total_amount_recovered'] = totalAmountRecovered;
    data['transfer_parent_id'] = transferParentId;
    data['return_parent_id'] = returnParentId;
    data['opening_stock_product_id'] = openingStockProductId;
    data['created_by'] = createdBy;
    data['mfg_parent_production_purchase_id'] = mfgParentProductionPurchaseId;
    data['mfg_wasted_units'] = mfgWastedUnits;
    data['mfg_production_cost'] = mfgProductionCost;
    data['mfg_production_cost_type'] = mfgProductionCostType;
    data['mfg_is_final'] = mfgIsFinal;
    data['repair_completed_on'] = repairCompletedOn;
    data['repair_warranty_id'] = repairWarrantyId;
    data['repair_brand_id'] = repairBrandId;
    data['repair_status_id'] = repairStatusId;
    data['repair_model_id'] = repairModelId;
    data['repair_job_sheet_id'] = repairJobSheetId;
    data['repair_defects'] = repairDefects;
    data['repair_serial_no'] = repairSerialNo;
    data['repair_checklist'] = repairChecklist;
    data['repair_security_pwd'] = repairSecurityPwd;
    data['repair_security_pattern'] = repairSecurityPattern;
    data['repair_due_date'] = repairDueDate;
    data['repair_device_id'] = repairDeviceId;
    data['repair_updates_notif'] = repairUpdatesNotif;
    data['crm_is_order_request'] = crmIsOrderRequest;
    data['woocommerce_order_id'] = woocommerceOrderId;
    data['essentials_duration'] = essentialsDuration;
    data['essentials_duration_unit'] = essentialsDurationUnit;
    data['essentials_amount_per_unit_duration'] =
        essentialsAmountPerUnitDuration;
    data['essentials_allowances'] = essentialsAllowances;
    data['essentials_deductions'] = essentialsDeductions;
    data['prefer_payment_method'] = preferPaymentMethod;
    data['prefer_payment_account'] = preferPaymentAccount;
    data['sales_order_ids'] = salesOrderIds;
    data['purchase_order_ids'] = purchaseOrderIds;
    data['custom_field_1'] = customField1;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    data['import_batch'] = importBatch;
    data['import_time'] = importTime;
    data['types_of_service_id'] = typesOfServiceId;
    data['packing_charge'] = packingCharge;
    data['packing_charge_type'] = packingChargeType;
    data['service_custom_field_1'] = serviceCustomField1;
    data['service_custom_field_2'] = serviceCustomField2;
    data['service_custom_field_3'] = serviceCustomField3;
    data['service_custom_field_4'] = serviceCustomField4;
    data['service_custom_field_5'] = serviceCustomField5;
    data['service_custom_field_6'] = serviceCustomField6;
    data['is_created_from_api'] = isCreatedFromApi;
    data['rp_earned'] = rpEarned;
    data['order_addresses'] = orderAddresses;
    data['is_recurring'] = isRecurring;
    data['recur_interval'] = recurInterval;
    data['recur_interval_type'] = recurIntervalType;
    data['recur_repetitions'] = recurRepetitions;
    data['recur_stopped_on'] = recurStoppedOn;
    data['recur_parent_id'] = recurParentId;
    data['invoice_token'] = invoiceToken;
    data['pay_term_number'] = payTermNumber;
    data['pay_term_type'] = payTermType;
    data['pjt_project_id'] = pjtProjectId;
    data['pjt_title'] = pjtTitle;
    data['selling_price_group_id'] = sellingPriceGroupId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
