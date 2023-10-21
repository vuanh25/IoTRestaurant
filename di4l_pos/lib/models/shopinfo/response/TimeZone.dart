// ignore_for_file: file_names

import 'dart:convert';

class TimeZoneResponse {
  TimeZoneResponse({
    this.data,
  });

  List<TimeZone>? data;

  TimeZoneResponse copyWith({
    List<TimeZone>? data,
  }) =>
      TimeZoneResponse(
        data: data ?? this.data,
      );

  factory TimeZoneResponse.fromRawJson(String str) =>
      TimeZoneResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TimeZoneResponse.fromJson(Map<String, dynamic> json) => TimeZoneResponse(
        data: json["data"] == null
            ? null
            : List<TimeZone>.from(json["data"].map((x) => TimeZone.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}
class TimeZone{
  String? name;

  TimeZone({this.name});

  TimeZone copyWith({
    String? name,
  }) =>
      TimeZone(
        name: name ?? this.name,
      );

  factory TimeZone.fromRawJson(String str) => TimeZone.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TimeZone.fromJson(Map<String, dynamic> json) => TimeZone(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}