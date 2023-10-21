// To parse this JSON data, do
//
//     final accountTypeRequest = accountTypeRequestFromJson(jsonString);

import 'dart:convert';

class AccountTypeRequest {
  String? name;
  dynamic parentAccountTypeId;

  AccountTypeRequest({
    this.name,
    this.parentAccountTypeId,
  });

  AccountTypeRequest copyWith({
    String? name,
    dynamic parentAccountTypeId,
  }) =>
      AccountTypeRequest(
        name: name ?? this.name,
        parentAccountTypeId: parentAccountTypeId ?? this.parentAccountTypeId,
      );

  factory AccountTypeRequest.fromRawJson(String str) =>
      AccountTypeRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountTypeRequest.fromJson(Map<String, dynamic> json) =>
      AccountTypeRequest(
        name: json["name"],
        parentAccountTypeId: json["parent_account_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "parent_account_type_id": parentAccountTypeId,
      };
}
