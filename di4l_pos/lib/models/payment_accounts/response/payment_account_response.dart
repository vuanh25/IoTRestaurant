// To parse this JSON data, do
//
//     final paymentAccountResponse = paymentAccountResponseFromJson(jsonString);

import 'dart:convert';

class PaymentAccountResponse {
  Acount? acount;
  List<PaymentDetail>? paymentDetail;

  PaymentAccountResponse({
    this.acount,
    this.paymentDetail,
  });

  PaymentAccountResponse copyWith({
    Acount? acount,
    List<PaymentDetail>? paymentDetail,
  }) =>
      PaymentAccountResponse(
        acount: acount ?? this.acount,
        paymentDetail: paymentDetail ?? this.paymentDetail,
      );

  factory PaymentAccountResponse.fromRawJson(String str) =>
      PaymentAccountResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentAccountResponse.fromJson(Map<String, dynamic> json) =>
      PaymentAccountResponse(
        acount: json["acount"] == null ? null : Acount.fromJson(json["acount"]),
        paymentDetail: json["payment_detail"] == null
            ? []
            : List<PaymentDetail>.from(
                json["payment_detail"]!.map((x) => PaymentDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "acount": acount?.toJson(),
        "payment_detail": paymentDetail == null
            ? []
            : List<dynamic>.from(paymentDetail!.map((x) => x.toJson())),
      };
}

class Acount {
  int? id;
  int? businessId;
  String? name;
  String? accountNumber;
  List<AccountDetail>? accountDetails;
  int? accountTypeId;
  dynamic note;
  int? createdBy;
  int? isClosed;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  AccountType? accountType;

  Acount({
    this.id,
    this.businessId,
    this.name,
    this.accountNumber,
    this.accountDetails,
    this.accountTypeId,
    this.note,
    this.createdBy,
    this.isClosed,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.accountType,
  });

  Acount copyWith({
    int? id,
    int? businessId,
    String? name,
    String? accountNumber,
    List<AccountDetail>? accountDetails,
    int? accountTypeId,
    dynamic note,
    int? createdBy,
    int? isClosed,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    AccountType? accountType,
  }) =>
      Acount(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        name: name ?? this.name,
        accountNumber: accountNumber ?? this.accountNumber,
        accountDetails: accountDetails ?? this.accountDetails,
        accountTypeId: accountTypeId ?? this.accountTypeId,
        note: note ?? this.note,
        createdBy: createdBy ?? this.createdBy,
        isClosed: isClosed ?? this.isClosed,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        accountType: accountType ?? this.accountType,
      );

  factory Acount.fromRawJson(String str) => Acount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Acount.fromJson(Map<String, dynamic> json) => Acount(
        id: json["id"],
        businessId: json["business_id"],
        name: json["name"],
        accountNumber: json["account_number"],
        accountDetails: json["account_details"] == null
            ? []
            : List<AccountDetail>.from(
                json["account_details"]!.map((x) => AccountDetail.fromJson(x))),
        accountTypeId: json["account_type_id"],
        note: json["note"],
        createdBy: json["created_by"],
        isClosed: json["is_closed"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        accountType: json["account_type"] == null
            ? null
            : AccountType.fromJson(json["account_type"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "name": name,
        "account_number": accountNumber,
        "account_details": accountDetails == null
            ? []
            : List<dynamic>.from(accountDetails!.map((x) => x.toJson())),
        "account_type_id": accountTypeId,
        "note": note,
        "created_by": createdBy,
        "is_closed": isClosed,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "account_type": accountType,
      };
}

class AccountDetail {
  dynamic label;
  dynamic value;

  AccountDetail({
    this.label,
    this.value,
  });

  AccountDetail copyWith({
    dynamic label,
    dynamic value,
  }) =>
      AccountDetail(
        label: label ?? this.label,
        value: value ?? this.value,
      );

  factory AccountDetail.fromRawJson(String str) =>
      AccountDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountDetail.fromJson(Map<String, dynamic> json) => AccountDetail(
        label: json["label"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "value": value,
      };
}

class AccountType {
  int? id;
  String? name;
  dynamic parentAccountTypeId;
  int? businessId;
  String? createdAt;
  String? updatedAt;
  dynamic parentAccount;

  AccountType({
    this.id,
    this.name,
    this.parentAccountTypeId,
    this.businessId,
    this.createdAt,
    this.updatedAt,
    this.parentAccount,
  });

  AccountType copyWith({
    int? id,
    String? name,
    dynamic parentAccountTypeId,
    int? businessId,
    String? createdAt,
    String? updatedAt,
    dynamic parentAccount,
  }) =>
      AccountType(
        id: id ?? this.id,
        name: name ?? this.name,
        parentAccountTypeId: parentAccountTypeId ?? this.parentAccountTypeId,
        businessId: businessId ?? this.businessId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        parentAccount: parentAccount ?? this.parentAccount,
      );

  factory AccountType.fromRawJson(String str) =>
      AccountType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountType.fromJson(Map<String, dynamic> json) => AccountType(
        id: json["id"],
        name: json["name"],
        parentAccountTypeId: json["parent_account_type_id"],
        businessId: json["business_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        parentAccount: json["parent_account"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "parent_account_type_id": parentAccountTypeId,
        "business_id": businessId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "parent_account": parentAccount,
      };
}

class PaymentDetail {
  String? type;
  String? amount;
  String? operationDate;
  dynamic subType;
  dynamic transferTransactionId;
  int? accountId;
  int? transactionId;
  int? id;
  dynamic note;
  int? isAdvance;
  String? paymentRefNo;
  String? method;
  dynamic transactionNo;
  dynamic cardTransactionNumber;
  dynamic cardNumber;
  String? cardType;
  dynamic cardHolderName;
  dynamic cardMonth;
  dynamic cardYear;
  dynamic cardSecurity;
  dynamic chequeNumber;
  dynamic bankAccountNumber;
  String? addedBy;
  String? paymentForContact;
  String? paymentForType;
  dynamic paymentForBusinessName;
  dynamic totalRecovered;
  dynamic childSells;
  Transaction? transaction;
  TransferTransaction? transferTransaction;
  List<dynamic>? media;

  PaymentDetail({
    this.type,
    this.amount,
    this.operationDate,
    this.subType,
    this.transferTransactionId,
    this.accountId,
    this.transactionId,
    this.id,
    this.note,
    this.isAdvance,
    this.paymentRefNo,
    this.method,
    this.transactionNo,
    this.cardTransactionNumber,
    this.cardNumber,
    this.cardType,
    this.cardHolderName,
    this.cardMonth,
    this.cardYear,
    this.cardSecurity,
    this.chequeNumber,
    this.bankAccountNumber,
    this.addedBy,
    this.paymentForContact,
    this.paymentForType,
    this.paymentForBusinessName,
    this.totalRecovered,
    this.childSells,
    this.transaction,
    this.transferTransaction,
    this.media,
  });

  PaymentDetail copyWith({
    String? type,
    String? amount,
    String? operationDate,
    dynamic subType,
    dynamic transferTransactionId,
    int? accountId,
    int? transactionId,
    int? id,
    dynamic note,
    int? isAdvance,
    String? paymentRefNo,
    String? method,
    dynamic transactionNo,
    dynamic cardTransactionNumber,
    dynamic cardNumber,
    String? cardType,
    dynamic cardHolderName,
    dynamic cardMonth,
    dynamic cardYear,
    dynamic cardSecurity,
    dynamic chequeNumber,
    dynamic bankAccountNumber,
    String? addedBy,
    String? paymentForContact,
    String? paymentForType,
    dynamic paymentForBusinessName,
    dynamic totalRecovered,
    dynamic childSells,
    Transaction? transaction,
    TransferTransaction? transferTransaction,
    List<dynamic>? media,
  }) =>
      PaymentDetail(
        type: type ?? this.type,
        amount: amount ?? this.amount,
        operationDate: operationDate ?? this.operationDate,
        subType: subType ?? this.subType,
        transferTransactionId:
            transferTransactionId ?? this.transferTransactionId,
        accountId: accountId ?? this.accountId,
        transactionId: transactionId ?? this.transactionId,
        id: id ?? this.id,
        note: note ?? this.note,
        isAdvance: isAdvance ?? this.isAdvance,
        paymentRefNo: paymentRefNo ?? this.paymentRefNo,
        method: method ?? this.method,
        transactionNo: transactionNo ?? this.transactionNo,
        cardTransactionNumber:
            cardTransactionNumber ?? this.cardTransactionNumber,
        cardNumber: cardNumber ?? this.cardNumber,
        cardType: cardType ?? this.cardType,
        cardHolderName: cardHolderName ?? this.cardHolderName,
        cardMonth: cardMonth ?? this.cardMonth,
        cardYear: cardYear ?? this.cardYear,
        cardSecurity: cardSecurity ?? this.cardSecurity,
        chequeNumber: chequeNumber ?? this.chequeNumber,
        bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
        addedBy: addedBy ?? this.addedBy,
        paymentForContact: paymentForContact ?? this.paymentForContact,
        paymentForType: paymentForType ?? this.paymentForType,
        paymentForBusinessName:
            paymentForBusinessName ?? this.paymentForBusinessName,
        totalRecovered: totalRecovered ?? this.totalRecovered,
        childSells: childSells ?? this.childSells,
        transaction: transaction ?? this.transaction,
        transferTransaction: transferTransaction ?? this.transferTransaction,
        media: media ?? this.media,
      );

  factory PaymentDetail.fromRawJson(String str) =>
      PaymentDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentDetail.fromJson(Map<String, dynamic> json) => PaymentDetail(
        type: json["type"],
        amount: json["amount"],
        operationDate: json["operation_date"],
        subType: json["sub_type"],
        transferTransactionId: json["transfer_transaction_id"],
        accountId: json["account_id"],
        transactionId: json["transaction_id"],
        id: json["id"],
        note: json["note"],
        isAdvance: json["is_advance"],
        paymentRefNo: json["payment_ref_no"],
        method: json["method"],
        transactionNo: json["transaction_no"],
        cardTransactionNumber: json["card_transaction_number"],
        cardNumber: json["card_number"],
        cardType: json["card_type"],
        cardHolderName: json["card_holder_name"],
        cardMonth: json["card_month"],
        cardYear: json["card_year"],
        cardSecurity: json["card_security"],
        chequeNumber: json["cheque_number"],
        bankAccountNumber: json["bank_account_number"],
        addedBy: json["added_by"],
        paymentForContact: json["payment_for_contact"],
        paymentForType: json["payment_for_type"],
        paymentForBusinessName: json["payment_for_business_name"],
        totalRecovered: json["total_recovered"],
        childSells: json["child_sells"],
        transaction: json["transaction"] == null
            ? null
            : Transaction.fromJson(json["transaction"]),
        transferTransaction: json["transfer_transaction"] == null
            ? null
            : TransferTransaction.fromJson(json["transfer_transaction"]),
        media: json["media"] == null
            ? []
            : List<dynamic>.from(json["media"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "amount": amount,
        "operation_date": operationDate,
        "sub_type": subType,
        "transfer_transaction_id": transferTransactionId,
        "account_id": accountId,
        "transaction_id": transactionId,
        "id": id,
        "note": note,
        "is_advance": isAdvance,
        "payment_ref_no": paymentRefNo,
        "method": method,
        "transaction_no": transactionNo,
        "card_transaction_number": cardTransactionNumber,
        "card_number": cardNumber,
        "card_type": cardType,
        "card_holder_name": cardHolderName,
        "card_month": cardMonth,
        "card_year": cardYear,
        "card_security": cardSecurity,
        "cheque_number": chequeNumber,
        "bank_account_number": bankAccountNumber,
        "added_by": addedBy,
        "payment_for_contact": paymentForContact,
        "payment_for_type": paymentForType,
        "payment_for_business_name": paymentForBusinessName,
        "total_recovered": totalRecovered,
        "child_sells": childSells,
        "transaction": transaction?.toJson(),
        "transfer_transaction": transferTransaction?.toJson(),
        "media": media == null ? [] : List<dynamic>.from(media!.map((x) => x)),
      };
}

class TransferTransaction {
  int? id;
  int? accountId;
  String? type;
  String? subType;
  String? amount;
  dynamic reffNo;
  String? operationDate;
  int? createdBy;
  dynamic transactionId;
  dynamic transactionPaymentId;
  int? transferTransactionId;
  dynamic note;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  List<dynamic>? media;

  TransferTransaction({
    this.id,
    this.accountId,
    this.type,
    this.subType,
    this.amount,
    this.reffNo,
    this.operationDate,
    this.createdBy,
    this.transactionId,
    this.transactionPaymentId,
    this.transferTransactionId,
    this.note,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.media,
  });

  TransferTransaction copyWith({
    int? id,
    int? accountId,
    String? type,
    String? subType,
    String? amount,
    dynamic reffNo,
    String? operationDate,
    int? createdBy,
    dynamic transactionId,
    dynamic transactionPaymentId,
    int? transferTransactionId,
    dynamic note,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    List<dynamic>? media,
  }) =>
      TransferTransaction(
        id: id ?? this.id,
        accountId: accountId ?? this.accountId,
        type: type ?? this.type,
        subType: subType ?? this.subType,
        amount: amount ?? this.amount,
        reffNo: reffNo ?? this.reffNo,
        operationDate: operationDate ?? this.operationDate,
        createdBy: createdBy ?? this.createdBy,
        transactionId: transactionId ?? this.transactionId,
        transactionPaymentId: transactionPaymentId ?? this.transactionPaymentId,
        transferTransactionId:
            transferTransactionId ?? this.transferTransactionId,
        note: note ?? this.note,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        media: media ?? this.media,
      );

  factory TransferTransaction.fromRawJson(String str) =>
      TransferTransaction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransferTransaction.fromJson(Map<String, dynamic> json) =>
      TransferTransaction(
        id: json["id"],
        accountId: json["account_id"],
        type: json["type"],
        subType: json["sub_type"],
        amount: json["amount"],
        reffNo: json["reff_no"],
        operationDate: json["operation_date"],
        createdBy: json["created_by"],
        transactionId: json["transaction_id"],
        transactionPaymentId: json["transaction_payment_id"],
        transferTransactionId: json["transfer_transaction_id"],
        note: json["note"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        media: json["media"] == null
            ? []
            : List<dynamic>.from(json["media"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "account_id": accountId,
        "type": type,
        "sub_type": subType,
        "amount": amount,
        "reff_no": reffNo,
        "operation_date": operationDate,
        "created_by": createdBy,
        "transaction_id": transactionId,
        "transaction_payment_id": transactionPaymentId,
        "transfer_transaction_id": transferTransactionId,
        "note": note,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "media": media == null ? [] : List<dynamic>.from(media!.map((x) => x)),
      };
}

class Transaction {
  int? id;
  int? businessId;
  int? locationId;
  dynamic resTableId;
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
  String? shippingDetails;
  String? shippingAddress;
  String? shippingStatus;
  String? shippingMethod;
  dynamic deliveredTo;
  dynamic deliveryPartner;
  dynamic deliveryCode;
  dynamic deliveryCodAmount;
  dynamic deliveryStatus;
  DeliveryData? deliveryData;
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
  int? payTermNumber;
  String? payTermType;
  dynamic pjtProjectId;
  dynamic pjtTitle;
  int? sellingPriceGroupId;
  String? createdAt;
  String? updatedAt;
  dynamic statusStatic;
  Contact? contact;
  dynamic transactionFor;

  Transaction({
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
    this.statusStatic,
    this.contact,
    this.transactionFor,
  });

  Transaction copyWith({
    int? id,
    int? businessId,
    int? locationId,
    dynamic resTableId,
    dynamic resWaiterId,
    dynamic resOrderStatus,
    String? type,
    dynamic subType,
    String? status,
    dynamic subStatus,
    int? isQuotation,
    String? paymentStatus,
    dynamic adjustmentType,
    int? contactId,
    int? customerGroupId,
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
    String? shippingDetails,
    String? shippingAddress,
    String? shippingStatus,
    String? shippingMethod,
    dynamic deliveredTo,
    dynamic deliveryPartner,
    dynamic deliveryCode,
    dynamic deliveryCodAmount,
    dynamic deliveryStatus,
    DeliveryData? deliveryData,
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
    int? payTermNumber,
    String? payTermType,
    dynamic pjtProjectId,
    dynamic pjtTitle,
    int? sellingPriceGroupId,
    String? createdAt,
    String? updatedAt,
    dynamic statusStatic,
    Contact? contact,
    dynamic transactionFor,
  }) =>
      Transaction(
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
        shippingMethod: shippingMethod ?? this.shippingMethod,
        deliveredTo: deliveredTo ?? this.deliveredTo,
        deliveryPartner: deliveryPartner ?? this.deliveryPartner,
        deliveryCode: deliveryCode ?? this.deliveryCode,
        deliveryCodAmount: deliveryCodAmount ?? this.deliveryCodAmount,
        deliveryStatus: deliveryStatus ?? this.deliveryStatus,
        deliveryData: deliveryData ?? this.deliveryData,
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
        statusStatic: statusStatic ?? this.statusStatic,
        contact: contact ?? this.contact,
        transactionFor: transactionFor ?? this.transactionFor,
      );

  factory Transaction.fromRawJson(String str) =>
      Transaction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
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
        shippingStatus: json["shipping_status"],
        shippingMethod: json["shipping_method"],
        deliveredTo: json["delivered_to"],
        deliveryPartner: json["delivery_partner"],
        deliveryCode: json["delivery_code"],
        deliveryCodAmount: json["delivery_cod_amount"],
        deliveryStatus: json["delivery_status"],
        deliveryData: json["delivery_data"] == null
            ? null
            : DeliveryData.fromJson(json["delivery_data"]),
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
        statusStatic: json["status_static"],
        contact:
            json["contact"] == null ? null : Contact.fromJson(json["contact"]),
        transactionFor: json["transaction_for"],
      );

  Map<String, dynamic> toJson() => {
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
        "shipping_method": shippingMethod,
        "delivered_to": deliveredTo,
        "delivery_partner": deliveryPartner,
        "delivery_code": deliveryCode,
        "delivery_cod_amount": deliveryCodAmount,
        "delivery_status": deliveryStatus,
        "delivery_data": deliveryData?.toJson(),
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
        "status_static": statusStatic,
        "contact": contact?.toJson(),
        "transaction_for": transactionFor,
      };
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
  String? email;
  String? contactId;
  String? contactStatus;
  String? taxNumber;
  String? city;
  String? state;
  String? country;
  dynamic addressLine1;
  dynamic addressLine2;
  dynamic zipCode;
  DateTime? dob;
  String? mobile;
  String? landline;
  String? alternateNumber;
  int? payTermNumber;
  String? payTermType;
  dynamic creditLimit;
  int? createdBy;
  dynamic convertedBy;
  dynamic convertedOn;
  String? balance;
  int? totalRp;
  int? totalRpUsed;
  int? totalRpExpired;
  int? isDefault;
  String? shippingAddress;
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
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;
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
    this.provinceId,
    this.districtId,
    this.wardId,
  });

  Contact copyWith({
    int? id,
    int? businessId,
    String? type,
    dynamic supplierBusinessName,
    String? name,
    String? prefix,
    String? firstName,
    String? middleName,
    String? lastName,
    String? email,
    String? contactId,
    String? contactStatus,
    String? taxNumber,
    String? city,
    String? state,
    String? country,
    dynamic addressLine1,
    dynamic addressLine2,
    dynamic zipCode,
    DateTime? dob,
    String? mobile,
    String? landline,
    String? alternateNumber,
    int? payTermNumber,
    String? payTermType,
    dynamic creditLimit,
    int? createdBy,
    dynamic convertedBy,
    dynamic convertedOn,
    String? balance,
    int? totalRp,
    int? totalRpUsed,
    int? totalRpExpired,
    int? isDefault,
    String? shippingAddress,
    dynamic shippingCustomFieldDetails,
    int? isExport,
    dynamic exportCustomField1,
    dynamic exportCustomField2,
    dynamic exportCustomField3,
    dynamic exportCustomField4,
    dynamic exportCustomField5,
    dynamic exportCustomField6,
    dynamic position,
    int? customerGroupId,
    dynamic crmSource,
    dynamic crmLifeStage,
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
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
    dynamic provinceId,
    dynamic districtId,
    dynamic wardId,
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
        provinceId: provinceId ?? this.provinceId,
        districtId: districtId ?? this.districtId,
        wardId: wardId ?? this.wardId,
      );

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
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
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
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
        provinceId: json["province_id"],
        districtId: json["district_id"],
        wardId: json["ward_id"],
      );

  Map<String, dynamic> toJson() => {
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
        "dob":
            "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
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
        "province_id": provinceId,
        "district_id": districtId,
        "ward_id": wardId,
      };
}

class DeliveryData {
  int? transactionId;
  String? contactId;
  String? customerName;
  String? shippingAddress;
  String? customerPhone;
  dynamic note;

  DeliveryData({
    this.transactionId,
    this.contactId,
    this.customerName,
    this.shippingAddress,
    this.customerPhone,
    this.note,
  });

  DeliveryData copyWith({
    int? transactionId,
    String? contactId,
    String? customerName,
    String? shippingAddress,
    String? customerPhone,
    dynamic note,
  }) =>
      DeliveryData(
        transactionId: transactionId ?? this.transactionId,
        contactId: contactId ?? this.contactId,
        customerName: customerName ?? this.customerName,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        customerPhone: customerPhone ?? this.customerPhone,
        note: note ?? this.note,
      );

  factory DeliveryData.fromRawJson(String str) =>
      DeliveryData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeliveryData.fromJson(Map<String, dynamic> json) => DeliveryData(
        transactionId: json["transaction_id"],
        contactId: json["contact_id"],
        customerName: json["customer_name"],
        shippingAddress: json["shipping_address"],
        customerPhone: json["customer_phone"],
        note: json["note"],
      );

  Map<String, dynamic> toJson() => {
        "transaction_id": transactionId,
        "contact_id": contactId,
        "customer_name": customerName,
        "shipping_address": shippingAddress,
        "customer_phone": customerPhone,
        "note": note,
      };
}
