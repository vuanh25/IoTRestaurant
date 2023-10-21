import 'dart:convert';

class AddWarrantyRequest {
  String? name;
  String? description;
  int? duration;
  String? durationType;
  AddWarrantyRequest({
    this.name,
    this.description,
    this.duration,
    this.durationType,
  });

  AddWarrantyRequest copyWith({
    String? name,
    String? description,
    int? duration,
    String? durationType,
  }) =>
      AddWarrantyRequest(
        name: name ?? this.name,
        description: description ?? this.description,
        duration: duration ?? this.duration,
        durationType: durationType ?? this.durationType,
      );

  factory AddWarrantyRequest.fromRawJson(String str) =>
      AddWarrantyRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddWarrantyRequest.fromJson(Map<String, dynamic> json) =>
      AddWarrantyRequest(
        name: json["name"],
        description: json["description"],
        duration: json["duration"],
        durationType:
            json["duration_type"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "duration": duration,
        "duration_type": durationType,
      };
}
