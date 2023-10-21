import 'dart:convert';

import 'package:di4l_pos/models/branch/response/branch_response.dart';

class AddBranchResponse {
  AddBranchResponse({
    this.data,
  });

  Branch? data;

  AddBranchResponse copyWith({
    Branch? data,
  }) =>
      AddBranchResponse(
        data: data ?? this.data,
      );

  factory AddBranchResponse.fromRawJson(String str) =>
      AddBranchResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddBranchResponse.fromJson(Map<String, dynamic> json) =>
      AddBranchResponse(
        data: json["data"] == null ? null : Branch.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
