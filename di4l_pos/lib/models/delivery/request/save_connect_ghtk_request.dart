// To parse this JSON data, do
//
//     final saveConnectGhtkRequest = saveConnectGhtkRequestFromJson(jsonString);

import 'dart:convert';

class SaveConnectGhtkRequest {
  int? ghtkId;
  String? address;
  int? deliveryPartnerId;
  dynamic tokenKey;

  SaveConnectGhtkRequest({
    this.ghtkId,
    this.address,
    this.deliveryPartnerId,
    this.tokenKey,
  });

  SaveConnectGhtkRequest copyWith({
    int? ghtkId,
    String? address,
    int? deliveryPartnerId,
    dynamic tokenKey,
  }) =>
      SaveConnectGhtkRequest(
        ghtkId: ghtkId ?? this.ghtkId,
        address: address ?? this.address,
        deliveryPartnerId: deliveryPartnerId ?? this.deliveryPartnerId,
        tokenKey: tokenKey ?? this.tokenKey,
      );

  factory SaveConnectGhtkRequest.fromRawJson(String str) =>
      SaveConnectGhtkRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SaveConnectGhtkRequest.fromJson(Map<String, dynamic> json) =>
      SaveConnectGhtkRequest(
        ghtkId: json["ghtk_id"],
        address: json["address"],
        deliveryPartnerId: json["delivery_partner_id"],
        tokenKey: json["token_key"],
      );

  Map<String, dynamic> toJson() => {
        "ghtk_id": ghtkId,
        "address": address,
        "delivery_partner_id": deliveryPartnerId,
        "token_key": tokenKey,
      };
}
