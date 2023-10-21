// To parse this JSON data, do
//
//     final stockAdjustmentResponse = stockAdjustmentResponseFromJson(jsonString);

import 'dart:convert';

class StockAdjustmentResponse {
  int? currentPage;
  List<StockAdjustmentData>? data;
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

  StockAdjustmentResponse({
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

  StockAdjustmentResponse copyWith({
    int? currentPage,
    List<StockAdjustmentData>? data,
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
      StockAdjustmentResponse(
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

  factory StockAdjustmentResponse.fromRawJson(String str) =>
      StockAdjustmentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StockAdjustmentResponse.fromJson(Map<String, dynamic> json) =>
      StockAdjustmentResponse(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<StockAdjustmentData>.from(
                json["data"]!.map((x) => StockAdjustmentData.fromJson(x))),
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

class StockAdjustmentData {
  int? id;
  String? transactionDate;
  String? refNo;
  String? locationName;
  String? adjustmentType;
  String? finalTotal;
  String? totalAmountRecovered;
  String? additionalNotes;
  int? dtRowId;
  String? addedBy;

  StockAdjustmentData({
    this.id,
    this.transactionDate,
    this.refNo,
    this.locationName,
    this.adjustmentType,
    this.finalTotal,
    this.totalAmountRecovered,
    this.additionalNotes,
    this.dtRowId,
    this.addedBy,
  });

  StockAdjustmentData copyWith({
    int? id,
    String? transactionDate,
    String? refNo,
    String? locationName,
    String? adjustmentType,
    String? finalTotal,
    String? totalAmountRecovered,
    String? additionalNotes,
    int? dtRowId,
    String? addedBy,
  }) =>
      StockAdjustmentData(
        id: id ?? this.id,
        transactionDate: transactionDate ?? this.transactionDate,
        refNo: refNo ?? this.refNo,
        locationName: locationName ?? this.locationName,
        adjustmentType: adjustmentType ?? this.adjustmentType,
        finalTotal: finalTotal ?? this.finalTotal,
        totalAmountRecovered: totalAmountRecovered ?? this.totalAmountRecovered,
        additionalNotes: additionalNotes ?? this.additionalNotes,
        dtRowId: dtRowId ?? this.dtRowId,
        addedBy: addedBy ?? this.addedBy,
      );

  factory StockAdjustmentData.fromRawJson(String str) =>
      StockAdjustmentData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StockAdjustmentData.fromJson(Map<String, dynamic> json) =>
      StockAdjustmentData(
        id: json["id"],
        transactionDate: json["transaction_date"],
        refNo: json["ref_no"],
        locationName: json["location_name"],
        adjustmentType: json["adjustment_type"],
        finalTotal: json["final_total"],
        totalAmountRecovered: json["total_amount_recovered"],
        additionalNotes: json["additional_notes"],
        dtRowId: json["DT_RowId"],
        addedBy: json["added_by"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "transaction_date": transactionDate,
        "ref_no": refNo,
        "location_name": locationName,
        "adjustment_type": adjustmentType,
        "final_total": finalTotal,
        "total_amount_recovered": totalAmountRecovered,
        "additional_notes": additionalNotes,
        "DT_RowId": dtRowId,
        "added_by": addedBy,
      };
}
