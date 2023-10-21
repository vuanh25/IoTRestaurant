import 'dart:convert';

class StockPurchasesResponse {
  int? currentPage;
  List<StockPurchasesData>? data;
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

  StockPurchasesResponse({
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

  StockPurchasesResponse copyWith({
    int? currentPage,
    List<StockPurchasesData>? data,
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
      StockPurchasesResponse(
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

  factory StockPurchasesResponse.fromRawJson(String str) =>
      StockPurchasesResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StockPurchasesResponse.fromJson(Map<String, dynamic> json) =>
      StockPurchasesResponse(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<StockPurchasesData>.from(
                json["data"]!.map((x) => StockPurchasesData.fromJson(x))),
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

class StockPurchasesData {
  int? id;
  String? document;
  String? transactionDate;
  String? refNo;
  String? name;
  String? supplierBusinessName;
  String? status;
  String? finalTotal;
  String? locationName;
  int? payTermNumber;
  String? payTermType;
  int? returnTransactionId;
  String? amountPaid;
  String? returnPaid;
  int? returnExists;
  String? amountReturn;
  String? addedBy;
  String? paymentStatus;

  StockPurchasesData(
      {this.id,
      this.document,
      this.transactionDate,
      this.refNo,
      this.name,
      this.supplierBusinessName,
      this.status,
      this.finalTotal,
      this.locationName,
      this.payTermNumber,
      this.payTermType,
      this.returnTransactionId,
      this.amountPaid,
      this.returnPaid,
      this.returnExists,
      this.amountReturn,
      this.addedBy,
      this.paymentStatus});

  StockPurchasesData copyWith({
    int? id,
    String? document,
    String? transactionDate,
    String? refNo,
    String? name,
    String? supplierBusinessName,
    String? status,
    String? finalTotal,
    String? locationName,
    int? payTermNumber,
    String? payTermType,
    int? returnTransactionId,
    String? amountPaid,
    String? returnPaid,
    int? returnExists,
    String? amountReturn,
    String? addedBy,
    String? paymentStatus,
  }) =>
      StockPurchasesData(
          id: id ?? this.id,
          document: document ?? this.document,
          transactionDate: transactionDate ?? this.transactionDate,
          refNo: refNo ?? this.refNo,
          name: name ?? this.name,
          supplierBusinessName:
              supplierBusinessName ?? this.supplierBusinessName,
          status: status ?? this.status,
          finalTotal: finalTotal ?? this.finalTotal,
          locationName: locationName ?? this.locationName,
          payTermNumber: payTermNumber ?? this.payTermNumber,
          payTermType: payTermType ?? this.payTermType,
          returnTransactionId: returnTransactionId ?? this.returnTransactionId,
          amountPaid: amountPaid ?? this.amountPaid,
          returnPaid: returnPaid ?? this.returnPaid,
          returnExists: returnExists ?? this.returnExists,
          amountReturn: amountReturn ?? this.amountReturn,
          addedBy: addedBy ?? this.addedBy,
          paymentStatus: paymentStatus ?? this.paymentStatus);

  factory StockPurchasesData.fromRawJson(String str) =>
      StockPurchasesData.fromRawJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StockPurchasesData.fromJson(Map<String, dynamic> json) =>
      StockPurchasesData(
          id: json['id'],
          document: json['document'],
          transactionDate: json['transaction_date'],
          refNo: json['ref_no'],
          name: json['name'],
          supplierBusinessName: json['supplier_business_name'],
          status: json['status'],
          finalTotal: json['final_total'],
          locationName: json['location_name'],
          payTermNumber: json['pay_term_number'],
          payTermType: json['pay_term_type'],
          returnTransactionId: json['return_transaction_id'],
          amountPaid: json['amount_paid'],
          returnPaid: json['return_paid'],
          returnExists: json['return_exists'],
          amountReturn: json['amount_return'],
          addedBy: json['added_by'],
          paymentStatus: json['payment_status']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'document': document,
        'transaction_date': transactionDate,
        'ref_no': refNo,
        'name': name,
        'supplier_business_name': supplierBusinessName,
        'status': status,
        'final_total': finalTotal,
        'location_name': locationName,
        'pay_term_number': payTermNumber,
        'pay_term_type': payTermType,
        'return_transaction_id': returnTransactionId,
        'amount_paid': amountPaid,
        'return_paid': returnPaid,
        'return_exists': returnExists,
        'amount_return': amountReturn,
        'added_by': addedBy,
        'payment_status': paymentStatus
      };
}
