// To parse this JSON data, do
//
//     final connectGhtkRequest = connectGhtkRequestFromJson(jsonString);

import 'dart:convert';

class ConnectGhtkRequest {
  String? token;

  ConnectGhtkRequest({
    this.token,
  });

  ConnectGhtkRequest copyWith({
    String? token,
  }) =>
      ConnectGhtkRequest(
        token: token ?? this.token,
      );

  factory ConnectGhtkRequest.fromRawJson(String str) =>
      ConnectGhtkRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConnectGhtkRequest.fromJson(Map<String, dynamic> json) =>
      ConnectGhtkRequest(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
