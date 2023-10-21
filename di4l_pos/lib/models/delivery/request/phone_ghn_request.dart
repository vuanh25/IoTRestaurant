// To parse this JSON data, do
//
//     final phoneGhnRequest = phoneGhnRequestFromJson(jsonString);

import 'dart:convert';

class PhoneGhnRequest {
  String? phoneGhn;

  PhoneGhnRequest({
    this.phoneGhn,
  });

  PhoneGhnRequest copyWith({
    String? phoneGhn,
  }) =>
      PhoneGhnRequest(
        phoneGhn: phoneGhn ?? this.phoneGhn,
      );

  factory PhoneGhnRequest.fromRawJson(String str) =>
      PhoneGhnRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PhoneGhnRequest.fromJson(Map<String, dynamic> json) =>
      PhoneGhnRequest(
        phoneGhn: json["phone_ghn"],
      );

  Map<String, dynamic> toJson() => {
        "phone_ghn": phoneGhn,
      };
}
