import 'dart:convert';

class UnitResponse {
  UnitResponse({
    this.data,
  });

  List<Unit>? data;

  UnitResponse copyWith({
    List<Unit>? data,
  }) =>
      UnitResponse(
        data: data ?? this.data,
      );

  factory UnitResponse.fromRawJson(String str) =>
      UnitResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UnitResponse.fromJson(Map<String, dynamic> json) => UnitResponse(
        data: json["data"] == null
            ? null
            : List<Unit>.from(json["data"].map((x) => Unit?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Unit {
  Unit({
    this.id,
    this.businessId,
    this.actualName,
    this.shortName,
    this.allowDecimal,
    this.baseUnitId,
    this.baseUnitMultiplier,
    this.createdBy,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? businessId;
  String? actualName;
  String? shortName;
  int? allowDecimal;
  dynamic baseUnitId;
  dynamic baseUnitMultiplier;
  int? createdBy;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Unit copyWith({
    int? id,
    int? businessId,
    String? actualName,
    String? shortName,
    int? allowDecimal,
    dynamic baseUnitId,
    dynamic baseUnitMultiplier,
    int? createdBy,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      Unit(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        actualName: actualName ?? this.actualName,
        shortName: shortName ?? this.shortName,
        allowDecimal: allowDecimal ?? this.allowDecimal,
        baseUnitId: baseUnitId ?? this.baseUnitId,
        baseUnitMultiplier: baseUnitMultiplier ?? this.baseUnitMultiplier,
        createdBy: createdBy ?? this.createdBy,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Unit.fromRawJson(String str) => Unit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        id: json["id"],
        businessId: json["business_id"],
        actualName: json["actual_name"],
        shortName: json["short_name"],
        allowDecimal:
            json["allow_decimal"],
        baseUnitId: json["base_unit_id"],
        baseUnitMultiplier: json["base_unit_multiplier"],
        createdBy: json["created_by"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "actual_name": actualName,
        "short_name": shortName,
        "allow_decimal": allowDecimal,
        "base_unit_id": baseUnitId,
        "base_unit_multiplier": baseUnitMultiplier,
        "created_by": createdBy,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
