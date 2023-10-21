import 'dart:convert';

class PriceResponse {
  PriceResponse({
    this.data,
  });

  List<Price>? data;

  PriceResponse copyWith({
    List<Price>? data,
  }) =>
      PriceResponse(
        data: data ?? this.data,
      );

  factory PriceResponse.fromRawJson(String str) =>
      PriceResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PriceResponse.fromJson(Map<String, dynamic> json) => PriceResponse(
        data: json["data"] == null
            ? null
            : List<Price>.from(json["data"].map((x) => Price.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Price {
  Price({
    this.id,
    this.name,
    this.description,
    this.businessId,
    this.isActive,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  dynamic description;
  int? businessId;
  int? isActive;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Price copyWith({
    int? id,
    String? name,
    dynamic description,
    int? businessId,
    int? isActive,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      Price(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        businessId: businessId ?? this.businessId,
        isActive: isActive ?? this.isActive,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Price.fromRawJson(String str) => Price.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        businessId: json["business_id"],
        isActive: json["is_active"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "business_id": businessId,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
