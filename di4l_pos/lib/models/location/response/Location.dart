// ignore_for_file: prefer_if_null_operators, file_names

import 'dart:convert';

class Location {
  Location([
    this.province,
    this.district,
    this.commune,
    this.location
  ]);
  String? province;
  String? district;
  String? commune;
  String? location;

  Location copyWith({
    String? province,
    String? district,
    String? commune,
    String? location,
  }) => Location(
    province ?? this.province,
    district ?? this.district,
    commune ?? this.commune,
    location ?? this.location,
  );

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    json["province"] == null ? null : json["province"],
    json["district"] == null ? null : json["district"],
    json["commune"] == null ? null : json["commune"],
    json["location"] == null ? null : json["location"],
  );

  Map<String, dynamic> toJson() => {
    "province": province == null ? null : province,
    "district": district == null ? null : district,
    "commune": commune == null ? null : commune,
    "location": location == null ? null : location,
  };

}