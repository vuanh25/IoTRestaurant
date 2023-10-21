// To parse this JSON data, do
//
//     final connectGhnResponse = connectGhnResponseFromJson(jsonString);

import 'dart:convert';

class ConnectGhnResponse {
  int? code;
  String? message;

  ConnectGhnResponse({
    this.code,
    this.message,
  });

  ConnectGhnResponse copyWith({
    int? code,
    String? message,
  }) =>
      ConnectGhnResponse(
        code: code ?? this.code,
        message: message ?? this.message,
      );

  factory ConnectGhnResponse.fromRawJson(String str) =>
      ConnectGhnResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConnectGhnResponse.fromJson(Map<String, dynamic> json) =>
      ConnectGhnResponse(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
