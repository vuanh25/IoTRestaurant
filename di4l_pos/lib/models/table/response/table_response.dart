import 'dart:convert';

class TableResponse {
  TableResponse({
    this.data,
  });

  List<TableModel>? data;

  TableResponse copyWith({
    List<TableModel>? data,
  }) =>
      TableResponse(
        data: data ?? this.data,
      );

  factory TableResponse.fromRawJson(String str) =>
      TableResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TableResponse.fromJson(Map<String, dynamic> json) => TableResponse(
        data: json["data"] == null
            ? null
            : List<TableModel>.from(json["data"].map((x) => TableModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class TableModel {
  int? id;
  int? businessId;
  int? locationId;
  String? name;
  dynamic description;
  int? createdBy;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  TableModel({
    this.id,
    this.businessId,
    this.locationId,
    this.name,
    this.description,
    this.createdBy,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  TableModel copyWith({
    int? id,
    int? businessId,
    int? locationId,
    String? name,
    dynamic description,
    int? createdBy,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      TableModel(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        locationId: locationId ?? this.locationId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdBy: createdBy ?? this.createdBy,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'business_id': businessId,
        'location_id': locationId,
        'name': name,
        'description': description,
        'created_by': createdBy,
        'deleted_at': deletedAt,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
        id: json['id'] == null ? null : json["id"],
        businessId: json['business_id'],
        locationId: json['location_id'],
        name: json['name'],
        description: json['description'],
        createdBy: json['created_by'],
        deletedAt: json['deleted_at'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
      );

  String toRawJson() => json.encode(toJson());

  factory TableModel.fromRawJson(String str) => TableModel.fromJson(json.decode(str));
}
