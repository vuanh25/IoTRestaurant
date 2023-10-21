import 'dart:convert';

import 'package:di4l_pos/models/price/response/price_response.dart';

class AddPriceResponse {
  AddPriceResponse({
    this.data,
  });

  Price? data;

  AddPriceResponse copyWith({
    Price? data,
  }) =>
      AddPriceResponse(
        data: data ?? this.data,
      );

  factory AddPriceResponse.fromRawJson(String str) =>
      AddPriceResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddPriceResponse.fromJson(Map<String, dynamic> json) =>
      AddPriceResponse(
        data: json["data"] == null ? null : Price.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
