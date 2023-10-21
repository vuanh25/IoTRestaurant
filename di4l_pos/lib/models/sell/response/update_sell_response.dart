

import 'dart:convert';

import 'package:di4l_pos/models/sell/response/sell_response.dart';

class UpdateSellResponse
{
  UpdateSellResponse(
    {
      this.data,
    }
  );

  SellResponse? data;


  UpdateSellResponse copyWith({SellResponse? data}) => UpdateSellResponse(data: data ?? this.data);
  factory UpdateSellResponse.fromRawJson(String str) => UpdateSellResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateSellResponse.fromJson(Map<String,dynamic> json)=> UpdateSellResponse(
    data: json["data"] == null ? null : SellResponse.fromJson(json,)
  );

  Map<String,dynamic> toJson() => {
    "data": data == null ? null : data!.toJson(),
  };
}