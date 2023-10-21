// To parse this JSON data, do
//
//     final addStatusOrderResponse = addStatusOrderResponseFromJson(jsonString);

import 'dart:convert';

class AddStatusOrderResponse {
  StatusOrder? data;

  AddStatusOrderResponse({
    this.data,
  });

  AddStatusOrderResponse copyWith({
    StatusOrder? data,
  }) =>
      AddStatusOrderResponse(
        data: data ?? this.data,
      );

  factory AddStatusOrderResponse.fromRawJson(String str) =>
      AddStatusOrderResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddStatusOrderResponse.fromJson(Map<String, dynamic> json) =>
      AddStatusOrderResponse(
        data: json["data"] == null ? null : StatusOrder.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class StatusOrder {
  String? value;
  int? businessId;
  String? updatedAt;
  String? createdAt;
  int? id;

  StatusOrder({
    this.value,
    this.businessId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  StatusOrder copyWith({
    String? value,
    int? businessId,
    String? updatedAt,
    String? createdAt,
    int? id,
  }) =>
      StatusOrder(
        value: value ?? this.value,
        businessId: businessId ?? this.businessId,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
      );

  factory StatusOrder.fromRawJson(String str) =>
      StatusOrder.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StatusOrder.fromJson(Map<String, dynamic> json) => StatusOrder(
        value: json["value"],
        businessId: json["business_id"],
        updatedAt: json["updated_at"],
        createdAt: json["created_at"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "business_id": businessId,
        "updated_at": updatedAt,
        "created_at": createdAt,
        "id": id,
      };
}
