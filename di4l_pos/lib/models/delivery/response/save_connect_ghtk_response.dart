// To parse this JSON data, do
//
//     final saveConnectGhtkResponse = saveConnectGhtkResponseFromJson(jsonString);

import 'dart:convert';

class SaveConnectGhtkResponse {
  bool? status;
  String? msg;

  SaveConnectGhtkResponse({
    this.status,
    this.msg,
  });

  SaveConnectGhtkResponse copyWith({
    bool? status,
    String? msg,
  }) =>
      SaveConnectGhtkResponse(
        status: status ?? this.status,
        msg: msg ?? this.msg,
      );

  factory SaveConnectGhtkResponse.fromRawJson(String str) =>
      SaveConnectGhtkResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SaveConnectGhtkResponse.fromJson(Map<String, dynamic> json) =>
      SaveConnectGhtkResponse(
        status: json["status"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
      };
}
