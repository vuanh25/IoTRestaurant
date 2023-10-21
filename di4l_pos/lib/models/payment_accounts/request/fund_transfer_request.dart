// To parse this JSON data, do
//
//     final fundTransferRequest = fundTransferRequestFromJson(jsonString);

import 'dart:convert';

class FundTransferRequest {
  String? fromAccount;
  String? toAccount;
  String? amount;
  String? operationDate;
  dynamic note;

  FundTransferRequest({
    this.fromAccount,
    this.toAccount,
    this.amount,
    this.operationDate,
    this.note,
  });

  FundTransferRequest copyWith({
    String? fromAccount,
    String? toAccount,
    String? amount,
    String? operationDate,
    dynamic note,
  }) =>
      FundTransferRequest(
        fromAccount: fromAccount ?? this.fromAccount,
        toAccount: toAccount ?? this.toAccount,
        amount: amount ?? this.amount,
        operationDate: operationDate ?? this.operationDate,
        note: note ?? this.note,
      );

  factory FundTransferRequest.fromRawJson(String str) =>
      FundTransferRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FundTransferRequest.fromJson(Map<String, dynamic> json) =>
      FundTransferRequest(
        fromAccount: json["from_account"],
        toAccount: json["to_account"],
        amount: json["amount"],
        operationDate: json["operation_date"],
        note: json["note"],
      );

  Map<String, dynamic> toJson() => {
        "from_account": fromAccount,
        "to_account": toAccount,
        "amount": amount,
        "operation_date": operationDate,
        "note": note,
      };
}
