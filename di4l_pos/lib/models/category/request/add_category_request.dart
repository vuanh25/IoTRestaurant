import 'dart:convert';

class AddCategoryRequest {
  String? name;
  String? shortCode;
  String? categoryType;
  String? description;
  int? addSubCat;
  int? parentId;

  AddCategoryRequest({
    required this.name,
    this.shortCode,
    this.categoryType,
    this.description,
    this.addSubCat,
    this.parentId,
  });

  AddCategoryRequest copyWith({
    String? name,
    String? shortCode,
    String? categoryType,
    String? description,
    int? addSubCat,
    int? parentId,
  }) =>
      AddCategoryRequest(
        name: name ?? this.name,
        shortCode: shortCode ?? this.shortCode ?? '',
        categoryType: categoryType ?? this.categoryType ?? '',
        description: description ?? this.description ?? '',
        addSubCat: addSubCat ?? this.addSubCat,
        parentId: parentId ?? this.parentId,
      );

  factory AddCategoryRequest.fromRawJson(String str) =>
      AddCategoryRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCategoryRequest.fromJson(Map<String, dynamic> json) =>
      AddCategoryRequest(
        name: json['name'],
        shortCode: json['short_code'],
        categoryType:
            json['category_type'],
        description: json['description'],
        addSubCat:
            json['add_as_sub_cat'],
        parentId: json['parent_id'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'short_code': shortCode,
        'category_type': categoryType,
        'description': description,
        'add_as_sub_cat': addSubCat,
        'parent_id': parentId
      };
}
