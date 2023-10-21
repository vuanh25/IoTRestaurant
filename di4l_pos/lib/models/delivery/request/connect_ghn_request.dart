// To parse this JSON data, do
//
//     final connectGhnRequest = connectGhnRequestFromJson(jsonString);

import 'dart:convert';

class ConnectGhnRequest {
  String? phoneGhn;
  String? otp;
  String? shopId;
  String? address;
  int? deliveryPartnerId;
  String? tokenKey;

  ConnectGhnRequest({
    this.phoneGhn,
    this.otp,
    this.shopId,
    this.address,
    this.deliveryPartnerId,
    this.tokenKey,
  });

  ConnectGhnRequest copyWith({
    String? phoneGhn,
    String? otp,
    String? shopId,
    String? address,
    int? deliveryPartnerId,
    String? tokenKey,
  }) =>
      ConnectGhnRequest(
        phoneGhn: phoneGhn ?? this.phoneGhn,
        otp: otp ?? this.otp,
        shopId: shopId ?? this.shopId,
        address: address ?? this.address,
        deliveryPartnerId: deliveryPartnerId ?? this.deliveryPartnerId,
        tokenKey: tokenKey ?? this.tokenKey,
      );

  factory ConnectGhnRequest.fromRawJson(String str) =>
      ConnectGhnRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConnectGhnRequest.fromJson(Map<String, dynamic> json) =>
      ConnectGhnRequest(
        phoneGhn: json["phone_ghn"],
        otp: json["otp"],
        shopId: json["shop_id"],
        address: json["address"],
        deliveryPartnerId: json["delivery_partner_id"],
        tokenKey: json["token_key"],
      );

  Map<String, dynamic> toJson() => {
        "phone_ghn": phoneGhn,
        "otp": otp,
        "shop_id": shopId,
        "address": address,
        "delivery_partner_id": deliveryPartnerId,
        "token_key": tokenKey,
      };
}
