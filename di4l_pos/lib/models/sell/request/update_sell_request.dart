

import 'dart:convert';

class UpdateSellRequest{
  List<SellRequest>? sells;
  UpdateSellRequest({
    this.sells,
  }
  );
   UpdateSellRequest.fromJson(Map<String, dynamic> json) {
    if (json['sells'] != null) {
      sells = <SellRequest>[];
      json['sells'].forEach((v) {
        sells!.add(SellRequest.fromJson(v));
      });
    }
  }
   String toRawJson() => json.encode(sells);
   Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["sells"] =
        sells == null ? null : sells!.map((v) => v.toJson()).toList();
    return data;
  }

}

class SellRequest {
  String? locationId;
  int? contactId;
  String? transactionDate;
  String? invoiceNo;
  String? status;
  bool? isQuotation;
  int? taxRateId;
  double? discountAmount;
  String? discountType;
  String? saleNote;
  String? staffNote;
  int? commissionAgent;
  String? shippingDetails;
  String? shippingAddress;
  String? shippingStatus;
  String? deliveredTo;
  double? shippingCharges;
  double? packingCharge;
  double? exchangeRate;
  int? sellingPriceGroupId;
  int? payTermNumber;
  String? payTermType;
  int? isRecurring;
  int? recurInterval;
  String? recurIntervalType;
  int? subscriptionRepeatOn;
  String? subscriptionNo;
  int? recurRepetitions;
  int? rpRedeemed;
  double? rpRedeemedAmount;
  int? typesOfServiceId;
  String? serviceCustomField1;
  String? serviceCustomField2;
  String? serviceCustomField3;
  String? serviceCustomField4;
  double? roundOffAmount;
  int? tableId;
  int? serviceStaffId;
  int? changeReturn;
  List<SellProductRequest>? products;
  List<SellPaymentRequest>? payments;
  SellRequest({
    this.locationId,
    this.contactId,
    this.transactionDate,
    this.invoiceNo,
    this.status,
    this.isQuotation,
    this.taxRateId,
    this.discountAmount,
    this.discountType,
    this.saleNote,
    this.staffNote,
    this.commissionAgent,
    this.shippingDetails,
    this.shippingAddress,
    this.shippingStatus,
    this.deliveredTo,
    this.shippingCharges,
    this.packingCharge,
    this.exchangeRate,
    this.sellingPriceGroupId,
    this.payTermNumber,
    this.payTermType,
    this.isRecurring,
    this.recurInterval,
    this.recurIntervalType,
    this.subscriptionRepeatOn,
    this.subscriptionNo,
    this.recurRepetitions,
    this.rpRedeemed,
    this.rpRedeemedAmount,
    this.typesOfServiceId,
    this.serviceCustomField1,
    this.serviceCustomField2,
    this.serviceCustomField3,
    this.serviceCustomField4,
    this.roundOffAmount,
    this.tableId,
    this.serviceStaffId,
    this.changeReturn,
    this.products,
    this.payments,
  });

  SellRequest copyWith({
    String? locationId,
    int? contactId,
    String? transactionDate,
    String? invoiceNo,
    String? status,
    bool? isQuotation,
    int? taxRateId,
    double? discountAmount,
    String? discountType,
    String? saleNote,
    String? staffNote,
    int? commissionAgent,
    String? shippingDetails,
    String? shippingAddress,
    String? shippingStatus,
    String? deliveredTo,
    double? shippingCharges,
    double? packingCharge,
    double? exchangeRate,
    int? sellingPriceGroupId,
    int? payTermNumber,
    String? payTermType,
    int? isRecurring,
    int? recurInterval,
    String? recurIntervalType,
    int? subscriptionRepeatOn,
    String? subscriptionNo,
    int? recurRepetitions,
    int? rpRedeemed,
    double? rpRedeemedAmount,
    int? typesOfServiceId,
    String? serviceCustomField1,
    String? serviceCustomField2,
    String? serviceCustomField3,
    String? serviceCustomField4,
    double? roundOffAmount,
    int? tableId,
    int? serviceStaffId,
    int? changeReturn,
    List<SellProductRequest>? products,
    List<SellPaymentRequest>? payments,
  }) =>
      SellRequest(
        locationId: locationId ?? this.locationId,
        contactId: contactId ?? this.contactId,
        transactionDate: transactionDate ?? this.transactionDate,
        invoiceNo: invoiceNo ?? this.invoiceNo,
        status: status ?? this.status,
        isQuotation: isQuotation ?? this.isQuotation,
        taxRateId: taxRateId ?? this.taxRateId,
        discountAmount: discountAmount ?? this.discountAmount,
        discountType: discountType ?? this.discountType,
        saleNote: saleNote ?? this.saleNote,
        staffNote: staffNote ?? this.staffNote,
        commissionAgent: commissionAgent ?? this.commissionAgent,
        shippingDetails: shippingDetails ?? this.shippingDetails,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        shippingStatus: shippingStatus ?? this.shippingStatus,
        deliveredTo: deliveredTo ?? this.deliveredTo,
        shippingCharges: shippingCharges ?? this.shippingCharges,
        packingCharge: packingCharge ?? this.packingCharge,
        exchangeRate: exchangeRate ?? this.exchangeRate,
        sellingPriceGroupId: sellingPriceGroupId ?? this.sellingPriceGroupId,
        payTermNumber: payTermNumber ?? this.payTermNumber,
        payTermType: payTermType ?? this.payTermType,
        isRecurring: isRecurring ?? this.isRecurring,
        recurInterval: recurInterval ?? this.recurInterval,
        recurIntervalType: recurIntervalType ?? this.recurIntervalType,
        subscriptionRepeatOn: subscriptionRepeatOn ?? this.subscriptionRepeatOn,
        subscriptionNo: subscriptionNo ?? this.subscriptionNo,
        recurRepetitions: recurRepetitions ?? this.recurRepetitions,
        rpRedeemed: rpRedeemed ?? this.rpRedeemed,
        rpRedeemedAmount: rpRedeemedAmount ?? this.rpRedeemedAmount,
        typesOfServiceId: typesOfServiceId ?? this.typesOfServiceId,
        serviceCustomField1: serviceCustomField1 ?? this.serviceCustomField1,
        serviceCustomField2: serviceCustomField2 ?? this.serviceCustomField2,
        serviceCustomField3: serviceCustomField3 ?? this.serviceCustomField3,
        serviceCustomField4: serviceCustomField4 ?? this.serviceCustomField4,
        roundOffAmount: roundOffAmount ?? this.roundOffAmount,
        tableId: tableId ?? this.tableId,
        serviceStaffId: serviceStaffId ?? this.serviceStaffId,
        changeReturn: changeReturn ?? this.changeReturn,
        products: products ?? this.products,
        payments: payments ?? this.payments,
      );

  factory SellRequest.fromRawJson(String str) =>
      SellRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SellRequest.fromJson(Map<String, dynamic> json) => SellRequest(
        locationId: json["location_id"],
        contactId: json["contact_id"],
        transactionDate: json["transaction_date"],
        invoiceNo: json["invoice_no"],
        status: json["status"],
        isQuotation: json["is_quotation"],
        taxRateId: json["tax_rate_id"],
        discountAmount: json["discount_amount"],
        discountType: json["discount_type"],
        saleNote: json["sale_note"],
        staffNote: json["staff_note"],
        commissionAgent: json["commission_agent"],
        shippingDetails: json["shipping_details"],
        shippingAddress: json["shipping_address"],
        shippingStatus: json["shipping_status"],
        deliveredTo: json["delivered_to"],
        shippingCharges: json["shipping_charges"],
        packingCharge: json["packing_charge"],
        exchangeRate: json["exchange_rate"],
        sellingPriceGroupId: json["selling_price_group_id"],
        payTermNumber: json["pay_term_number"],
        payTermType: json["pay_term_type"],
        isRecurring: json["is_recurring"],
        recurInterval: json["recur_interval"],
        recurIntervalType: json["recur_interval_type"],
        subscriptionRepeatOn: json["subscription_repeat_on"],
        subscriptionNo: json["subscription_no"],
        recurRepetitions: json["recur_repetitions"],
        rpRedeemed: json["rp_redeemed"],
        rpRedeemedAmount: json["rp_redeemed_amount"],
        typesOfServiceId: json["types_of_service_id"],
        serviceCustomField1: json["service_custom_field_1"],
        serviceCustomField2: json["service_custom_field_2"],
        serviceCustomField3: json["service_custom_field_3"],
        serviceCustomField4: json["service_custom_field_4"],
        roundOffAmount: json["round_off_amount"],
        tableId: json["table_id"],
        serviceStaffId: json["service_staff_id"],
        changeReturn: json["change_return"],
        products: json["products"] == null
            ? null
            : List<SellProductRequest>.from(
                json["products"].map((x) => SellProductRequest.fromJson(x))),
        payments: json["payments"] == null
            ? null
            : List<SellPaymentRequest>.from(
                json["payments"].map((x) => SellPaymentRequest.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "location_id": locationId,
        'contact_id': contactId,
        'transaction_date': transactionDate,
        'invoice_no': invoiceNo,
        'status': status,
        'is_quotation': isQuotation,
        'tax_rate_id': taxRateId,
        'discount_amount': discountAmount,
        'discount_type': discountType,
        'sale_note': saleNote,
        'staff_note': staffNote,
        'commission_agent': commissionAgent,
        'shipping_details': shippingDetails,
        'shipping_address': shippingAddress,
        'shipping_status': shippingStatus,
        'delivered_to': deliveredTo,
        'shipping_charges': shippingCharges,
        'packing_charge': packingCharge,
        'exchange_rate': exchangeRate,
        'selling_price_group_id': sellingPriceGroupId,
        'pay_term_number': payTermNumber,
        'pay_term_type': payTermType,
        'is_recurring': isRecurring,
        'recur_interval': recurInterval,
        'recur_interval_type': recurIntervalType,
        'subscription_repeat_on': subscriptionRepeatOn,
        'subscription_no': subscriptionNo,
        'recur_repetitions': recurRepetitions,
        'rp_redeemed': rpRedeemed,
        'rp_redeemed_amount': rpRedeemedAmount,
        'types_of_service_id': typesOfServiceId,
        'service_custom_field_1': serviceCustomField1,
        'service_custom_field_2': serviceCustomField2,
        'service_custom_field_3': serviceCustomField3,
        'service_custom_field_4': serviceCustomField4,
        'round_off_amount': serviceCustomField4 == null ? null : roundOffAmount,
        'table_id': tableId,
        'service_staff_id': serviceStaffId,
        'change_return': changeReturn,
        "products":
            products == null ? null : products!.map((v) => v.toJson()).toList(),
        "payments": payments == null
            ? null
            : List<dynamic>.from(payments!.map((x) => x.toJson())),
      };
}

  


class SellProductRequest {
  int? productId;
  int? variantionId;
  int? quantity;
  double? unitPrice;
  dynamic taxRateId;
  double? discountAmount;
  String? discountType;
  dynamic subUnitId;
  String? note;
  SellProductRequest({
    this.productId,
    this.variantionId,
    this.quantity,
    this.unitPrice,
    this.taxRateId,
    this.discountAmount,
    this.discountType,
    this.subUnitId,
    this.note,
  });

  SellProductRequest copyWith({
    int? productId,
    int? variantionId,
    int? quantity,
    double? unitPrice,
    dynamic taxRateId,
    double? discountAmount,
    String? discountType,
    dynamic subUnitId,
    String? note,
  }) =>
      SellProductRequest(
        productId: productId ?? this.productId,
        variantionId: variantionId ?? this.variantionId,
        quantity: quantity ?? this.quantity,
        unitPrice: unitPrice ?? this.unitPrice,
        taxRateId: taxRateId ?? this.taxRateId,
        discountAmount: discountAmount ?? this.discountAmount,
        discountType: discountType ?? this.discountType,
        subUnitId: subUnitId ?? this.subUnitId,
        note: note ?? this.note,
      );

  factory SellProductRequest.fromRawJson(String str) =>
      SellProductRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SellProductRequest.fromJson(Map<String, dynamic> json) =>
      SellProductRequest(
        productId: json["product_id"],
        variantionId: json["variation_id"],
        quantity: json["quantity"],
        unitPrice: json["unit_price"],
        taxRateId: json["tax_rate_id"],
        discountAmount: json["discount_amount"],
        discountType: json["discount_type"],
        subUnitId: json["sub_unit_id"],
        note: json["note"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "variation_id": variantionId,
        "quantity": quantity,
        "unit_price": unitPrice,
        "tax_rate_id": taxRateId,
        "discount_amount": discountAmount,
        "discount_type": discountType,
        "sub_unit_id": subUnitId,
        "note": note,
      };
}


class SellPaymentRequest {
  double? amount;
  String? method;
  int? accountId;
  String? cardNumber;
  String? cardHolderName;
  String? cardTransactionNumber;
  String? cardType;
  String? cardMonth;
  String? cardYear;
  String? cardSecurity;
  String? transactionNo1;
  String? transactionNo2;
  String? transactionNo3;
  String? bankAccountNumber;
  String? note;
  String? chequeNumber;

  SellPaymentRequest({
    this.amount,
    this.method,
    this.accountId,
    this.cardNumber,
    this.cardHolderName,
    this.cardTransactionNumber,
    this.cardType,
    this.cardMonth,
    this.cardYear,
    this.cardSecurity,
    this.transactionNo1,
    this.transactionNo2,
    this.transactionNo3,
    this.bankAccountNumber,
    this.note,
    this.chequeNumber,
  });

  SellPaymentRequest copyWith({
    double? amount,
    String? method,
    int? accountId,
    String? cardNumber,
    String? cardHolderName,
    String? cardTransactionNumber,
    String? cardType,
    String? cardMonth,
    String? cardYear,
    String? cardSecurity,
    String? transactionNo1,
    String? transactionNo2,
    String? transactionNo3,
    String? bankAccountNumber,
    String? note,
    String? chequeNumber,
  }) =>
      SellPaymentRequest(
        amount: amount ?? this.amount,
        method: method ?? this.method,
        accountId: accountId ?? this.accountId,
        cardNumber: cardNumber ?? this.cardNumber,
        cardHolderName: cardHolderName ?? this.cardHolderName,
        cardTransactionNumber:
            cardTransactionNumber ?? this.cardTransactionNumber,
        cardType: cardType ?? this.cardType,
        cardMonth: cardMonth ?? this.cardMonth,
        cardYear: cardYear ?? this.cardYear,
        cardSecurity: cardSecurity ?? this.cardSecurity,
        transactionNo1: transactionNo1 ?? this.transactionNo1,
        transactionNo2: transactionNo2 ?? this.transactionNo2,
        transactionNo3: transactionNo3 ?? this.transactionNo3,
        bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
        note: note ?? this.note,
        chequeNumber: chequeNumber ?? this.chequeNumber,
      );

  factory SellPaymentRequest.fromRawJson(String str) =>
      SellPaymentRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SellPaymentRequest.fromJson(Map<String, dynamic> json) =>
      SellPaymentRequest(
        amount: json["amount"],
        method: json["method"],
        accountId: json["account_id"],
        cardNumber: json["card_number"],
        cardHolderName: json["card_holder_name"],
        cardTransactionNumber: json["card_transaction_number"],
        cardType: json["card_type"],
        cardMonth: json["card_month"],
        cardYear: json["card_year"],
        cardSecurity: json["card_security"],
        transactionNo1: json["transaction_no_1"],
        transactionNo2: json["transaction_no_2"],
        transactionNo3: json["transaction_no_3"],
        bankAccountNumber: json["bank_account_number"],
        note: json["note"],
        chequeNumber: json["cheque_number"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "method": method,
        "account_id": accountId,
        "card_number": cardNumber,
        "card_holder_name": cardHolderName,
        "card_transaction_number": cardTransactionNumber,
        "card_type": cardType,
        "card_month": cardMonth,
        "card_year": cardYear,
        "card_security": cardSecurity,
        "transaction_no_1": transactionNo1,
        "transaction_no_2": transactionNo2,
        "transaction_no_3": transactionNo3,
        "bank_account_number": bankAccountNumber,
        "note": note,
        "cheque_number": chequeNumber,
      };
}
