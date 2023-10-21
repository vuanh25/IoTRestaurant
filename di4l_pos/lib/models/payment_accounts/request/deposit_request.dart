// To parse this JSON data, do
//
//     final depositRequest = depositRequestFromJson(jsonString);

import 'dart:convert';

class DepositRequest {
  String? accountId;
  String? fromAccount;
  String? amount;
  String? operationDate;
  dynamic note;

  DepositRequest({
    this.accountId,
    this.fromAccount,
    this.amount,
    this.operationDate,
    this.note,
  });

  DepositRequest copyWith({
    String? accountId,
    String? fromAccount,
    String? amount,
    String? operationDate,
    dynamic note,
  }) =>
      DepositRequest(
        accountId: accountId ?? this.accountId,
        fromAccount: fromAccount ?? this.fromAccount,
        amount: amount ?? this.amount,
        operationDate: operationDate ?? this.operationDate,
        note: note ?? this.note,
      );

  factory DepositRequest.fromRawJson(String str) =>
      DepositRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DepositRequest.fromJson(Map<String, dynamic> json) => DepositRequest(
        accountId: json["account_id"],
        fromAccount: json["from_account"],
        amount: json["amount"],
        operationDate: json["operation_date"],
        note: json["note"],
      );

  Map<String, dynamic> toJson() => {
        "account_id": accountId,
        "from_account": fromAccount,
        "amount": amount,
        "operation_date": operationDate,
        "note": note,
      };
}
