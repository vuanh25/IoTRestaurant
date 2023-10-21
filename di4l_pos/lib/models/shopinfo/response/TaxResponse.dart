// To parse this JSON data, do
//
//     final taxResponse = taxResponseFromJson(jsonString);

import 'dart:convert';

class TaxResponse {
  List<TaxData>? data;

  TaxResponse({
    this.data,
  });

  TaxResponse copyWith({
    List<TaxData>? data,
  }) =>
      TaxResponse(
        data: data ?? this.data,
      );

  factory TaxResponse.fromRawJson(String str) =>
      TaxResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TaxResponse.fromJson(Map<String, dynamic> json) => TaxResponse(
        data: json["data"] == null
            ? []
            : List<TaxData>.from(json["data"]!.map((x) => TaxData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class TaxData {
  int? id;
  int? businessId;
  String? name;
  int? amount;
  int? isTaxGroup;
  int? forTaxGroup;
  int? createdBy;
  dynamic woocommerceTaxRateId;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  TaxData({
    this.id,
    this.businessId,
    this.name,
    this.amount,
    this.isTaxGroup,
    this.forTaxGroup,
    this.createdBy,
    this.woocommerceTaxRateId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  TaxData copyWith({
    int? id,
    int? businessId,
    String? name,
    int? amount,
    int? isTaxGroup,
    int? forTaxGroup,
    int? createdBy,
    dynamic woocommerceTaxRateId,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      TaxData(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        name: name ?? this.name,
        amount: amount ?? this.amount,
        isTaxGroup: isTaxGroup ?? this.isTaxGroup,
        forTaxGroup: forTaxGroup ?? this.forTaxGroup,
        createdBy: createdBy ?? this.createdBy,
        woocommerceTaxRateId: woocommerceTaxRateId ?? this.woocommerceTaxRateId,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory TaxData.fromRawJson(String str) => TaxData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TaxData.fromJson(Map<String, dynamic> json) => TaxData(
        id: json["id"],
        businessId: json["business_id"],
        name: json["name"],
        amount: json["amount"],
        isTaxGroup: json["is_tax_group"],
        forTaxGroup: json["for_tax_group"],
        createdBy: json["created_by"],
        woocommerceTaxRateId: json["woocommerce_tax_rate_id"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "name": name,
        "amount": amount,
        "is_tax_group": isTaxGroup,
        "for_tax_group": forTaxGroup,
        "created_by": createdBy,
        "woocommerce_tax_rate_id": woocommerceTaxRateId,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
