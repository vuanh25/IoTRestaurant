// To parse this JSON data, do
//
//     final intoLinkRequest = intoLinkRequestFromJson(jsonString);

import 'dart:convert';

class IntoLinkRequest {
  String? refer;

  IntoLinkRequest({
    this.refer,
  });

  IntoLinkRequest copyWith({
    String? refer,
  }) =>
      IntoLinkRequest(
        refer: refer ?? this.refer,
      );

  factory IntoLinkRequest.fromRawJson(String str) =>
      IntoLinkRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IntoLinkRequest.fromJson(Map<String, dynamic> json) =>
      IntoLinkRequest(
        refer: json["refer"],
      );

  Map<String, dynamic> toJson() => {
        "refer": refer,
      };
}
