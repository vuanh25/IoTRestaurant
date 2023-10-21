// To parse this JSON data, do
//
//     final sellResponse = sellResponseFromJson(jsonString);

import 'dart:convert';

import 'package:di4l_pos/models/pagination/response/links.dart';
import 'package:di4l_pos/models/pagination/response/meta.dart';

class SellResponse {
  SellResponse({this.data, this.links, this.meta});

  List<SellData>? data;
  Links? links;
  Meta? meta;

  SellResponse copyWith({
    List<SellData>? data,
    Links? links,
    Meta? meta,
  }) =>
      SellResponse(
        data: data ?? this.data,
        links: links ?? this.links,
        meta: meta ?? this.meta,
      );

  factory SellResponse.fromRawJson(String str) =>
      SellResponse.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory SellResponse.fromJson(Map<String?, dynamic> json) => SellResponse(
        data: json["data"] == null
            ? null
            : List<SellData>.from(
                json["data"].map((x) => SellData.fromJson(x))),
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String?, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "links": links == null ? null : links!.toJson(),
        "meta": meta == null ? null : meta!.toJson(),
      };
}

class SellData {
  SellData({
    this.id,
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
    this.deliveredTo,
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
    this.sellLines,
    this.paymentLines,
    this.contact,
    this.invoiceUrl,
    this.paymentLink,
  });

  int? id;
  int? businessId;
  int? locationId;
  int? resTableId;
  dynamic resWaiterId;
  dynamic resOrderStatus;
  String? type;
  dynamic subType;
  String? status;
  String? subStatus;
  int? isQuotation;
  String? paymentStatus;
  dynamic adjustmentType;
  int? contactId;
  dynamic customerGroupId;
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
  dynamic deliveredTo;
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
  String? payTermType;
  dynamic pjtProjectId;
  dynamic pjtTitle;
  dynamic sellingPriceGroupId;
  String? createdAt;
  String? updatedAt;
  List<SellLine>? sellLines;
  List<dynamic>? paymentLines;
  Contact? contact;
  String? invoiceUrl;
  String? paymentLink;

  SellData copyWith({
    int? id,
    int? businessId,
    int? locationId,
    int? resTableId,
    dynamic resWaiterId,
    dynamic resOrderStatus,
    String? type,
    dynamic subType,
    String? status,
    String? subStatus,
    int? isQuotation,
    String? paymentStatus,
    dynamic adjustmentType,
    int? contactId,
    dynamic customerGroupId,
    String? invoiceNo,
    String? refNo,
    dynamic source,
    dynamic subscriptionNo,
    dynamic subscriptionRepeatOn,
    String? transactionDate,
    String? totalBeforeTax,
    dynamic taxId,
    String? taxAmount,
    String? discountType,
    String? discountAmount,
    int? rpRedeemed,
    String? rpRedeemedAmount,
    dynamic shippingDetails,
    dynamic shippingAddress,
    dynamic shippingStatus,
    dynamic deliveredTo,
    String? shippingCharges,
    dynamic shippingCustomField1,
    dynamic shippingCustomField2,
    dynamic shippingCustomField3,
    dynamic shippingCustomField4,
    dynamic shippingCustomField5,
    dynamic additionalNotes,
    dynamic staffNote,
    int? isExport,
    dynamic exportCustomFieldsInfo,
    String? roundOffAmount,
    dynamic additionalExpenseKey1,
    String? additionalExpenseValue1,
    dynamic additionalExpenseKey2,
    String? additionalExpenseValue2,
    dynamic additionalExpenseKey3,
    String? additionalExpenseValue3,
    dynamic additionalExpenseKey4,
    String? additionalExpenseValue4,
    String? finalTotal,
    dynamic expenseCategoryId,
    dynamic expenseSubCategoryId,
    dynamic expenseFor,
    dynamic commissionAgent,
    dynamic document,
    int? isDirectSale,
    int? isSuspend,
    String? exchangeRate,
    dynamic totalAmountRecovered,
    dynamic transferParentId,
    dynamic returnParentId,
    dynamic openingStockProductId,
    int? createdBy,
    dynamic mfgParentProductionPurchaseId,
    dynamic mfgWastedUnits,
    String? mfgProductionCost,
    String? mfgProductionCostType,
    int? mfgIsFinal,
    dynamic repairCompletedOn,
    dynamic repairWarrantyId,
    dynamic repairBrandId,
    dynamic repairStatusId,
    dynamic repairModelId,
    dynamic repairJobSheetId,
    dynamic repairDefects,
    dynamic repairSerialNo,
    dynamic repairChecklist,
    dynamic repairSecurityPwd,
    dynamic repairSecurityPattern,
    dynamic repairDueDate,
    dynamic repairDeviceId,
    int? repairUpdatesNotif,
    int? crmIsOrderRequest,
    dynamic woocommerceOrderId,
    String? essentialsDuration,
    dynamic essentialsDurationUnit,
    String? essentialsAmountPerUnitDuration,
    dynamic essentialsAllowances,
    dynamic essentialsDeductions,
    dynamic preferPaymentMethod,
    dynamic preferPaymentAccount,
    dynamic salesOrderIds,
    dynamic purchaseOrderIds,
    dynamic customField1,
    dynamic customField2,
    dynamic customField3,
    dynamic customField4,
    dynamic importBatch,
    dynamic importTime,
    dynamic typesOfServiceId,
    String? packingCharge,
    dynamic packingChargeType,
    dynamic serviceCustomField1,
    dynamic serviceCustomField2,
    dynamic serviceCustomField3,
    dynamic serviceCustomField4,
    dynamic serviceCustomField5,
    dynamic serviceCustomField6,
    int? isCreatedFromApi,
    int? rpEarned,
    dynamic orderAddresses,
    int? isRecurring,
    int? recurInterval,
    String? recurIntervalType,
    int? recurRepetitions,
    dynamic recurStoppedOn,
    dynamic recurParentId,
    String? invoiceToken,
    dynamic payTermNumber,
    String? payTermType,
    dynamic pjtProjectId,
    dynamic pjtTitle,
    dynamic sellingPriceGroupId,
    String? createdAt,
    String? updatedAt,
    List<SellLine>? sellLines,
    List<dynamic>? paymentLines,
    Contact? contact,
    String? invoiceUrl,
    String? paymentLink,
  }) =>
      SellData(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        locationId: locationId ?? this.locationId,
        resTableId: resTableId ?? this.resTableId,
        resWaiterId: resWaiterId ?? this.resWaiterId,
        resOrderStatus: resOrderStatus ?? this.resOrderStatus,
        type: type ?? this.type,
        subType: subType ?? this.subType,
        status: status ?? this.status,
        subStatus: subStatus ?? this.subStatus,
        isQuotation: isQuotation ?? this.isQuotation,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        adjustmentType: adjustmentType ?? this.adjustmentType,
        contactId: contactId ?? this.contactId,
        customerGroupId: customerGroupId ?? this.customerGroupId,
        invoiceNo: invoiceNo ?? this.invoiceNo,
        refNo: refNo ?? this.refNo,
        source: source ?? this.source,
        subscriptionNo: subscriptionNo ?? this.subscriptionNo,
        subscriptionRepeatOn: subscriptionRepeatOn ?? this.subscriptionRepeatOn,
        transactionDate: transactionDate ?? this.transactionDate,
        totalBeforeTax: totalBeforeTax ?? this.totalBeforeTax,
        taxId: taxId ?? this.taxId,
        taxAmount: taxAmount ?? this.taxAmount,
        discountType: discountType ?? this.discountType,
        discountAmount: discountAmount ?? this.discountAmount,
        rpRedeemed: rpRedeemed ?? this.rpRedeemed,
        rpRedeemedAmount: rpRedeemedAmount ?? this.rpRedeemedAmount,
        shippingDetails: shippingDetails ?? this.shippingDetails,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        shippingStatus: shippingStatus ?? this.shippingStatus,
        deliveredTo: deliveredTo ?? this.deliveredTo,
        shippingCharges: shippingCharges ?? this.shippingCharges,
        shippingCustomField1: shippingCustomField1 ?? this.shippingCustomField1,
        shippingCustomField2: shippingCustomField2 ?? this.shippingCustomField2,
        shippingCustomField3: shippingCustomField3 ?? this.shippingCustomField3,
        shippingCustomField4: shippingCustomField4 ?? this.shippingCustomField4,
        shippingCustomField5: shippingCustomField5 ?? this.shippingCustomField5,
        additionalNotes: additionalNotes ?? this.additionalNotes,
        staffNote: staffNote ?? this.staffNote,
        isExport: isExport ?? this.isExport,
        exportCustomFieldsInfo:
            exportCustomFieldsInfo ?? this.exportCustomFieldsInfo,
        roundOffAmount: roundOffAmount ?? this.roundOffAmount,
        additionalExpenseKey1:
            additionalExpenseKey1 ?? this.additionalExpenseKey1,
        additionalExpenseValue1:
            additionalExpenseValue1 ?? this.additionalExpenseValue1,
        additionalExpenseKey2:
            additionalExpenseKey2 ?? this.additionalExpenseKey2,
        additionalExpenseValue2:
            additionalExpenseValue2 ?? this.additionalExpenseValue2,
        additionalExpenseKey3:
            additionalExpenseKey3 ?? this.additionalExpenseKey3,
        additionalExpenseValue3:
            additionalExpenseValue3 ?? this.additionalExpenseValue3,
        additionalExpenseKey4:
            additionalExpenseKey4 ?? this.additionalExpenseKey4,
        additionalExpenseValue4:
            additionalExpenseValue4 ?? this.additionalExpenseValue4,
        finalTotal: finalTotal ?? this.finalTotal,
        expenseCategoryId: expenseCategoryId ?? this.expenseCategoryId,
        expenseSubCategoryId: expenseSubCategoryId ?? this.expenseSubCategoryId,
        expenseFor: expenseFor ?? this.expenseFor,
        commissionAgent: commissionAgent ?? this.commissionAgent,
        document: document ?? this.document,
        isDirectSale: isDirectSale ?? this.isDirectSale,
        isSuspend: isSuspend ?? this.isSuspend,
        exchangeRate: exchangeRate ?? this.exchangeRate,
        totalAmountRecovered: totalAmountRecovered ?? this.totalAmountRecovered,
        transferParentId: transferParentId ?? this.transferParentId,
        returnParentId: returnParentId ?? this.returnParentId,
        openingStockProductId:
            openingStockProductId ?? this.openingStockProductId,
        createdBy: createdBy ?? this.createdBy,
        mfgParentProductionPurchaseId:
            mfgParentProductionPurchaseId ?? this.mfgParentProductionPurchaseId,
        mfgWastedUnits: mfgWastedUnits ?? this.mfgWastedUnits,
        mfgProductionCost: mfgProductionCost ?? this.mfgProductionCost,
        mfgProductionCostType:
            mfgProductionCostType ?? this.mfgProductionCostType,
        mfgIsFinal: mfgIsFinal ?? this.mfgIsFinal,
        repairCompletedOn: repairCompletedOn ?? this.repairCompletedOn,
        repairWarrantyId: repairWarrantyId ?? this.repairWarrantyId,
        repairBrandId: repairBrandId ?? this.repairBrandId,
        repairStatusId: repairStatusId ?? this.repairStatusId,
        repairModelId: repairModelId ?? this.repairModelId,
        repairJobSheetId: repairJobSheetId ?? this.repairJobSheetId,
        repairDefects: repairDefects ?? this.repairDefects,
        repairSerialNo: repairSerialNo ?? this.repairSerialNo,
        repairChecklist: repairChecklist ?? this.repairChecklist,
        repairSecurityPwd: repairSecurityPwd ?? this.repairSecurityPwd,
        repairSecurityPattern:
            repairSecurityPattern ?? this.repairSecurityPattern,
        repairDueDate: repairDueDate ?? this.repairDueDate,
        repairDeviceId: repairDeviceId ?? this.repairDeviceId,
        repairUpdatesNotif: repairUpdatesNotif ?? this.repairUpdatesNotif,
        crmIsOrderRequest: crmIsOrderRequest ?? this.crmIsOrderRequest,
        woocommerceOrderId: woocommerceOrderId ?? this.woocommerceOrderId,
        essentialsDuration: essentialsDuration ?? this.essentialsDuration,
        essentialsDurationUnit:
            essentialsDurationUnit ?? this.essentialsDurationUnit,
        essentialsAmountPerUnitDuration: essentialsAmountPerUnitDuration ??
            this.essentialsAmountPerUnitDuration,
        essentialsAllowances: essentialsAllowances ?? this.essentialsAllowances,
        essentialsDeductions: essentialsDeductions ?? this.essentialsDeductions,
        preferPaymentMethod: preferPaymentMethod ?? this.preferPaymentMethod,
        preferPaymentAccount: preferPaymentAccount ?? this.preferPaymentAccount,
        salesOrderIds: salesOrderIds ?? this.salesOrderIds,
        purchaseOrderIds: purchaseOrderIds ?? this.purchaseOrderIds,
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        importBatch: importBatch ?? this.importBatch,
        importTime: importTime ?? this.importTime,
        typesOfServiceId: typesOfServiceId ?? this.typesOfServiceId,
        packingCharge: packingCharge ?? this.packingCharge,
        packingChargeType: packingChargeType ?? this.packingChargeType,
        serviceCustomField1: serviceCustomField1 ?? this.serviceCustomField1,
        serviceCustomField2: serviceCustomField2 ?? this.serviceCustomField2,
        serviceCustomField3: serviceCustomField3 ?? this.serviceCustomField3,
        serviceCustomField4: serviceCustomField4 ?? this.serviceCustomField4,
        serviceCustomField5: serviceCustomField5 ?? this.serviceCustomField5,
        serviceCustomField6: serviceCustomField6 ?? this.serviceCustomField6,
        isCreatedFromApi: isCreatedFromApi ?? this.isCreatedFromApi,
        rpEarned: rpEarned ?? this.rpEarned,
        orderAddresses: orderAddresses ?? this.orderAddresses,
        isRecurring: isRecurring ?? this.isRecurring,
        recurInterval: recurInterval ?? this.recurInterval,
        recurIntervalType: recurIntervalType ?? this.recurIntervalType,
        recurRepetitions: recurRepetitions ?? this.recurRepetitions,
        recurStoppedOn: recurStoppedOn ?? this.recurStoppedOn,
        recurParentId: recurParentId ?? this.recurParentId,
        invoiceToken: invoiceToken ?? this.invoiceToken,
        payTermNumber: payTermNumber ?? this.payTermNumber,
        payTermType: payTermType ?? this.payTermType,
        pjtProjectId: pjtProjectId ?? this.pjtProjectId,
        pjtTitle: pjtTitle ?? this.pjtTitle,
        sellingPriceGroupId: sellingPriceGroupId ?? this.sellingPriceGroupId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sellLines: sellLines ?? this.sellLines,
        paymentLines: paymentLines ?? this.paymentLines,
        contact: contact ?? this.contact,
        invoiceUrl: invoiceUrl ?? this.invoiceUrl,
        paymentLink: paymentLink ?? this.paymentLink,
      );

  factory SellData.fromRawJson(String str) =>
      SellData.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory SellData.fromJson(Map<String?, dynamic> json) => SellData(
        id: json["id"],
        businessId: json["business_id"],
        locationId: json["location_id"],
        resTableId: json["res_table_id"],
        resWaiterId: json["res_waiter_id"],
        resOrderStatus: json["res_order_status"],
        type: json["type"],
        subType: json["sub_type"],
        status: json["status"],
        subStatus: json["sub_status"],
        isQuotation: json["is_quotation"],
        paymentStatus: json["payment_status"],
        adjustmentType: json["adjustment_type"],
        contactId: json["contact_id"],
        customerGroupId: json["customer_group_id"],
        invoiceNo: json["invoice_no"],
        refNo: json["ref_no"],
        source: json["source"],
        subscriptionNo: json["subscription_no"],
        subscriptionRepeatOn: json["subscription_repeat_on"],
        transactionDate: json["transaction_date"],
        totalBeforeTax: json["total_before_tax"],
        taxId: json["tax_id"],
        taxAmount: json["tax_amount"],
        discountType: json["discount_type"],
        discountAmount: json["discount_amount"],
        rpRedeemed: json["rp_redeemed"],
        rpRedeemedAmount: json["rp_redeemed_amount"],
        shippingDetails: json["shipping_details"],
        shippingAddress: json["shipping_address"],
        shippingStatus: json["shipping_."],
        deliveredTo: json["delivered_to"],
        shippingCharges: json["shipping_charges"],
        shippingCustomField1: json["shipping_custom_field_1"],
        shippingCustomField2: json["shipping_custom_field_2"],
        shippingCustomField3: json["shipping_custom_field_3"],
        shippingCustomField4: json["shipping_custom_field_4"],
        shippingCustomField5: json["shipping_custom_field_5"],
        additionalNotes: json["additional_notes"],
        staffNote: json["staff_note"],
        isExport: json["is_export"],
        exportCustomFieldsInfo: json["export_custom_fields_info"],
        roundOffAmount: json["round_off_amount"],
        additionalExpenseKey1: json["additional_expense_key_1"],
        additionalExpenseValue1: json["additional_expense_value_1"],
        additionalExpenseKey2: json["additional_expense_key_2"],
        additionalExpenseValue2: json["additional_expense_value_2"],
        additionalExpenseKey3: json["additional_expense_key_3"],
        additionalExpenseValue3: json["additional_expense_value_3"],
        additionalExpenseKey4: json["additional_expense_key_4"],
        additionalExpenseValue4: json["additional_expense_value_4"],
        finalTotal: json["final_total"],
        expenseCategoryId: json["expense_category_id"],
        expenseSubCategoryId: json["expense_sub_category_id"],
        expenseFor: json["expense_for"],
        commissionAgent: json["commission_agent"],
        document: json["document"],
        isDirectSale: json["is_direct_sale"],
        isSuspend: json["is_suspend"],
        exchangeRate: json["exchange_rate"],
        totalAmountRecovered: json["total_amount_recovered"],
        transferParentId: json["transfer_parent_id"],
        returnParentId: json["return_parent_id"],
        openingStockProductId: json["opening_stock_product_id"],
        createdBy: json["created_by"],
        mfgParentProductionPurchaseId:
            json["mfg_parent_production_purchase_id"],
        mfgWastedUnits: json["mfg_wasted_units"],
        mfgProductionCost: json["mfg_production_cost"],
        mfgProductionCostType: json["mfg_production_cost_type"],
        mfgIsFinal: json["mfg_is_final"],
        repairCompletedOn: json["repair_completed_on"],
        repairWarrantyId: json["repair_warranty_id"],
        repairBrandId: json["repair_brand_id"],
        repairStatusId: json["repair_status_id"],
        repairModelId: json["repair_model_id"],
        repairJobSheetId: json["repair_job_sheet_id"],
        repairDefects: json["repair_defects"],
        repairSerialNo: json["repair_serial_no"],
        repairChecklist: json["repair_checklist"],
        repairSecurityPwd: json["repair_security_pwd"],
        repairSecurityPattern: json["repair_security_pattern"],
        repairDueDate: json["repair_due_date"],
        repairDeviceId: json["repair_device_id"],
        repairUpdatesNotif: json["repair_updates_notif"],
        crmIsOrderRequest: json["crm_is_order_request"],
        woocommerceOrderId: json["woocommerce_order_id"],
        essentialsDuration: json["essentials_duration"],
        essentialsDurationUnit: json["essentials_duration_unit"],
        essentialsAmountPerUnitDuration:
            json["essentials_amount_per_unit_duration"],
        essentialsAllowances: json["essentials_allowances"],
        essentialsDeductions: json["essentials_deductions"],
        preferPaymentMethod: json["prefer_payment_method"],
        preferPaymentAccount: json["prefer_payment_account"],
        salesOrderIds: json["sales_order_ids"],
        purchaseOrderIds: json["purchase_order_ids"],
        customField1: json["custom_field_1"],
        customField2: json["custom_field_2"],
        customField3: json["custom_field_3"],
        customField4: json["custom_field_4"],
        importBatch: json["import_batch"],
        importTime: json["import_time"],
        typesOfServiceId: json["types_of_service_id"],
        packingCharge: json["packing_charge"],
        packingChargeType: json["packing_charge_type"],
        serviceCustomField1: json["service_custom_field_1"],
        serviceCustomField2: json["service_custom_field_2"],
        serviceCustomField3: json["service_custom_field_3"],
        serviceCustomField4: json["service_custom_field_4"],
        serviceCustomField5: json["service_custom_field_5"],
        serviceCustomField6: json["service_custom_field_6"],
        isCreatedFromApi: json["is_created_from_api"],
        rpEarned: json["rp_earned"],
        orderAddresses: json["order_addresses"],
        isRecurring: json["is_recurring"],
        recurInterval: json["recur_interval"],
        recurIntervalType: json["recur_interval_type"],
        recurRepetitions: json["recur_repetitions"],
        recurStoppedOn: json["recur_stopped_on"],
        recurParentId: json["recur_parent_id"],
        invoiceToken: json["invoice_token"],
        payTermNumber: json["pay_term_number"],
        payTermType: json["pay_term_type"],
        pjtProjectId: json["pjt_project_id"],
        pjtTitle: json["pjt_title"],
        sellingPriceGroupId: json["selling_price_group_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        sellLines: json["sell_lines"] == null
            ? null
            : List<SellLine>.from(
                json["sell_lines"].map((x) => SellLine.fromJson(x))),
        paymentLines: json["payment_lines"] == null
            ? null
            : List<dynamic>.from(json["payment_lines"].map((x) => x)),
        contact:
            json["contact"] == null ? null : Contact.fromJson(json["contact"]),
        invoiceUrl: json["invoice_url"],
        paymentLink: json["payment_link"],
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "location_id": locationId,
        "res_table_id": resTableId,
        "res_waiter_id": resWaiterId,
        "res_order_status": resOrderStatus,
        "type": type,
        "sub_type": subType,
        "status": status,
        "sub_status": subStatus,
        "is_quotation": isQuotation,
        "payment_status": paymentStatus,
        "adjustment_type": adjustmentType,
        "contact_id": contactId,
        "customer_group_id": customerGroupId,
        "invoice_no": invoiceNo,
        "ref_no": refNo,
        "source": source,
        "subscription_no": subscriptionNo,
        "subscription_repeat_on": subscriptionRepeatOn,
        "transaction_date": transactionDate,
        "total_before_tax": totalBeforeTax,
        "tax_id": taxId,
        "tax_amount": taxAmount,
        "discount_type": discountType,
        "discount_amount": discountAmount,
        "rp_redeemed": rpRedeemed,
        "rp_redeemed_amount": rpRedeemedAmount,
        "shipping_details": shippingDetails,
        "shipping_address": shippingAddress,
        "shipping_status": shippingStatus,
        "delivered_to": deliveredTo,
        "shipping_charges": shippingCharges,
        "shipping_custom_field_1": shippingCustomField1,
        "shipping_custom_field_2": shippingCustomField2,
        "shipping_custom_field_3": shippingCustomField3,
        "shipping_custom_field_4": shippingCustomField4,
        "shipping_custom_field_5": shippingCustomField5,
        "additional_notes": additionalNotes,
        "staff_note": staffNote,
        "is_export": isExport,
        "export_custom_fields_info": exportCustomFieldsInfo,
        "round_off_amount": roundOffAmount,
        "additional_expense_key_1": additionalExpenseKey1,
        "additional_expense_value_1": additionalExpenseValue1,
        "additional_expense_key_2": additionalExpenseKey2,
        "additional_expense_value_2": additionalExpenseValue2,
        "additional_expense_key_3": additionalExpenseKey3,
        "additional_expense_value_3": additionalExpenseValue3,
        "additional_expense_key_4": additionalExpenseKey4,
        "additional_expense_value_4": additionalExpenseValue4,
        "final_total": finalTotal,
        "expense_category_id": expenseCategoryId,
        "expense_sub_category_id": expenseSubCategoryId,
        "expense_for": expenseFor,
        "commission_agent": commissionAgent,
        "document": document,
        "is_direct_sale": isDirectSale,
        "is_suspend": isSuspend,
        "exchange_rate": exchangeRate,
        "total_amount_recovered": totalAmountRecovered,
        "transfer_parent_id": transferParentId,
        "return_parent_id": returnParentId,
        "opening_stock_product_id": openingStockProductId,
        "created_by": createdBy,
        "mfg_parent_production_purchase_id": mfgParentProductionPurchaseId,
        "mfg_wasted_units": mfgWastedUnits,
        "mfg_production_cost": mfgProductionCost,
        "mfg_production_cost_type": mfgProductionCostType,
        "mfg_is_final": mfgIsFinal,
        "repair_completed_on": repairCompletedOn,
        "repair_warranty_id": repairWarrantyId,
        "repair_brand_id": repairBrandId,
        "repair_status_id": repairStatusId,
        "repair_model_id": repairModelId,
        "repair_job_sheet_id": repairJobSheetId,
        "repair_defects": repairDefects,
        "repair_serial_no": repairSerialNo,
        "repair_checklist": repairChecklist,
        "repair_security_pwd": repairSecurityPwd,
        "repair_security_pattern": repairSecurityPattern,
        "repair_due_date": repairDueDate,
        "repair_device_id": repairDeviceId,
        "repair_updates_notif": repairUpdatesNotif,
        "crm_is_order_request": crmIsOrderRequest,
        "woocommerce_order_id": woocommerceOrderId,
        "essentials_duration": essentialsDuration,
        "essentials_duration_unit": essentialsDurationUnit,
        "essentials_amount_per_unit_duration": essentialsAmountPerUnitDuration,
        "essentials_allowances": essentialsAllowances,
        "essentials_deductions": essentialsDeductions,
        "prefer_payment_method": preferPaymentMethod,
        "prefer_payment_account": preferPaymentAccount,
        "sales_order_ids": salesOrderIds,
        "purchase_order_ids": purchaseOrderIds,
        "custom_field_1": customField1,
        "custom_field_2": customField2,
        "custom_field_3": customField3,
        "custom_field_4": customField4,
        "import_batch": importBatch,
        "import_time": importTime,
        "types_of_service_id": typesOfServiceId,
        "packing_charge": packingCharge,
        "packing_charge_type": packingChargeType,
        "service_custom_field_1": serviceCustomField1,
        "service_custom_field_2": serviceCustomField2,
        "service_custom_field_3": serviceCustomField3,
        "service_custom_field_4": serviceCustomField4,
        "service_custom_field_5": serviceCustomField5,
        "service_custom_field_6": serviceCustomField6,
        "is_created_from_api": isCreatedFromApi,
        "rp_earned": rpEarned,
        "order_addresses": orderAddresses,
        "is_recurring": isRecurring,
        "recur_interval": recurInterval,
        "recur_interval_type": recurIntervalType,
        "recur_repetitions": recurRepetitions,
        "recur_stopped_on": recurStoppedOn,
        "recur_parent_id": recurParentId,
        "invoice_token": invoiceToken,
        "pay_term_number": payTermNumber,
        "pay_term_type": payTermType,
        "pjt_project_id": pjtProjectId,
        "pjt_title": pjtTitle,
        "selling_price_group_id": sellingPriceGroupId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "sell_lines": sellLines == null
            ? null
            : List<dynamic>.from(sellLines!.map((x) => x.toJson())),
        "payment_lines": paymentLines == null
            ? null
            : List<dynamic>.from(paymentLines!.map((x) => x)),
        "contact": contact == null ? null : contact!.toJson(),
        "invoice_url": invoiceUrl,
        "payment_link": paymentLink,
      };
}

class Contact {
  Contact({
    this.id,
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
  });

  int? id;
  int? businessId;
  String? type;
  dynamic supplierBusinessName;
  String? name;
  dynamic prefix;
  String? firstName;
  dynamic middleName;
  String? lastName;
  String? email;
  dynamic contactId;
  String? contactStatus;
  dynamic taxNumber;
  String? city;
  String? state;
  String? country;
  dynamic addressLine1;
  dynamic addressLine2;
  dynamic zipCode;
  dynamic dob;
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
  dynamic customerGroupId;
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

  Contact copyWith({
    int? id,
    int? businessId,
    String? type,
    dynamic supplierBusinessName,
    String? name,
    dynamic prefix,
    String? firstName,
    dynamic middleName,
    String? lastName,
    String? email,
    dynamic contactId,
    String? contactStatus,
    dynamic taxNumber,
    String? city,
    String? state,
    String? country,
    dynamic addressLine1,
    dynamic addressLine2,
    dynamic zipCode,
    dynamic dob,
    String? mobile,
    dynamic landline,
    dynamic alternateNumber,
    dynamic payTermNumber,
    dynamic payTermType,
    dynamic creditLimit,
    int? createdBy,
    dynamic convertedBy,
    dynamic convertedOn,
    String? balance,
    int? totalRp,
    int? totalRpUsed,
    int? totalRpExpired,
    int? isDefault,
    dynamic shippingAddress,
    dynamic shippingCustomFieldDetails,
    int? isExport,
    dynamic exportCustomField1,
    dynamic exportCustomField2,
    dynamic exportCustomField3,
    dynamic exportCustomField4,
    dynamic exportCustomField5,
    dynamic exportCustomField6,
    dynamic position,
    dynamic customerGroupId,
    dynamic crmSource,
    dynamic crmLifeStage,
    dynamic customField1,
    dynamic customField2,
    dynamic customField3,
    dynamic customField4,
    dynamic customField5,
    dynamic customField6,
    dynamic customField7,
    dynamic customField8,
    dynamic customField9,
    dynamic customField10,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    dynamic parentId,
  }) =>
      Contact(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        type: type ?? this.type,
        supplierBusinessName: supplierBusinessName ?? this.supplierBusinessName,
        name: name ?? this.name,
        prefix: prefix ?? this.prefix,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        contactId: contactId ?? this.contactId,
        contactStatus: contactStatus ?? this.contactStatus,
        taxNumber: taxNumber ?? this.taxNumber,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        addressLine1: addressLine1 ?? this.addressLine1,
        addressLine2: addressLine2 ?? this.addressLine2,
        zipCode: zipCode ?? this.zipCode,
        dob: dob ?? this.dob,
        mobile: mobile ?? this.mobile,
        landline: landline ?? this.landline,
        alternateNumber: alternateNumber ?? this.alternateNumber,
        payTermNumber: payTermNumber ?? this.payTermNumber,
        payTermType: payTermType ?? this.payTermType,
        creditLimit: creditLimit ?? this.creditLimit,
        createdBy: createdBy ?? this.createdBy,
        convertedBy: convertedBy ?? this.convertedBy,
        convertedOn: convertedOn ?? this.convertedOn,
        balance: balance ?? this.balance,
        totalRp: totalRp ?? this.totalRp,
        totalRpUsed: totalRpUsed ?? this.totalRpUsed,
        totalRpExpired: totalRpExpired ?? this.totalRpExpired,
        isDefault: isDefault ?? this.isDefault,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        shippingCustomFieldDetails:
            shippingCustomFieldDetails ?? this.shippingCustomFieldDetails,
        isExport: isExport ?? this.isExport,
        exportCustomField1: exportCustomField1 ?? this.exportCustomField1,
        exportCustomField2: exportCustomField2 ?? this.exportCustomField2,
        exportCustomField3: exportCustomField3 ?? this.exportCustomField3,
        exportCustomField4: exportCustomField4 ?? this.exportCustomField4,
        exportCustomField5: exportCustomField5 ?? this.exportCustomField5,
        exportCustomField6: exportCustomField6 ?? this.exportCustomField6,
        position: position ?? this.position,
        customerGroupId: customerGroupId ?? this.customerGroupId,
        crmSource: crmSource ?? this.crmSource,
        crmLifeStage: crmLifeStage ?? this.crmLifeStage,
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
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        parentId: parentId ?? this.parentId,
      );

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String?, dynamic> json) => Contact(
        id: json["id"],
        businessId: json["business_id"],
        type: json["type"],
        supplierBusinessName: json["supplier_business_name"],
        name: json["name"],
        prefix: json["prefix"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        email: json["email"],
        contactId: json["contact_id"],
        contactStatus: json["contact_status"],
        taxNumber: json["tax_number"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        addressLine1: json["address_line_1"],
        addressLine2: json["address_line_2"],
        zipCode: json["zip_code"],
        dob: json["dob"],
        mobile: json["mobile"],
        landline: json["landline"],
        alternateNumber: json["alternate_number"],
        payTermNumber: json["pay_term_number"],
        payTermType: json["pay_term_type"],
        creditLimit: json["credit_limit"],
        createdBy: json["created_by"],
        convertedBy: json["converted_by"],
        convertedOn: json["converted_on"],
        balance: json["balance"],
        totalRp: json["total_rp"],
        totalRpUsed: json["total_rp_used"],
        totalRpExpired: json["total_rp_expired"],
        isDefault: json["is_default"],
        shippingAddress: json["shipping_address"],
        shippingCustomFieldDetails: json["shipping_custom_field_details"],
        isExport: json["is_export"],
        exportCustomField1: json["export_custom_field_1"],
        exportCustomField2: json["export_custom_field_2"],
        exportCustomField3: json["export_custom_field_3"],
        exportCustomField4: json["export_custom_field_4"],
        exportCustomField5: json["export_custom_field_5"],
        exportCustomField6: json["export_custom_field_6"],
        position: json["position"],
        customerGroupId: json["customer_group_id"],
        crmSource: json["crm_source"],
        crmLifeStage: json["crm_life_stage"],
        customField1: json["custom_field1"],
        customField2: json["custom_field2"],
        customField3: json["custom_field3"],
        customField4: json["custom_field4"],
        customField5: json["custom_field5"],
        customField6: json["custom_field6"],
        customField7: json["custom_field7"],
        customField8: json["custom_field8"],
        customField9: json["custom_field9"],
        customField10: json["custom_field10"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        parentId: json["parent_id"],
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "type": type,
        "supplier_business_name": supplierBusinessName,
        "name": name,
        "prefix": prefix,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "email": email,
        "contact_id": contactId,
        "contact_status": contactStatus,
        "tax_number": taxNumber,
        "city": city,
        "state": state,
        "country": country,
        "address_line_1": addressLine1,
        "address_line_2": addressLine2,
        "zip_code": zipCode,
        "dob": dob,
        "mobile": mobile,
        "landline": landline,
        "alternate_number": alternateNumber,
        "pay_term_number": payTermNumber,
        "pay_term_type": payTermType,
        "credit_limit": creditLimit,
        "created_by": createdBy,
        "converted_by": convertedBy,
        "converted_on": convertedOn,
        "balance": balance,
        "total_rp": totalRp,
        "total_rp_used": totalRpUsed,
        "total_rp_expired": totalRpExpired,
        "is_default": isDefault,
        "shipping_address": shippingAddress,
        "shipping_custom_field_details": shippingCustomFieldDetails,
        "is_export": isExport,
        "export_custom_field_1": exportCustomField1,
        "export_custom_field_2": exportCustomField2,
        "export_custom_field_3": exportCustomField3,
        "export_custom_field_4": exportCustomField4,
        "export_custom_field_5": exportCustomField5,
        "export_custom_field_6": exportCustomField6,
        "position": position,
        "customer_group_id": customerGroupId,
        "crm_source": crmSource,
        "crm_life_stage": crmLifeStage,
        "custom_field1": customField1,
        "custom_field2": customField2,
        "custom_field3": customField3,
        "custom_field4": customField4,
        "custom_field5": customField5,
        "custom_field6": customField6,
        "custom_field7": customField7,
        "custom_field8": customField8,
        "custom_field9": customField9,
        "custom_field10": customField10,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "parent_id": parentId,
      };
}

class SellLine {
  SellLine({
    this.id,
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
  });

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

  SellLine copyWith({
    int? id,
    int? transactionId,
    int? productId,
    int? variationId,
    int? quantity,
    String? mfgWastePercent,
    dynamic mfgIngredientGroupId,
    String? quantityReturned,
    String? unitPriceBeforeDiscount,
    String? unitPrice,
    String? lineDiscountType,
    String? lineDiscountAmount,
    String? unitPriceIncTax,
    String? itemTax,
    dynamic taxId,
    dynamic discountId,
    dynamic lotNoLineId,
    String? sellLineNote,
    dynamic woocommerceLineItemsId,
    dynamic soLineId,
    String? soQuantityInvoiced,
    dynamic resServiceStaffId,
    dynamic resLineOrderStatus,
    dynamic parentSellLineId,
    String? childrenType,
    dynamic subUnitId,
    String? createdAt,
    String? updatedAt,
  }) =>
      SellLine(
        id: id ?? this.id,
        transactionId: transactionId ?? this.transactionId,
        productId: productId ?? this.productId,
        variationId: variationId ?? this.variationId,
        quantity: quantity ?? this.quantity,
        mfgWastePercent: mfgWastePercent ?? this.mfgWastePercent,
        mfgIngredientGroupId: mfgIngredientGroupId ?? this.mfgIngredientGroupId,
        quantityReturned: quantityReturned ?? this.quantityReturned,
        unitPriceBeforeDiscount:
            unitPriceBeforeDiscount ?? this.unitPriceBeforeDiscount,
        unitPrice: unitPrice ?? this.unitPrice,
        lineDiscountType: lineDiscountType ?? this.lineDiscountType,
        lineDiscountAmount: lineDiscountAmount ?? this.lineDiscountAmount,
        unitPriceIncTax: unitPriceIncTax ?? this.unitPriceIncTax,
        itemTax: itemTax ?? this.itemTax,
        taxId: taxId ?? this.taxId,
        discountId: discountId ?? this.discountId,
        lotNoLineId: lotNoLineId ?? this.lotNoLineId,
        sellLineNote: sellLineNote ?? this.sellLineNote,
        woocommerceLineItemsId:
            woocommerceLineItemsId ?? this.woocommerceLineItemsId,
        soLineId: soLineId ?? this.soLineId,
        soQuantityInvoiced: soQuantityInvoiced ?? this.soQuantityInvoiced,
        resServiceStaffId: resServiceStaffId ?? this.resServiceStaffId,
        resLineOrderStatus: resLineOrderStatus ?? this.resLineOrderStatus,
        parentSellLineId: parentSellLineId ?? this.parentSellLineId,
        childrenType: childrenType ?? this.childrenType,
        subUnitId: subUnitId ?? this.subUnitId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory SellLine.fromRawJson(String str) =>
      SellLine.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory SellLine.fromJson(Map<String?, dynamic> json) => SellLine(
        id: json["id"],
        transactionId: json["transaction_id"],
        productId: json["product_id"],
        variationId: json["variation_id"],
        quantity: json["quantity"],
        mfgWastePercent: json["mfg_waste_percent"],
        mfgIngredientGroupId: json["mfg_ingredient_group_id"],
        quantityReturned: json["quantity_returned"],
        unitPriceBeforeDiscount: json["unit_price_before_discount"],
        unitPrice: json["unit_price"],
        lineDiscountType: json["line_discount_type"],
        lineDiscountAmount: json["line_discount_amount"],
        unitPriceIncTax: json["unit_price_inc_tax"],
        itemTax: json["item_tax"],
        taxId: json["tax_id"],
        discountId: json["discount_id"],
        lotNoLineId: json["lot_no_line_id"],
        sellLineNote: json["sell_line_note"],
        woocommerceLineItemsId: json["woocommerce_line_items_id"],
        soLineId: json["so_line_id"],
        soQuantityInvoiced: json["so_quantity_invoiced"],
        resServiceStaffId: json["res_service_staff_id"],
        resLineOrderStatus: json["res_line_order_status"],
        parentSellLineId: json["parent_sell_line_id"],
        childrenType: json["children_type"],
        subUnitId: json["sub_unit_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "transaction_id": transactionId,
        "product_id": productId,
        "variation_id": variationId,
        "quantity": quantity,
        "mfg_waste_percent": mfgWastePercent,
        "mfg_ingredient_group_id": mfgIngredientGroupId,
        "quantity_returned": quantityReturned,
        "unit_price_before_discount": unitPriceBeforeDiscount,
        "unit_price": unitPrice,
        "line_discount_type": lineDiscountType,
        "line_discount_amount": lineDiscountAmount,
        "unit_price_inc_tax": unitPriceIncTax,
        "item_tax": itemTax,
        "tax_id": taxId,
        "discount_id": discountId,
        "lot_no_line_id": lotNoLineId,
        "sell_line_note": sellLineNote,
        "woocommerce_line_items_id": woocommerceLineItemsId,
        "so_line_id": soLineId,
        "so_quantity_invoiced": soQuantityInvoiced,
        "res_service_staff_id": resServiceStaffId,
        "res_line_order_status": resLineOrderStatus,
        "parent_sell_line_id": parentSellLineId,
        "children_type": childrenType,
        "sub_unit_id": subUnitId,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
