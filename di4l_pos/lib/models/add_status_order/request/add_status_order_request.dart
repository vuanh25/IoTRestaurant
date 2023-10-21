// To parse this JSON data, do
//
//     final addStatusOrderRequest = addStatusOrderRequestFromJson(jsonString);

import 'dart:convert';

class AddStatusOrderRequest {
  String? value;

  AddStatusOrderRequest({
    this.value,
  });

  AddStatusOrderRequest copyWith({
    String? value,
  }) =>
      AddStatusOrderRequest(
        value: value ?? this.value,
      );

  factory AddStatusOrderRequest.fromRawJson(String str) =>
      AddStatusOrderRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddStatusOrderRequest.fromJson(Map<String, dynamic> json) =>
      AddStatusOrderRequest(
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
      };
}
