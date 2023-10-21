// To parse this JSON data, do
//
//     final ConnectGhtkResponse = ConnectGhtkResponseFromJson(jsonString);

import 'dart:convert';

class ConnectGhtkResponse {
  bool? success;
  String? message;
  List<LocationGHTK>? data;

  ConnectGhtkResponse({
    this.success,
    this.message,
    this.data,
  });

  ConnectGhtkResponse copyWith({
    bool? success,
    String? message,
    List<LocationGHTK>? data,
  }) =>
      ConnectGhtkResponse(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory ConnectGhtkResponse.fromRawJson(String str) =>
      ConnectGhtkResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConnectGhtkResponse.fromJson(Map<String, dynamic> json) =>
      ConnectGhtkResponse(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<LocationGHTK>.from(
                json["data"]!.map((x) => LocationGHTK.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class LocationGHTK {
  String? pickAddressId;
  String? address;
  String? pickTel;
  String? pickName;

  LocationGHTK({
    this.pickAddressId,
    this.address,
    this.pickTel,
    this.pickName,
  });

  LocationGHTK copyWith({
    String? pickAddressId,
    String? address,
    String? pickTel,
    String? pickName,
  }) =>
      LocationGHTK(
        pickAddressId: pickAddressId ?? this.pickAddressId,
        address: address ?? this.address,
        pickTel: pickTel ?? this.pickTel,
        pickName: pickName ?? this.pickName,
      );

  factory LocationGHTK.fromRawJson(String str) =>
      LocationGHTK.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LocationGHTK.fromJson(Map<String, dynamic> json) => LocationGHTK(
        pickAddressId: json["pick_address_id"],
        address: json["address"],
        pickTel: json["pick_tel"],
        pickName: json["pick_name"],
      );

  Map<String, dynamic> toJson() => {
        "pick_address_id": pickAddressId,
        "address": address,
        "pick_tel": pickTel,
        "pick_name": pickName,
      };
}
