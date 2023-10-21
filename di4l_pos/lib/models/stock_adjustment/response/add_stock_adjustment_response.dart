import 'dart:convert';

import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_response.dart';

class AddStockAdjustmentResponse {
  AddStockAdjustmentResponse({
    this.data,
  });

  StockAdjustmentData? data;

  AddStockAdjustmentResponse copyWith({
    StockAdjustmentData? data,
  }) =>
      AddStockAdjustmentResponse(
        data: data ?? this.data,
      );

  factory AddStockAdjustmentResponse.fromRawJson(String str) =>
      AddStockAdjustmentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddStockAdjustmentResponse.fromJson(Map<String, dynamic> json) =>
      AddStockAdjustmentResponse(
        data: json["data"] == null ? null : StockAdjustmentData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
