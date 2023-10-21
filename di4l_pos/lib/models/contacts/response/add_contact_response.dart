import 'dart:convert';

import 'package:di4l_pos/models/contacts/response/contacts_response.dart';

class AddContactResponse {
  AddContactResponse({
    this.data,
  });

  ContactModel? data;

  AddContactResponse copyWith({
    ContactModel? data,
  }) =>
      AddContactResponse(
        data: data ?? this.data,
      );

  factory AddContactResponse.fromRawJson(String str) =>
      AddContactResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddContactResponse.fromJson(Map<String, dynamic> json) =>
      AddContactResponse(
        data: json["data"] == null ? null : ContactModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
