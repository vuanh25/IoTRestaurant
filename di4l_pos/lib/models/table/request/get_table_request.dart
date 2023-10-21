import 'dart:convert';

class GetTableRequest {
  int? id;
  int? businessId;
  int? locationId;
  String? name;
  String? description;
  int? createdBy;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  GetTableRequest({
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

  GetTableRequest copyWith({
    int? id,
    int? businessId,
    int? locationId,
    String? name,
    String? description,
    int? createdBy,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      GetTableRequest(
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

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'businessId': businessId,
      'locationId': locationId,
      'name': name,
      'description': description,
      'createdBy': createdBy,
      'deletedAt': deletedAt,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory GetTableRequest.fromJson(Map<String, dynamic> json) {
    return GetTableRequest(
      id: json['id'] != null ? json['id'] as int : null,
      businessId: json['businessId'] != null ? json['businessId'] as int : null,
      locationId: json['locationId'] != null ? json['locationId'] as int : null,
      name: json['name'] != null ? json['name'] as String : null,
      description:
          json['description'] != null ? json['description'] as String : null,
      createdBy: json['createdBy'] != null ? json['createdBy'] as int : null,
      deletedAt: json['deletedAt'] != null ? json['deletedAt'] as String : null,
      createdAt: json['createdAt'] != null ? json['createdAt'] as String : null,
      updatedAt: json['updatedAt'] != null ? json['updatedAt'] as String : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory GetTableRequest.fromRawJson(String source) =>
      GetTableRequest.fromJson(json.decode(source) as Map<String, dynamic>);
}
