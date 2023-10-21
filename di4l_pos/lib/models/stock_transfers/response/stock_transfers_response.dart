// To parse this JSON data, do
//
//     final stockTransfersResponse = stockTransfersResponseFromJson(jsonString);

import 'dart:convert';

class StockTransfersResponse {
  int? currentPage;
  List<StockTransfersData>? data;
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

  StockTransfersResponse({
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

  StockTransfersResponse copyWith({
    int? currentPage,
    List<StockTransfersData>? data,
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
      StockTransfersResponse(
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

  factory StockTransfersResponse.fromRawJson(String str) =>
      StockTransfersResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StockTransfersResponse.fromJson(Map<String, dynamic> json) =>
      StockTransfersResponse(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<StockTransfersData>.from(
                json["data"]!.map((x) => StockTransfersData.fromJson(x))),
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

class StockTransfersData {
  int? id;
  String? transactionDate;
  String? refNo;
  String? locationFrom;
  String? locationTo;
  String? finalTotal;
  String? shippingCharges;
  String? additionalNotes;
  int? dtRowId;
  String? status;

  StockTransfersData({
    this.id,
    this.transactionDate,
    this.refNo,
    this.locationFrom,
    this.locationTo,
    this.finalTotal,
    this.shippingCharges,
    this.additionalNotes,
    this.dtRowId,
    this.status,
  });

  StockTransfersData copyWith({
    int? id,
    String? transactionDate,
    String? refNo,
    String? locationFrom,
    String? locationTo,
    String? finalTotal,
    String? shippingCharges,
    String? additionalNotes,
    int? dtRowId,
    String? status,
  }) =>
      StockTransfersData(
        id: id ?? this.id,
        transactionDate: transactionDate ?? this.transactionDate,
        refNo: refNo ?? this.refNo,
        locationFrom: locationFrom ?? this.locationFrom,
        locationTo: locationTo ?? this.locationTo,
        finalTotal: finalTotal ?? this.finalTotal,
        shippingCharges: shippingCharges ?? this.shippingCharges,
        additionalNotes: additionalNotes ?? this.additionalNotes,
        dtRowId: dtRowId ?? this.dtRowId,
        status: status ?? this.status,
      );

  factory StockTransfersData.fromRawJson(String str) =>
      StockTransfersData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StockTransfersData.fromJson(Map<String, dynamic> json) =>
      StockTransfersData(
        id: json["id"],
        transactionDate: json["transaction_date"],
        refNo: json["ref_no"],
        locationFrom: json["location_from"],
        locationTo: json["location_to"],
        finalTotal: json["final_total"],
        shippingCharges: json["shipping_charges"],
        additionalNotes: json["additional_notes"],
        dtRowId: json["DT_RowId"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "transaction_date": transactionDate,
        "ref_no": refNo,
        "location_from": locationFrom,
        "location_to": locationTo,
        "final_total": finalTotal,
        "shipping_charges": shippingCharges,
        "additional_notes": additionalNotes,
        "DT_RowId": dtRowId,
        "status": status,
      };
}
