// To parse this JSON data, do
//
//     final addPaymentAccountRequest = addPaymentAccountRequestFromJson(jsonString);

import 'dart:convert';

class AddPaymentAccountRequest {
  String? name;
  String? accountNumber;
  String? accountTypeId;
  String? openingBalance;
  String? note;
  List<AccountDetail>? accountDetails;

  AddPaymentAccountRequest({
    this.name,
    this.accountNumber,
    this.accountTypeId,
    this.openingBalance,
    this.note,
    this.accountDetails,
  });

  AddPaymentAccountRequest copyWith({
    String? name,
    String? accountNumber,
    String? accountTypeId,
    String? openingBalance,
    String? note,
    List<AccountDetail>? accountDetails,
  }) =>
      AddPaymentAccountRequest(
        name: name ?? this.name,
        accountNumber: accountNumber ?? this.accountNumber,
        accountTypeId: accountTypeId ?? this.accountTypeId,
        openingBalance: openingBalance ?? this.openingBalance,
        note: note ?? this.note,
        accountDetails: accountDetails ?? this.accountDetails,
      );

  factory AddPaymentAccountRequest.fromRawJson(String str) =>
      AddPaymentAccountRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddPaymentAccountRequest.fromJson(Map<String, dynamic> json) =>
      AddPaymentAccountRequest(
        name: json["name"],
        accountNumber: json["account_number"],
        accountTypeId: json["account_type_id"],
        openingBalance: json["opening_balance"],
        note: json["note"],
        accountDetails: json["account_details"] == null
            ? []
            : List<AccountDetail>.from(
                json["account_details"]!.map((x) => AccountDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "account_number": accountNumber,
        "account_type_id": accountTypeId,
        "opening_balance": openingBalance,
        "note": note,
        "account_details": accountDetails == null
            ? []
            : List<dynamic>.from(accountDetails!.map((x) => x.toJson())),
      };
}

class AccountDetail {
  String? label;
  String? value;

  AccountDetail({
    this.label,
    this.value,
  });

  AccountDetail copyWith({
    String? label,
    String? value,
  }) =>
      AccountDetail(
        label: label ?? this.label,
        value: value ?? this.value,
      );

  factory AccountDetail.fromRawJson(String str) =>
      AccountDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountDetail.fromJson(Map<String, dynamic> json) => AccountDetail(
        label: json["label"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "value": value,
      };
}
