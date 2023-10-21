// To parse this JSON data, do
//
//     final sellReportResponse = sellReportResponseFromJson(jsonString);

import 'dart:convert';

class SellReportResponse {
  int? currentPage;
  List<SellReport>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  SellReportResponse({
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

  SellReportResponse copyWith({
    int? currentPage,
    List<SellReport>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    String? nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) =>
      SellReportResponse(
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

  factory SellReportResponse.fromRawJson(String str) =>
      SellReportResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SellReportResponse.fromJson(Map<String, dynamic> json) =>
      SellReportResponse(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<SellReport>.from(
                json["data"]!.map((x) => SellReport.fromJson(x))),
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

class SellReport {
  String? productName;
  String? productType;
  String? productVariation;
  String? variationName;
  String? subSku;
  String? customer;
  dynamic supplierBusinessName;
  dynamic contactId;
  int? transactionId;
  String? invoiceNo;
  String? transactionDate;
  String? unitPrice;
  String? unitSalePrice;
  String? sellQty;
  String? discountType;
  String? discountAmount;
  String? itemTax;
  dynamic tax;
  String? unit;
  int? parentSellLineId;
  String? subtotal;

  SellReport({
    this.productName,
    this.productType,
    this.productVariation,
    this.variationName,
    this.subSku,
    this.customer,
    this.supplierBusinessName,
    this.contactId,
    this.transactionId,
    this.invoiceNo,
    this.transactionDate,
    this.unitPrice,
    this.unitSalePrice,
    this.sellQty,
    this.discountType,
    this.discountAmount,
    this.itemTax,
    this.tax,
    this.unit,
    this.parentSellLineId,
    this.subtotal,
  });

  SellReport copyWith({
    String? productName,
    String? productType,
    String? productVariation,
    String? variationName,
    String? subSku,
    String? customer,
    dynamic supplierBusinessName,
    dynamic contactId,
    int? transactionId,
    String? invoiceNo,
    String? transactionDate,
    String? unitPrice,
    String? unitSalePrice,
    String? sellQty,
    String? discountType,
    String? discountAmount,
    String? itemTax,
    dynamic tax,
    String? unit,
    int? parentSellLineId,
    String? subtotal,
  }) =>
      SellReport(
        productName: productName ?? this.productName,
        productType: productType ?? this.productType,
        productVariation: productVariation ?? this.productVariation,
        variationName: variationName ?? this.variationName,
        subSku: subSku ?? this.subSku,
        customer: customer ?? this.customer,
        supplierBusinessName: supplierBusinessName ?? this.supplierBusinessName,
        contactId: contactId ?? this.contactId,
        transactionId: transactionId ?? this.transactionId,
        invoiceNo: invoiceNo ?? this.invoiceNo,
        transactionDate: transactionDate ?? this.transactionDate,
        unitPrice: unitPrice ?? this.unitPrice,
        unitSalePrice: unitSalePrice ?? this.unitSalePrice,
        sellQty: sellQty ?? this.sellQty,
        discountType: discountType ?? this.discountType,
        discountAmount: discountAmount ?? this.discountAmount,
        itemTax: itemTax ?? this.itemTax,
        tax: tax ?? this.tax,
        unit: unit ?? this.unit,
        parentSellLineId: parentSellLineId ?? this.parentSellLineId,
        subtotal: subtotal ?? this.subtotal,
      );

  factory SellReport.fromRawJson(String str) =>
      SellReport.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SellReport.fromJson(Map<String, dynamic> json) => SellReport(
        productName: json["product_name"],
        productType: json["product_type"],
        productVariation: json["product_variation"],
        variationName: json["variation_name"],
        subSku: json["sub_sku"],
        customer: json["customer"],
        supplierBusinessName: json["supplier_business_name"],
        contactId: json["contact_id"],
        transactionId: json["transaction_id"],
        invoiceNo: json["invoice_no"],
        transactionDate: json["transaction_date"],
        unitPrice: json["unit_price"],
        unitSalePrice: json["unit_sale_price"],
        sellQty: json["sell_qty"],
        discountType: json["discount_type"],
        discountAmount: json["discount_amount"],
        itemTax: json["item_tax"],
        tax: json["tax"],
        unit: json["unit"],
        parentSellLineId: json["parent_sell_line_id"],
        subtotal: json["subtotal"],
      );

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "product_type": productType,
        "product_variation": productVariation,
        "variation_name": variationName,
        "sub_sku": subSku,
        "customer": customer,
        "supplier_business_name": supplierBusinessName,
        "contact_id": contactId,
        "transaction_id": transactionId,
        "invoice_no": invoiceNo,
        "transaction_date": transactionDate,
        "unit_price": unitPrice,
        "unit_sale_price": unitSalePrice,
        "sell_qty": sellQty,
        "discount_type": discountType,
        "discount_amount": discountAmount,
        "item_tax": itemTax,
        "tax": tax,
        "unit": unit,
        "parent_sell_line_id": parentSellLineId,
        "subtotal": subtotal,
      };
}
