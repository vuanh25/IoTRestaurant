import 'dart:convert';

class BranchResponse {
  BranchResponse({
    this.data,
  });

  List<Branch>? data;

  BranchResponse copyWith({
    List<Branch>? data,
  }) =>
      BranchResponse(
        data: data ?? this.data,
      );

  factory BranchResponse.fromRawJson(String str) =>
      BranchResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BranchResponse.fromJson(Map<String, dynamic> json) => BranchResponse(
        data: json["data"] == null
            ? null
            : List<Branch>.from(json["data"].map((x) => Branch.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Branch {
  Branch({
    this.id,
    this.businessId,
    this.name,
    this.description,
    this.createdBy,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? businessId;
  String? name;
  dynamic description;
  int? createdBy;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Branch copyWith({
    int? id,
    int? businessId,
    String? name,
    dynamic description,
    int? createdBy,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      Branch(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdBy: createdBy ?? this.createdBy,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Branch.fromRawJson(String str) => Branch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        id: json["id"],
        businessId: json["business_id"],
        name: json["name"],
        description: json["description"],
        createdBy: json["created_by"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "name": name,
        "description": description,
        "created_by": createdBy,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
