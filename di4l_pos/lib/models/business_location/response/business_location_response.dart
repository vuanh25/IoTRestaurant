import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'dart:convert';

class BusinessLocationResponse {
  BusinessLocationResponse({
    this.data,
  });

  List<BusinessLocation>? data;

  BusinessLocationResponse copyWith({List<BusinessLocation>? data}) =>
      BusinessLocationResponse(data: data ?? this.data);

  factory BusinessLocationResponse.fromRawJson(String str) =>
      BusinessLocationResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BusinessLocationResponse.fromJson(Map<String, dynamic> json) =>
      BusinessLocationResponse(
        data: json["data"] == null
            ? null
            : List<BusinessLocation>.from(
                json["data"].map((x) => BusinessLocation.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}
