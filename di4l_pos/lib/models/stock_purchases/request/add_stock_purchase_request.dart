// To parse this JSON data, do
//
//     final addStockPurchaseRequest = addStockPurchaseRequestFromJson(jsonString);

import 'dart:convert';

class AddStockPurchaseRequest {
  int? contactId;
  String? refNo;
  String? transactionDate;
  String? status;
  int? locationId;
  int? exchangeRate;
  dynamic payTermNumber;
  dynamic payTermType;
  List<PurchaseRequest>? purchases;
  String? totalBeforeTax;
  dynamic discountType;
  String? discountAmount;
  String? taxId;
  String? taxAmount;
  String? additionalNotes;
  String? shippingDetails;
  String? shippingCharges;
  dynamic additionalExpenseKey1;
  String? additionalExpenseValue1;
  dynamic additionalExpenseKey2;
  String? additionalExpenseValue2;
  dynamic additionalExpenseKey3;
  String? additionalExpenseValue3;
  dynamic additionalExpenseKey4;
  String? additionalExpenseValue4;
  String? finalTotal;
  String? advanceBalance;
  List<Payment>? payment;

  AddStockPurchaseRequest({
    this.contactId,
    this.refNo,
    this.transactionDate,
    this.status,
    this.locationId,
    this.exchangeRate,
    this.payTermNumber,
    this.payTermType,
    this.purchases,
    this.totalBeforeTax,
    this.discountType,
    this.discountAmount,
    this.taxId,
    this.taxAmount,
    this.additionalNotes,
    this.shippingDetails,
    this.shippingCharges,
    this.additionalExpenseKey1,
    this.additionalExpenseValue1,
    this.additionalExpenseKey2,
    this.additionalExpenseValue2,
    this.additionalExpenseKey3,
    this.additionalExpenseValue3,
    this.additionalExpenseKey4,
    this.additionalExpenseValue4,
    this.finalTotal,
    this.advanceBalance,
    this.payment,
  });

  AddStockPurchaseRequest copyWith({
    int? contactId,
    String? refNo,
    String? transactionDate,
    String? status,
    int? locationId,
    int? exchangeRate,
    dynamic payTermNumber,
    dynamic payTermType,
    List<PurchaseRequest>? purchases,
    String? totalBeforeTax,
    dynamic discountType,
    String? discountAmount,
    String? taxId,
    String? taxAmount,
    String? additionalNotes,
    String? shippingDetails,
    String? shippingCharges,
    dynamic additionalExpenseKey1,
    String? additionalExpenseValue1,
    dynamic additionalExpenseKey2,
    String? additionalExpenseValue2,
    dynamic additionalExpenseKey3,
    String? additionalExpenseValue3,
    dynamic additionalExpenseKey4,
    String? additionalExpenseValue4,
    String? finalTotal,
    String? advanceBalance,
    List<Payment>? payment,
  }) =>
      AddStockPurchaseRequest(
        contactId: contactId ?? this.contactId,
        refNo: refNo ?? this.refNo,
        transactionDate: transactionDate ?? this.transactionDate,
        status: status ?? this.status,
        locationId: locationId ?? this.locationId,
        exchangeRate: exchangeRate ?? this.exchangeRate,
        payTermNumber: payTermNumber ?? this.payTermNumber,
        payTermType: payTermType ?? this.payTermType,
        purchases: purchases ?? this.purchases,
        totalBeforeTax: totalBeforeTax ?? this.totalBeforeTax,
        discountType: discountType ?? this.discountType,
        discountAmount: discountAmount ?? this.discountAmount,
        taxId: taxId ?? this.taxId,
        taxAmount: taxAmount ?? this.taxAmount,
        additionalNotes: additionalNotes ?? this.additionalNotes,
        shippingDetails: shippingDetails ?? this.shippingDetails,
        shippingCharges: shippingCharges ?? this.shippingCharges,
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
        advanceBalance: advanceBalance ?? this.advanceBalance,
        payment: payment ?? this.payment,
      );

  factory AddStockPurchaseRequest.fromRawJson(String str) =>
      AddStockPurchaseRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddStockPurchaseRequest.fromJson(Map<String, dynamic> json) =>
      AddStockPurchaseRequest(
        contactId: json["contact_id"],
        refNo: json["ref_no"],
        transactionDate: json["transaction_date"],
        status: json["status"],
        locationId: json["location_id"],
        exchangeRate: json["exchange_rate"],
        payTermNumber: json["pay_term_number"],
        payTermType: json["pay_term_type"],
        purchases: json["purchases"] == null
            ? []
            : List<PurchaseRequest>.from(
                json["purchases"]!.map((x) => PurchaseRequest.fromJson(x))),
        totalBeforeTax: json["total_before_tax"],
        discountType: json["discount_type"],
        discountAmount: json["discount_amount"],
        taxId: json["tax_id"],
        taxAmount: json["tax_amount"],
        additionalNotes: json["additional_notes"],
        shippingDetails: json["shipping_details"],
        shippingCharges: json["shipping_charges"],
        additionalExpenseKey1: json["additional_expense_key_1"],
        additionalExpenseValue1: json["additional_expense_value_1"],
        additionalExpenseKey2: json["additional_expense_key_2"],
        additionalExpenseValue2: json["additional_expense_value_2"],
        additionalExpenseKey3: json["additional_expense_key_3"],
        additionalExpenseValue3: json["additional_expense_value_3"],
        additionalExpenseKey4: json["additional_expense_key_4"],
        additionalExpenseValue4: json["additional_expense_value_4"],
        finalTotal: json["final_total"],
        advanceBalance: json["advance_balance"],
        payment: json["payment"] == null
            ? []
            : List<Payment>.from(
                json["payment"]!.map((x) => Payment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "contact_id": contactId,
        "ref_no": refNo,
        "transaction_date": transactionDate,
        "status": status,
        "location_id": locationId,
        "exchange_rate": exchangeRate,
        "pay_term_number": payTermNumber,
        "pay_term_type": payTermType,
        "purchases": purchases == null
            ? []
            : List<dynamic>.from(purchases!.map((x) => x.toJson())),
        "total_before_tax": totalBeforeTax,
        "discount_type": discountType,
        "discount_amount": discountAmount,
        "tax_id": taxId,
        "tax_amount": taxAmount,
        "additional_notes": additionalNotes,
        "shipping_details": shippingDetails,
        "shipping_charges": shippingCharges,
        "additional_expense_key_1": additionalExpenseKey1,
        "additional_expense_value_1": additionalExpenseValue1,
        "additional_expense_key_2": additionalExpenseKey2,
        "additional_expense_value_2": additionalExpenseValue2,
        "additional_expense_key_3": additionalExpenseKey3,
        "additional_expense_value_3": additionalExpenseValue3,
        "additional_expense_key_4": additionalExpenseKey4,
        "additional_expense_value_4": additionalExpenseValue4,
        "final_total": finalTotal,
        "advance_balance": advanceBalance,
        "payment": payment == null
            ? []
            : List<dynamic>.from(payment!.map((x) => x.toJson())),
      };
}

class Payment {
  String? amount;
  String? paidOn;
  String? method;
  dynamic accountId;
  dynamic cardNumber;
  dynamic cardHolderName;
  dynamic cardTransactionNumber;
  String? cardType;
  dynamic cardMonth;
  dynamic cardYear;
  dynamic cardSecurity;
  dynamic chequeNumber;
  dynamic bankAccountNumber;
  dynamic transactionNo1;
  dynamic transactionNo2;
  dynamic transactionNo3;
  dynamic transactionNo4;
  dynamic transactionNo5;
  dynamic transactionNo6;
  dynamic transactionNo7;
  dynamic note;

  Payment({
    this.amount,
    this.paidOn,
    this.method,
    this.accountId,
    this.cardNumber,
    this.cardHolderName,
    this.cardTransactionNumber,
    this.cardType,
    this.cardMonth,
    this.cardYear,
    this.cardSecurity,
    this.chequeNumber,
    this.bankAccountNumber,
    this.transactionNo1,
    this.transactionNo2,
    this.transactionNo3,
    this.transactionNo4,
    this.transactionNo5,
    this.transactionNo6,
    this.transactionNo7,
    this.note,
  });

  Payment copyWith({
    String? amount,
    String? paidOn,
    String? method,
    dynamic accountId,
    dynamic cardNumber,
    dynamic cardHolderName,
    dynamic cardTransactionNumber,
    String? cardType,
    dynamic cardMonth,
    dynamic cardYear,
    dynamic cardSecurity,
    dynamic chequeNumber,
    dynamic bankAccountNumber,
    dynamic transactionNo1,
    dynamic transactionNo2,
    dynamic transactionNo3,
    dynamic transactionNo4,
    dynamic transactionNo5,
    dynamic transactionNo6,
    dynamic transactionNo7,
    dynamic note,
  }) =>
      Payment(
        amount: amount ?? this.amount,
        paidOn: paidOn ?? this.paidOn,
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
        chequeNumber: chequeNumber ?? this.chequeNumber,
        bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
        transactionNo1: transactionNo1 ?? this.transactionNo1,
        transactionNo2: transactionNo2 ?? this.transactionNo2,
        transactionNo3: transactionNo3 ?? this.transactionNo3,
        transactionNo4: transactionNo4 ?? this.transactionNo4,
        transactionNo5: transactionNo5 ?? this.transactionNo5,
        transactionNo6: transactionNo6 ?? this.transactionNo6,
        transactionNo7: transactionNo7 ?? this.transactionNo7,
        note: note ?? this.note,
      );

  factory Payment.fromRawJson(String str) => Payment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        amount: json["amount"],
        paidOn: json["paid_on"],
        method: json["method"],
        accountId: json["account_id"],
        cardNumber: json["card_number"],
        cardHolderName: json["card_holder_name"],
        cardTransactionNumber: json["card_transaction_number"],
        cardType: json["card_type"],
        cardMonth: json["card_month"],
        cardYear: json["card_year"],
        cardSecurity: json["card_security"],
        chequeNumber: json["cheque_number"],
        bankAccountNumber: json["bank_account_number"],
        transactionNo1: json["transaction_no_1"],
        transactionNo2: json["transaction_no_2"],
        transactionNo3: json["transaction_no_3"],
        transactionNo4: json["transaction_no_4"],
        transactionNo5: json["transaction_no_5"],
        transactionNo6: json["transaction_no_6"],
        transactionNo7: json["transaction_no_7"],
        note: json["note"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "paid_on": paidOn,
        "method": method,
        "account_id": accountId,
        "card_number": cardNumber,
        "card_holder_name": cardHolderName,
        "card_transaction_number": cardTransactionNumber,
        "card_type": cardType,
        "card_month": cardMonth,
        "card_year": cardYear,
        "card_security": cardSecurity,
        "cheque_number": chequeNumber,
        "bank_account_number": bankAccountNumber,
        "transaction_no_1": transactionNo1,
        "transaction_no_2": transactionNo2,
        "transaction_no_3": transactionNo3,
        "transaction_no_4": transactionNo4,
        "transaction_no_5": transactionNo5,
        "transaction_no_6": transactionNo6,
        "transaction_no_7": transactionNo7,
        "note": note,
      };
}

class PurchaseRequest {
  String? productId;
  String? variationId;
  String? quantity;
  String? productUnitId;
  String? subUnitId;
  String? ppWithoutDiscount;
  String? discountPercent;
  String? purchasePrice;
  dynamic purchaseLineTaxId;
  String? itemTax;
  String? purchasePriceIncTax;
  String? profitPercent;
  String? lotNumber;
  dynamic mfgDate;
  String? expDate;

  PurchaseRequest({
    this.productId,
    this.variationId,
    this.quantity,
    this.productUnitId,
    this.subUnitId,
    this.ppWithoutDiscount,
    this.discountPercent,
    this.purchasePrice,
    this.purchaseLineTaxId,
    this.itemTax,
    this.purchasePriceIncTax,
    this.profitPercent,
    this.lotNumber,
    this.mfgDate,
    this.expDate,
  });

  PurchaseRequest copyWith({
    String? productId,
    String? variationId,
    String? quantity,
    String? productUnitId,
    String? subUnitId,
    String? ppWithoutDiscount,
    String? discountPercent,
    String? purchasePrice,
    dynamic purchaseLineTaxId,
    String? itemTax,
    String? purchasePriceIncTax,
    String? profitPercent,
    String? lotNumber,
    dynamic mfgDate,
    String? expDate,
  }) =>
      PurchaseRequest(
        productId: productId ?? this.productId,
        variationId: variationId ?? this.variationId,
        quantity: quantity ?? this.quantity,
        productUnitId: productUnitId ?? this.productUnitId,
        subUnitId: subUnitId ?? this.subUnitId,
        ppWithoutDiscount: ppWithoutDiscount ?? this.ppWithoutDiscount,
        discountPercent: discountPercent ?? this.discountPercent,
        purchasePrice: purchasePrice ?? this.purchasePrice,
        purchaseLineTaxId: purchaseLineTaxId ?? this.purchaseLineTaxId,
        itemTax: itemTax ?? this.itemTax,
        purchasePriceIncTax: purchasePriceIncTax ?? this.purchasePriceIncTax,
        profitPercent: profitPercent ?? this.profitPercent,
        lotNumber: lotNumber ?? this.lotNumber,
        mfgDate: mfgDate ?? this.mfgDate,
        expDate: expDate ?? this.expDate,
      );

  factory PurchaseRequest.fromRawJson(String str) =>
      PurchaseRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurchaseRequest.fromJson(Map<String, dynamic> json) =>
      PurchaseRequest(
        productId: json["product_id"],
        variationId: json["variation_id"],
        quantity: json["quantity"],
        productUnitId: json["product_unit_id"],
        subUnitId: json["sub_unit_id"],
        ppWithoutDiscount: json["pp_without_discount"],
        discountPercent: json["discount_percent"],
        purchasePrice: json["purchase_price"],
        purchaseLineTaxId: json["purchase_line_tax_id"],
        itemTax: json["item_tax"],
        purchasePriceIncTax: json["purchase_price_inc_tax"],
        profitPercent: json["profit_percent"],
        lotNumber: json["lot_number"],
        mfgDate: json["mfg_date"],
        expDate: json["exp_date"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "variation_id": variationId,
        "quantity": quantity,
        "product_unit_id": productUnitId,
        "sub_unit_id": subUnitId,
        "pp_without_discount": ppWithoutDiscount,
        "discount_percent": discountPercent,
        "purchase_price": purchasePrice,
        "purchase_line_tax_id": purchaseLineTaxId,
        "item_tax": itemTax,
        "purchase_price_inc_tax": purchasePriceIncTax,
        "profit_percent": profitPercent,
        "lot_number": lotNumber,
        "mfg_date": mfgDate,
        "exp_date": expDate,
      };
}
