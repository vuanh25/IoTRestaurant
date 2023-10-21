// To parse this JSON data, do
//
//     final addPaymentAccountResponse = addPaymentAccountResponseFromJson(jsonString);

import 'dart:convert';

class AddPaymentAccountResponse {
  Data? data;

  AddPaymentAccountResponse({
    this.data,
  });

  AddPaymentAccountResponse copyWith({
    Data? data,
  }) =>
      AddPaymentAccountResponse(
        data: data ?? this.data,
      );

  factory AddPaymentAccountResponse.fromRawJson(String str) =>
      AddPaymentAccountResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddPaymentAccountResponse.fromJson(Map<String, dynamic> json) =>
      AddPaymentAccountResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  String? name;
  String? accountNumber;
  dynamic note;
  String? accountTypeId;
  List<AccountDetail>? accountDetails;
  int? businessId;
  int? createdBy;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data({
    this.name,
    this.accountNumber,
    this.note,
    this.accountTypeId,
    this.accountDetails,
    this.businessId,
    this.createdBy,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Data copyWith({
    String? name,
    String? accountNumber,
    dynamic note,
    String? accountTypeId,
    List<AccountDetail>? accountDetails,
    int? businessId,
    int? createdBy,
    String? updatedAt,
    String? createdAt,
    int? id,
  }) =>
      Data(
        name: name ?? this.name,
        accountNumber: accountNumber ?? this.accountNumber,
        note: note ?? this.note,
        accountTypeId: accountTypeId ?? this.accountTypeId,
        accountDetails: accountDetails ?? this.accountDetails,
        businessId: businessId ?? this.businessId,
        createdBy: createdBy ?? this.createdBy,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        accountNumber: json["account_number"],
        note: json["note"],
        accountTypeId: json["account_type_id"],
        accountDetails: json["account_details"] == null
            ? []
            : List<AccountDetail>.from(
                json["account_details"]!.map((x) => AccountDetail.fromJson(x))),
        businessId: json["business_id"],
        createdBy: json["created_by"],
        updatedAt: json["updated_at"],
        createdAt: json["created_at"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "account_number": accountNumber,
        "note": note,
        "account_type_id": accountTypeId,
        "account_details": accountDetails == null
            ? []
            : List<dynamic>.from(accountDetails!.map((x) => x.toJson())),
        "business_id": businessId,
        "created_by": createdBy,
        "updated_at": updatedAt,
        "created_at": createdAt,
        "id": id,
      };
}

class AccountDetail {
  dynamic label;
  dynamic value;

  AccountDetail({
    this.label,
    this.value,
  });

  AccountDetail copyWith({
    dynamic label,
    dynamic value,
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
