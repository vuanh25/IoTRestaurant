// To parse this JSON data, do
//
//     final saveConnectViettelPostResponse = saveConnectViettelPostResponseFromJson(jsonString);

import 'dart:convert';

class SaveConnectViettelPostResponse {
  bool? status;
  String? msg;

  SaveConnectViettelPostResponse({
    this.status,
    this.msg,
  });

  SaveConnectViettelPostResponse copyWith({
    bool? status,
    String? msg,
  }) =>
      SaveConnectViettelPostResponse(
        status: status ?? this.status,
        msg: msg ?? this.msg,
      );

  factory SaveConnectViettelPostResponse.fromRawJson(String str) =>
      SaveConnectViettelPostResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SaveConnectViettelPostResponse.fromJson(Map<String, dynamic> json) =>
      SaveConnectViettelPostResponse(
        status: json["status"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
      };
}
