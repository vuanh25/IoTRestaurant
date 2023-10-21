// To parse this JSON data, do
//
//     final accountTypeResponse = accountTypeResponseFromJson(jsonString);

import 'dart:convert';

class AccountTypeResponse {
  bool? success;
  List<AccType>? data;

  AccountTypeResponse({
    this.success,
    this.data,
  });

  AccountTypeResponse copyWith({
    bool? success,
    List<AccType>? data,
  }) =>
      AccountTypeResponse(
        success: success ?? this.success,
        data: data ?? this.data,
      );

  factory AccountTypeResponse.fromRawJson(String str) =>
      AccountTypeResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountTypeResponse.fromJson(Map<String, dynamic> json) =>
      AccountTypeResponse(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<AccType>.from(json["data"]!.map((x) => AccType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AccType {
  int? id;
  String? name;
  dynamic parentAccountTypeId;
  int? businessId;
  String? createdAt;
  String? updatedAt;

  AccType({
    this.id,
    this.name,
    this.parentAccountTypeId,
    this.businessId,
    this.createdAt,
    this.updatedAt,
  });

  AccType copyWith({
    int? id,
    String? name,
    dynamic parentAccountTypeId,
    int? businessId,
    String? createdAt,
    String? updatedAt,
  }) =>
      AccType(
        id: id ?? this.id,
        name: name ?? this.name,
        parentAccountTypeId: parentAccountTypeId ?? this.parentAccountTypeId,
        businessId: businessId ?? this.businessId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory AccType.fromRawJson(String str) => AccType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccType.fromJson(Map<String, dynamic> json) => AccType(
        id: json["id"],
        name: json["name"],
        parentAccountTypeId: json["parent_account_type_id"],
        businessId: json["business_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "parent_account_type_id": parentAccountTypeId,
        "business_id": businessId,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
