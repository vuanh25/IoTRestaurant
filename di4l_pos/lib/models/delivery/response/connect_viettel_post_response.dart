// To parse this JSON data, do
//
//     final connectViettelPostResponse = connectViettelPostResponseFromJson(jsonString);

import 'dart:convert';

class ConnectViettelPostResponse {
  int? status;
  bool? error;
  String? message;
  List<LocationViettelPost>? data;
  String? tokenKey;

  ConnectViettelPostResponse({
    this.status,
    this.error,
    this.message,
    this.data,
    this.tokenKey,
  });

  ConnectViettelPostResponse copyWith({
    int? status,
    bool? error,
    String? message,
    List<LocationViettelPost>? data,
    String? tokenKey,
  }) =>
      ConnectViettelPostResponse(
        status: status ?? this.status,
        error: error ?? this.error,
        message: message ?? this.message,
        data: data ?? this.data,
        tokenKey: tokenKey ?? this.tokenKey,
      );

  factory ConnectViettelPostResponse.fromRawJson(String str) =>
      ConnectViettelPostResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConnectViettelPostResponse.fromJson(Map<String, dynamic> json) =>
      ConnectViettelPostResponse(
        status: json["status"],
        error: json["error"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<LocationViettelPost>.from(
                json["data"]!.map((x) => LocationViettelPost.fromJson(x))),
        tokenKey: json["token_key"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "error": error,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "token_key": tokenKey,
      };
}

class LocationViettelPost {
  int? groupaddressId;
  int? cusId;
  String? name;
  String? phone;
  String? address;
  int? provinceId;
  int? districtId;
  int? wardsId;
  dynamic postId;
  dynamic merchant;

  LocationViettelPost({
    this.groupaddressId,
    this.cusId,
    this.name,
    this.phone,
    this.address,
    this.provinceId,
    this.districtId,
    this.wardsId,
    this.postId,
    this.merchant,
  });

  LocationViettelPost copyWith({
    int? groupaddressId,
    int? cusId,
    String? name,
    String? phone,
    String? address,
    int? provinceId,
    int? districtId,
    int? wardsId,
    dynamic postId,
    dynamic merchant,
  }) =>
      LocationViettelPost(
        groupaddressId: groupaddressId ?? this.groupaddressId,
        cusId: cusId ?? this.cusId,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        provinceId: provinceId ?? this.provinceId,
        districtId: districtId ?? this.districtId,
        wardsId: wardsId ?? this.wardsId,
        postId: postId ?? this.postId,
        merchant: merchant ?? this.merchant,
      );

  factory LocationViettelPost.fromRawJson(String str) =>
      LocationViettelPost.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LocationViettelPost.fromJson(Map<String, dynamic> json) =>
      LocationViettelPost(
        groupaddressId: json["groupaddressId"],
        cusId: json["cusId"],
        name: json["name"],
        phone: json["phone"],
        address: json["address"],
        provinceId: json["provinceId"],
        districtId: json["districtId"],
        wardsId: json["wardsId"],
        postId: json["postId"],
        merchant: json["merchant"],
      );

  Map<String, dynamic> toJson() => {
        "groupaddressId": groupaddressId,
        "cusId": cusId,
        "name": name,
        "phone": phone,
        "address": address,
        "provinceId": provinceId,
        "districtId": districtId,
        "wardsId": wardsId,
        "postId": postId,
        "merchant": merchant,
      };
}
