// To parse this JSON data, do
//
//     final saveConnectViettelPostRequest = saveConnectViettelPostRequestFromJson(jsonString);

import 'dart:convert';

class SaveConnectViettelPostRequest {
  int? deliveryPartnerId;
  String? tokenKey;
  String? storeAddressId;
  String? address;

  SaveConnectViettelPostRequest({
    this.deliveryPartnerId,
    this.tokenKey,
    this.storeAddressId,
    this.address,
  });

  SaveConnectViettelPostRequest copyWith({
    int? deliveryPartnerId,
    String? tokenKey,
    String? storeAddressId,
    String? address,
  }) =>
      SaveConnectViettelPostRequest(
        deliveryPartnerId: deliveryPartnerId ?? this.deliveryPartnerId,
        tokenKey: tokenKey ?? this.tokenKey,
        storeAddressId: storeAddressId ?? this.storeAddressId,
        address: address ?? this.address,
      );

  factory SaveConnectViettelPostRequest.fromRawJson(String str) =>
      SaveConnectViettelPostRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SaveConnectViettelPostRequest.fromJson(Map<String, dynamic> json) =>
      SaveConnectViettelPostRequest(
        deliveryPartnerId: json["delivery_partner_id"],
        tokenKey: json["token_key"],
        storeAddressId: json["store_address_id"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "delivery_partner_id": deliveryPartnerId,
        "token_key": tokenKey,
        "store_address_id": storeAddressId,
        "address": address,
      };
}
