import 'dart:convert';

import 'package:di4l_pos/models/unit/response/unit_response.dart';

class AddUnitResponse {
  AddUnitResponse({
    this.data,
  });

  Unit? data;

  AddUnitResponse copyWith({
    Unit? data,
  }) =>
      AddUnitResponse(
        data: data ?? this.data,
      );

  factory AddUnitResponse.fromRawJson(String str) =>
      AddUnitResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddUnitResponse.fromJson(Map<String, dynamic> json) =>
      AddUnitResponse(
        data: json["data"] == null ? null : Unit.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
