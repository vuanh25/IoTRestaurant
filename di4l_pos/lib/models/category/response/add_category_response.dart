import 'dart:convert';

import 'package:di4l_pos/models/category/response/category_response.dart';

class AddCategoryResponse {
  AddCategoryResponse({
    this.data,
  });

  CategoryModel? data;

  AddCategoryResponse copyWith({
    CategoryModel? data,
  }) =>
      AddCategoryResponse(
        data: data ?? this.data,
      );

  factory AddCategoryResponse.fromRawJson(String str) =>
      AddCategoryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCategoryResponse.fromJson(Map<String, dynamic> json) =>
      AddCategoryResponse(
        data:
            json["data"] == null ? null : CategoryModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
