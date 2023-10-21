// To parse this JSON data, do
//
//     final connectViettelPostRequest = connectViettelPostRequestFromJson(jsonString);

import 'dart:convert';

class ConnectViettelPostRequest {
  int? deliveryPartnerId;
  String? username;
  String? password;

  ConnectViettelPostRequest({
    this.deliveryPartnerId,
    this.username,
    this.password,
  });

  ConnectViettelPostRequest copyWith({
    int? deliveryPartnerId,
    String? username,
    String? password,
  }) =>
      ConnectViettelPostRequest(
        deliveryPartnerId: deliveryPartnerId ?? this.deliveryPartnerId,
        username: username ?? this.username,
        password: password ?? this.password,
      );

  factory ConnectViettelPostRequest.fromRawJson(String str) =>
      ConnectViettelPostRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConnectViettelPostRequest.fromJson(Map<String, dynamic> json) =>
      ConnectViettelPostRequest(
        deliveryPartnerId: json["delivery_partner_id"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "delivery_partner_id": deliveryPartnerId,
        "username": username,
        "password": password,
      };
}
