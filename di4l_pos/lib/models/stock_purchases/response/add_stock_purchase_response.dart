// To parse this JSON data, do
//
//     final addStockPurchaseResponse = addStockPurchaseResponseFromJson(jsonString);

import 'dart:convert';

class AddStockPurchaseResponse {
  Data? data;

  AddStockPurchaseResponse({
    this.data,
  });

  AddStockPurchaseResponse copyWith({
    Data? data,
  }) =>
      AddStockPurchaseResponse(
        data: data ?? this.data,
      );

  factory AddStockPurchaseResponse.fromRawJson(String str) =>
      AddStockPurchaseResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddStockPurchaseResponse.fromJson(Map<String, dynamic> json) =>
      AddStockPurchaseResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  bool? success;
  String? message;

  Data({
    this.success,
    this.message,
  });

  Data copyWith({
    bool? success,
    String? message,
  }) =>
      Data(
        success: success ?? this.success,
        message: message ?? this.message,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
      };
}
