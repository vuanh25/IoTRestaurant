// To parse this JSON data, do
//
//     final getOtpGhnResponse = getOtpGhnResponseFromJson(jsonString);

import 'dart:convert';

class GetOtpGhnResponse {
  int? code;
  String? message;
  Data? data;

  GetOtpGhnResponse({
    this.code,
    this.message,
    this.data,
  });

  GetOtpGhnResponse copyWith({
    int? code,
    String? message,
    Data? data,
  }) =>
      GetOtpGhnResponse(
        code: code ?? this.code,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory GetOtpGhnResponse.fromRawJson(String str) =>
      GetOtpGhnResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetOtpGhnResponse.fromJson(Map<String, dynamic> json) =>
      GetOtpGhnResponse(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  int? ttl;

  Data({
    this.ttl,
  });

  Data copyWith({
    int? ttl,
  }) =>
      Data(
        ttl: ttl ?? this.ttl,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        ttl: json["TTL"],
      );

  Map<String, dynamic> toJson() => {
        "TTL": ttl,
      };
}
