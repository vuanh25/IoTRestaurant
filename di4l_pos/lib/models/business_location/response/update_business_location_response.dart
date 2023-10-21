import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'dart:convert';

class UpdateBusinessLocationResponse {
  UpdateBusinessLocationResponse({
    this.data,
  });

  BusinessLocation? data;

  UpdateBusinessLocationResponse copyWith({BusinessLocation? data}) =>
      UpdateBusinessLocationResponse(data: data ?? this.data);

  factory UpdateBusinessLocationResponse.fromRawJson(String str) =>
      UpdateBusinessLocationResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateBusinessLocationResponse.fromJson(Map<String, dynamic> json) =>
      UpdateBusinessLocationResponse(
        data: json["data"] == null
            ? null
            : BusinessLocation.fromJson(json),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : data!.toJson(),
      };
}
