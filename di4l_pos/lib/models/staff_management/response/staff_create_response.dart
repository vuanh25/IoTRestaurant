import 'dart:convert';
import 'package:di4l_pos/models/business_location/response/business_location.dart';

class StaffCreateResponse {
  StaffCreateResponse({
    this.roles,
    this.locations,
  });

  Map<String, dynamic>? roles;
  List<BusinessLocation>? locations;

  StaffCreateResponse copyWith({
    Map<String, dynamic>? roles,
    List<BusinessLocation>? locations,
  }) =>
      StaffCreateResponse(
        roles: roles ?? this.roles,
        locations: locations ?? this.locations,
      );

  factory StaffCreateResponse.fromRawJson(String str) =>
      StaffCreateResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StaffCreateResponse.fromJson(Map<String, dynamic> json) => StaffCreateResponse(
        roles: json["roles"],
        locations: json["locations"] == null
                  ? null
                  : List<BusinessLocation>.from(json["locations"].map((x) => BusinessLocation.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": roles,
        "locations": locations == null
            ? null
            : List<BusinessLocation>.from(locations!.map((x) => x.toJson())),
      };
}