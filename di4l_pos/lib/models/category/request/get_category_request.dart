import 'dart:convert';

class GetCategoryRequest {
  GetCategoryRequest({
    this.type,
  });

  String? type;

  GetCategoryRequest copyWith({
    String? type,
  }) =>
      GetCategoryRequest(
        type: type ?? this.type,
      );

  factory GetCategoryRequest.fromRawJson(String str) =>
      GetCategoryRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetCategoryRequest.fromJson(Map<String, dynamic> json) =>
      GetCategoryRequest(
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
      };
}
