// To parse this JSON data, do
//
//     final purchasesCreateResponse = purchasesCreateResponseFromJson(jsonString);

import 'dart:convert';

class PurchasesCreateResponse {
  bool? success;
  Data? data;

  PurchasesCreateResponse({
    this.success,
    this.data,
  });

  PurchasesCreateResponse copyWith({
    bool? success,
    Data? data,
  }) =>
      PurchasesCreateResponse(
        success: success ?? this.success,
        data: data ?? this.data,
      );

  factory PurchasesCreateResponse.fromRawJson(String str) =>
      PurchasesCreateResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurchasesCreateResponse.fromJson(Map<String, dynamic> json) =>
      PurchasesCreateResponse(
        success: json["success"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
      };
}

class Data {
  List<Tax>? taxes;
  OrderStatuses? orderStatuses;
  BusinessLocations? businessLocations;
  CurrencyDetails? currencyDetails;
  String? defaultPurchaseStatus;
  CustomerGroups? customerGroups;
  Types? types;
  Shortcuts? shortcuts;
  PaymentLine? paymentLine;
  List<String>? paymentTypes;
  List<dynamic>? accounts;
  BlAttributes? blAttributes;
  dynamic commonSettings;
  AllProvince? allProvince;

  Data({
    this.taxes,
    this.orderStatuses,
    this.businessLocations,
    this.currencyDetails,
    this.defaultPurchaseStatus,
    this.customerGroups,
    this.types,
    this.shortcuts,
    this.paymentLine,
    this.paymentTypes,
    this.accounts,
    this.blAttributes,
    this.commonSettings,
    this.allProvince,
  });

  Data copyWith({
    List<Tax>? taxes,
    OrderStatuses? orderStatuses,
    BusinessLocations? businessLocations,
    CurrencyDetails? currencyDetails,
    String? defaultPurchaseStatus,
    CustomerGroups? customerGroups,
    Types? types,
    Shortcuts? shortcuts,
    PaymentLine? paymentLine,
    List<String>? paymentTypes,
    List<dynamic>? accounts,
    BlAttributes? blAttributes,
    dynamic commonSettings,
    AllProvince? allProvince,
  }) =>
      Data(
        taxes: taxes ?? this.taxes,
        orderStatuses: orderStatuses ?? this.orderStatuses,
        businessLocations: businessLocations ?? this.businessLocations,
        currencyDetails: currencyDetails ?? this.currencyDetails,
        defaultPurchaseStatus:
            defaultPurchaseStatus ?? this.defaultPurchaseStatus,
        customerGroups: customerGroups ?? this.customerGroups,
        types: types ?? this.types,
        shortcuts: shortcuts ?? this.shortcuts,
        paymentLine: paymentLine ?? this.paymentLine,
        paymentTypes: paymentTypes ?? this.paymentTypes,
        accounts: accounts ?? this.accounts,
        blAttributes: blAttributes ?? this.blAttributes,
        commonSettings: commonSettings ?? this.commonSettings,
        allProvince: allProvince ?? this.allProvince,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        taxes: json["taxes"] == null
            ? []
            : List<Tax>.from(json["taxes"]!.map((x) => Tax.fromJson(x))),
        orderStatuses: json["orderStatuses"] == null
            ? null
            : OrderStatuses.fromJson(json["orderStatuses"]),
        businessLocations: json["business_locations"] == null
            ? null
            : BusinessLocations.fromJson(json["business_locations"]),
        currencyDetails: json["currency_details"] == null
            ? null
            : CurrencyDetails.fromJson(json["currency_details"]),
        defaultPurchaseStatus: json["default_purchase_status"],
        customerGroups: json["customer_groups"] == null
            ? null
            : CustomerGroups.fromJson(json["customer_groups"]),
        types: json["types"] == null ? null : Types.fromJson(json["types"]),
        shortcuts: json["shortcuts"] == null
            ? null
            : Shortcuts.fromJson(json["shortcuts"]),
        paymentLine: json["payment_line"] == null
            ? null
            : PaymentLine.fromJson(json["payment_line"]),
        paymentTypes: json["payment_types"] == null
            ? []
            : List<String>.from(json["payment_types"]!.map((x) => x)),
        accounts: json["accounts"] == null
            ? []
            : List<dynamic>.from(json["accounts"]!.map((x) => x)),
        blAttributes: json["bl_attributes"] == null
            ? null
            : BlAttributes.fromJson(json["bl_attributes"]),
        commonSettings: json["common_settings"],
        allProvince: json["\u0024all_province"] == null
            ? null
            : AllProvince.fromJson(json["\u0024all_province"]),
      );

  Map<String, dynamic> toJson() => {
        "taxes": taxes == null
            ? []
            : List<dynamic>.from(taxes!.map((x) => x.toJson())),
        "orderStatuses": orderStatuses?.toJson(),
        "business_locations": businessLocations?.toJson(),
        "currency_details": currencyDetails?.toJson(),
        "default_purchase_status": defaultPurchaseStatus,
        "customer_groups": customerGroups?.toJson(),
        "types": types?.toJson(),
        "shortcuts": shortcuts?.toJson(),
        "payment_line": paymentLine?.toJson(),
        "payment_types": paymentTypes == null
            ? []
            : List<dynamic>.from(paymentTypes!.map((x) => x)),
        "accounts":
            accounts == null ? [] : List<dynamic>.from(accounts!.map((x) => x)),
        "bl_attributes": blAttributes?.toJson(),
        "common_settings": commonSettings,
        "\u0024all_province": allProvince?.toJson(),
      };
}

class AllProvince {
  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  AllProvince({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  AllProvince copyWith({
    int? currentPage,
    List<Datum>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    dynamic nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) =>
      AllProvince(
        currentPage: currentPage ?? this.currentPage,
        data: data ?? this.data,
        firstPageUrl: firstPageUrl ?? this.firstPageUrl,
        from: from ?? this.from,
        lastPage: lastPage ?? this.lastPage,
        lastPageUrl: lastPageUrl ?? this.lastPageUrl,
        nextPageUrl: nextPageUrl ?? this.nextPageUrl,
        path: path ?? this.path,
        perPage: perPage ?? this.perPage,
        prevPageUrl: prevPageUrl ?? this.prevPageUrl,
        to: to ?? this.to,
        total: total ?? this.total,
      );

  factory AllProvince.fromRawJson(String str) =>
      AllProvince.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllProvince.fromJson(Map<String, dynamic> json) => AllProvince(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  int? id;
  String? fullname;
  int? parentId;
  String? code;
  String? codename;
  String? divisionType;
  int? phoneCode;
  int? isDeleted;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;
  int? vtpostId;
  String? vtpostName;
  String? codenameVnpost;
  int? vnpostId;
  dynamic vnpostParentId;
  String? ghnName;
  int? ghnId;

  Datum({
    this.id,
    this.fullname,
    this.parentId,
    this.code,
    this.codename,
    this.divisionType,
    this.phoneCode,
    this.isDeleted,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.vtpostId,
    this.vtpostName,
    this.codenameVnpost,
    this.vnpostId,
    this.vnpostParentId,
    this.ghnName,
    this.ghnId,
  });

  Datum copyWith({
    int? id,
    String? fullname,
    int? parentId,
    String? code,
    String? codename,
    String? divisionType,
    int? phoneCode,
    int? isDeleted,
    int? createdBy,
    int? updatedBy,
    String? createdAt,
    String? updatedAt,
    int? vtpostId,
    String? vtpostName,
    String? codenameVnpost,
    int? vnpostId,
    dynamic vnpostParentId,
    String? ghnName,
    int? ghnId,
  }) =>
      Datum(
        id: id ?? this.id,
        fullname: fullname ?? this.fullname,
        parentId: parentId ?? this.parentId,
        code: code ?? this.code,
        codename: codename ?? this.codename,
        divisionType: divisionType ?? this.divisionType,
        phoneCode: phoneCode ?? this.phoneCode,
        isDeleted: isDeleted ?? this.isDeleted,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        vtpostId: vtpostId ?? this.vtpostId,
        vtpostName: vtpostName ?? this.vtpostName,
        codenameVnpost: codenameVnpost ?? this.codenameVnpost,
        vnpostId: vnpostId ?? this.vnpostId,
        vnpostParentId: vnpostParentId ?? this.vnpostParentId,
        ghnName: ghnName ?? this.ghnName,
        ghnId: ghnId ?? this.ghnId,
      );

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        fullname: json["fullname"],
        parentId: json["parent_id"],
        code: json["code"],
        codename: json["codename"],
        divisionType: json["division_type"],
        phoneCode: json["phone_code"],
        isDeleted: json["is_deleted"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        vtpostId: json["vtpost_id"],
        vtpostName: json["vtpost_name"],
        codenameVnpost: json["Codename_vnpost"],
        vnpostId: json["vnpost_id"],
        vnpostParentId: json["vnpost_parent_id"],
        ghnName: json["ghn_name"],
        ghnId: json["ghn_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullname": fullname,
        "parent_id": parentId,
        "code": code,
        "codename": codename,
        "division_type": divisionType,
        "phone_code": phoneCode,
        "is_deleted": isDeleted,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "vtpost_id": vtpostId,
        "vtpost_name": vtpostName,
        "Codename_vnpost": codenameVnpost,
        "vnpost_id": vnpostId,
        "vnpost_parent_id": vnpostParentId,
        "ghn_name": ghnName,
        "ghn_id": ghnId,
      };
}

class BlAttributes {
  The12? the12;
  The12? the451;

  BlAttributes({
    this.the12,
    this.the451,
  });

  BlAttributes copyWith({
    The12? the12,
    The12? the451,
  }) =>
      BlAttributes(
        the12: the12 ?? this.the12,
        the451: the451 ?? this.the451,
      );

  factory BlAttributes.fromRawJson(String str) =>
      BlAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BlAttributes.fromJson(Map<String, dynamic> json) => BlAttributes(
        the12: json["12"] == null ? null : The12.fromJson(json["12"]),
        the451: json["451"] == null ? null : The12.fromJson(json["451"]),
      );

  Map<String, dynamic> toJson() => {
        "12": the12?.toJson(),
        "451": the451?.toJson(),
      };
}

class The12 {
  String? dataReceiptPrinterType;
  int? dataDefaultPriceGroup;
  String? dataDefaultPaymentAccounts;
  int? dataDefaultInvoiceSchemeId;

  The12({
    this.dataReceiptPrinterType,
    this.dataDefaultPriceGroup,
    this.dataDefaultPaymentAccounts,
    this.dataDefaultInvoiceSchemeId,
  });

  The12 copyWith({
    String? dataReceiptPrinterType,
    int? dataDefaultPriceGroup,
    String? dataDefaultPaymentAccounts,
    int? dataDefaultInvoiceSchemeId,
  }) =>
      The12(
        dataReceiptPrinterType:
            dataReceiptPrinterType ?? this.dataReceiptPrinterType,
        dataDefaultPriceGroup:
            dataDefaultPriceGroup ?? this.dataDefaultPriceGroup,
        dataDefaultPaymentAccounts:
            dataDefaultPaymentAccounts ?? this.dataDefaultPaymentAccounts,
        dataDefaultInvoiceSchemeId:
            dataDefaultInvoiceSchemeId ?? this.dataDefaultInvoiceSchemeId,
      );

  factory The12.fromRawJson(String str) => The12.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory The12.fromJson(Map<String, dynamic> json) => The12(
        dataReceiptPrinterType: json["data-receipt_printer_type"],
        dataDefaultPriceGroup: json["data-default_price_group"],
        dataDefaultPaymentAccounts: json["data-default_payment_accounts"],
        dataDefaultInvoiceSchemeId: json["data-default_invoice_scheme_id"],
      );

  Map<String, dynamic> toJson() => {
        "data-receipt_printer_type": dataReceiptPrinterType,
        "data-default_price_group": dataDefaultPriceGroup,
        "data-default_payment_accounts": dataDefaultPaymentAccounts,
        "data-default_invoice_scheme_id": dataDefaultInvoiceSchemeId,
      };
}

class BusinessLocations {
  String? the12;
  String? the451;

  BusinessLocations({
    this.the12,
    this.the451,
  });

  BusinessLocations copyWith({
    String? the12,
    String? the451,
  }) =>
      BusinessLocations(
        the12: the12 ?? this.the12,
        the451: the451 ?? this.the451,
      );

  factory BusinessLocations.fromRawJson(String str) =>
      BusinessLocations.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BusinessLocations.fromJson(Map<String, dynamic> json) =>
      BusinessLocations(
        the12: json["12"],
        the451: json["451"],
      );

  Map<String, dynamic> toJson() => {
        "12": the12,
        "451": the451,
      };
}

class CurrencyDetails {
  bool? purchaseInDiffCurrency;
  int? pExchangeRate;
  String? decimalSeperator;
  String? thousandSeperator;
  String? symbol;
  String? thousandSeparator;
  String? decimalSeparator;
  String? code;
  String? name;

  CurrencyDetails({
    this.purchaseInDiffCurrency,
    this.pExchangeRate,
    this.decimalSeperator,
    this.thousandSeperator,
    this.symbol,
    this.thousandSeparator,
    this.decimalSeparator,
    this.code,
    this.name,
  });

  CurrencyDetails copyWith({
    bool? purchaseInDiffCurrency,
    int? pExchangeRate,
    String? decimalSeperator,
    String? thousandSeperator,
    String? symbol,
    String? thousandSeparator,
    String? decimalSeparator,
    String? code,
    String? name,
  }) =>
      CurrencyDetails(
        purchaseInDiffCurrency:
            purchaseInDiffCurrency ?? this.purchaseInDiffCurrency,
        pExchangeRate: pExchangeRate ?? this.pExchangeRate,
        decimalSeperator: decimalSeperator ?? this.decimalSeperator,
        thousandSeperator: thousandSeperator ?? this.thousandSeperator,
        symbol: symbol ?? this.symbol,
        thousandSeparator: thousandSeparator ?? this.thousandSeparator,
        decimalSeparator: decimalSeparator ?? this.decimalSeparator,
        code: code ?? this.code,
        name: name ?? this.name,
      );

  factory CurrencyDetails.fromRawJson(String str) =>
      CurrencyDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrencyDetails.fromJson(Map<String, dynamic> json) =>
      CurrencyDetails(
        purchaseInDiffCurrency: json["purchase_in_diff_currency"],
        pExchangeRate: json["p_exchange_rate"],
        decimalSeperator: json["decimal_seperator"],
        thousandSeperator: json["thousand_seperator"],
        symbol: json["symbol"],
        thousandSeparator: json["thousand_separator"],
        decimalSeparator: json["decimal_separator"],
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "purchase_in_diff_currency": purchaseInDiffCurrency,
        "p_exchange_rate": pExchangeRate,
        "decimal_seperator": decimalSeperator,
        "thousand_seperator": thousandSeperator,
        "symbol": symbol,
        "thousand_separator": thousandSeparator,
        "decimal_separator": decimalSeparator,
        "code": code,
        "name": name,
      };
}

class CustomerGroups {
  String? the1;
  String? the2;
  String? the8;
  String? empty;

  CustomerGroups({
    this.the1,
    this.the2,
    this.the8,
    this.empty,
  });

  CustomerGroups copyWith({
    String? the1,
    String? the2,
    String? the8,
    String? empty,
  }) =>
      CustomerGroups(
        the1: the1 ?? this.the1,
        the2: the2 ?? this.the2,
        the8: the8 ?? this.the8,
        empty: empty ?? this.empty,
      );

  factory CustomerGroups.fromRawJson(String str) =>
      CustomerGroups.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomerGroups.fromJson(Map<String, dynamic> json) => CustomerGroups(
        the1: json["1"],
        the2: json["2"],
        the8: json["8"],
        empty: json[""],
      );

  Map<String, dynamic> toJson() => {
        "1": the1,
        "2": the2,
        "8": the8,
        "": empty,
      };
}

class OrderStatuses {
  String? received;
  String? pending;
  String? ordered;

  OrderStatuses({
    this.received,
    this.pending,
    this.ordered,
  });

  OrderStatuses copyWith({
    String? received,
    String? pending,
    String? ordered,
  }) =>
      OrderStatuses(
        received: received ?? this.received,
        pending: pending ?? this.pending,
        ordered: ordered ?? this.ordered,
      );

  factory OrderStatuses.fromRawJson(String str) =>
      OrderStatuses.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderStatuses.fromJson(Map<String, dynamic> json) => OrderStatuses(
        received: json["received"],
        pending: json["pending"],
        ordered: json["ordered"],
      );

  Map<String, dynamic> toJson() => {
        "received": received,
        "pending": pending,
        "ordered": ordered,
      };
}

class PaymentLine {
  String? method;
  int? amount;
  String? note;
  String? cardTransactionNumber;
  String? cardNumber;
  String? cardType;
  String? cardHolderName;
  String? cardMonth;
  String? cardYear;
  String? cardSecurity;
  String? chequeNumber;
  String? bankAccountNumber;
  int? isReturn;
  String? transactionNo;

  PaymentLine({
    this.method,
    this.amount,
    this.note,
    this.cardTransactionNumber,
    this.cardNumber,
    this.cardType,
    this.cardHolderName,
    this.cardMonth,
    this.cardYear,
    this.cardSecurity,
    this.chequeNumber,
    this.bankAccountNumber,
    this.isReturn,
    this.transactionNo,
  });

  PaymentLine copyWith({
    String? method,
    int? amount,
    String? note,
    String? cardTransactionNumber,
    String? cardNumber,
    String? cardType,
    String? cardHolderName,
    String? cardMonth,
    String? cardYear,
    String? cardSecurity,
    String? chequeNumber,
    String? bankAccountNumber,
    int? isReturn,
    String? transactionNo,
  }) =>
      PaymentLine(
        method: method ?? this.method,
        amount: amount ?? this.amount,
        note: note ?? this.note,
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
        isReturn: isReturn ?? this.isReturn,
        transactionNo: transactionNo ?? this.transactionNo,
      );

  factory PaymentLine.fromRawJson(String str) =>
      PaymentLine.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentLine.fromJson(Map<String, dynamic> json) => PaymentLine(
        method: json["method"],
        amount: json["amount"],
        note: json["note"],
        cardTransactionNumber: json["card_transaction_number"],
        cardNumber: json["card_number"],
        cardType: json["card_type"],
        cardHolderName: json["card_holder_name"],
        cardMonth: json["card_month"],
        cardYear: json["card_year"],
        cardSecurity: json["card_security"],
        chequeNumber: json["cheque_number"],
        bankAccountNumber: json["bank_account_number"],
        isReturn: json["is_return"],
        transactionNo: json["transaction_no"],
      );

  Map<String, dynamic> toJson() => {
        "method": method,
        "amount": amount,
        "note": note,
        "card_transaction_number": cardTransactionNumber,
        "card_number": cardNumber,
        "card_type": cardType,
        "card_holder_name": cardHolderName,
        "card_month": cardMonth,
        "card_year": cardYear,
        "card_security": cardSecurity,
        "cheque_number": chequeNumber,
        "bank_account_number": bankAccountNumber,
        "is_return": isReturn,
        "transaction_no": transactionNo,
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
    dynamic expressCheckout,
    dynamic payNCkeckout,
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

class Tax {
  int? id;
  int? businessId;
  String? name;
  int? amount;
  int? isTaxGroup;
  int? forTaxGroup;
  int? createdBy;
  dynamic woocommerceTaxRateId;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Tax({
    this.id,
    this.businessId,
    this.name,
    this.amount,
    this.isTaxGroup,
    this.forTaxGroup,
    this.createdBy,
    this.woocommerceTaxRateId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  Tax copyWith({
    int? id,
    int? businessId,
    String? name,
    int? amount,
    int? isTaxGroup,
    int? forTaxGroup,
    int? createdBy,
    dynamic woocommerceTaxRateId,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      Tax(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        name: name ?? this.name,
        amount: amount ?? this.amount,
        isTaxGroup: isTaxGroup ?? this.isTaxGroup,
        forTaxGroup: forTaxGroup ?? this.forTaxGroup,
        createdBy: createdBy ?? this.createdBy,
        woocommerceTaxRateId: woocommerceTaxRateId ?? this.woocommerceTaxRateId,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Tax.fromRawJson(String str) => Tax.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        id: json["id"],
        businessId: json["business_id"],
        name: json["name"],
        amount: json["amount"],
        isTaxGroup: json["is_tax_group"],
        forTaxGroup: json["for_tax_group"],
        createdBy: json["created_by"],
        woocommerceTaxRateId: json["woocommerce_tax_rate_id"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "name": name,
        "amount": amount,
        "is_tax_group": isTaxGroup,
        "for_tax_group": forTaxGroup,
        "created_by": createdBy,
        "woocommerce_tax_rate_id": woocommerceTaxRateId,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class Types {
  String? supplier;
  String? customer;
  String? both;

  Types({
    this.supplier,
    this.customer,
    this.both,
  });

  Types copyWith({
    String? supplier,
    String? customer,
    String? both,
  }) =>
      Types(
        supplier: supplier ?? this.supplier,
        customer: customer ?? this.customer,
        both: both ?? this.both,
      );

  factory Types.fromRawJson(String str) => Types.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Types.fromJson(Map<String, dynamic> json) => Types(
        supplier: json["supplier"],
        customer: json["customer"],
        both: json["both"],
      );

  Map<String, dynamic> toJson() => {
        "supplier": supplier,
        "customer": customer,
        "both": both,
      };
}
