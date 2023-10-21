import 'dart:convert';

import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_response.dart';

class AddStockTransfersResponse {
  AddStockTransfersResponse({
    this.data,
  });

  StockTransfersData? data;

  AddStockTransfersResponse copyWith({
    StockTransfersData? data,
  }) =>
      AddStockTransfersResponse(
        data: data ?? this.data,
      );

  factory AddStockTransfersResponse.fromRawJson(String str) =>
      AddStockTransfersResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddStockTransfersResponse.fromJson(Map<String, dynamic> json) =>
      AddStockTransfersResponse(
        data: json["data"] == null ? null : StockTransfersData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
