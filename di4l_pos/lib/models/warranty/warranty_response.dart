import 'dart:convert';

class WarrantyResponse {
  WarrantyResponse({
    this.data,
  });

  List<Warranty>? data;

  WarrantyResponse copyWith({
    List<Warranty>? data,
  }) =>
      WarrantyResponse(
        data: data ?? this.data,
      );

  factory WarrantyResponse.fromRawJson(String str) =>
      WarrantyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WarrantyResponse.fromJson(Map<String, dynamic> json) =>
      WarrantyResponse(
        data: json["data"] == null
            ? null
            : List<Warranty>.from(
                json["data"].map((x) => Warranty?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class WarrantyUpdate {
  WarrantyUpdate({
    this.data,
  });

  Warranty? data;

  WarrantyUpdate copyWith({
    Warranty? data,
  }) =>
      WarrantyUpdate(
        data: data ?? this.data,
      );

  factory WarrantyUpdate.fromRawJson(String str) =>
      WarrantyUpdate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WarrantyUpdate.fromJson(Map<String, dynamic> json) => WarrantyUpdate(
        data: json["data"] == null ? null : Warranty?.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}

class Warranty {
  Warranty({
    this.id,
    this.businessId,
    this.name,
    this.description,
    this.duration,
    this.durationType,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? businessId;
  String? name;
  String? description;
  int? duration;
  String? durationType;
  String? createdAt;
  String? updatedAt;

  Warranty copyWith({
    int? id,
    int? businessId,
    String? name,
    String? description,
    int? duration,
    String? durationType,
    String? createdAt,
    String? updatedAt,
  }) =>
      Warranty(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        name: name ?? this.name,
        description: description ?? this.description,
        duration: duration ?? this.duration,
        durationType: durationType ?? this.durationType,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Warranty.fromRawJson(String str) =>
      Warranty.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Warranty.fromJson(Map<String, dynamic> json) => Warranty(
        id: json["id"],
        businessId: json["business_id"],
        name: json["name"],
        description: json["description"],
        duration: json["duration"],
        durationType:
            json["duration_type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "name": name,
        "description": description,
        "duration": duration,
        "duration_type": durationType,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
