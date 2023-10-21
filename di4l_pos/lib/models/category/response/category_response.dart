// ignore_for_file: must_be_immutable

import 'dart:convert';
import 'package:equatable/equatable.dart';

class CategoryResponse {
  CategoryResponse({
    this.data,
  });

  List<CategoryModel>? data;

  CategoryResponse copyWith({
    List<CategoryModel>? data,
  }) =>
      CategoryResponse(
        data: data ?? this.data,
      );

  factory CategoryResponse.fromRawJson(String str) =>
      CategoryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      CategoryResponse(
        data: json["data"] == null
            ? null
            : List<CategoryModel>.from(
                json["data"].map((x) => CategoryModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CategoryModel extends Equatable {
  CategoryModel({
    this.id,
    this.name,
    this.businessId,
    this.shortCode,
    this.parentId,
    this.createdBy,
    this.categoryType,
    this.description,
    this.slug,
    this.woocommerceCatId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.subCategories,
  });

  int? id;
  String? name;
  int? businessId;
  dynamic shortCode;
  int? parentId;
  int? createdBy;
  String? categoryType;
  dynamic description;
  dynamic slug;
  dynamic woocommerceCatId;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  List<CategoryModel>? subCategories;

  CategoryModel copyWith({
    int? id,
    String? name,
    int? businessId,
    dynamic shortCode,
    int? parentId,
    int? createdBy,
    String? categoryType,
    dynamic description,
    dynamic slug,
    dynamic woocommerceCatId,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    List<CategoryModel>? subCategories,
  }) =>
      CategoryModel(
        id: id ?? this.id,
        name: name ?? this.name,
        businessId: businessId ?? this.businessId,
        shortCode: shortCode ?? this.shortCode,
        parentId: parentId ?? this.parentId,
        createdBy: createdBy ?? this.createdBy,
        categoryType: categoryType ?? this.categoryType,
        description: description ?? this.description,
        slug: slug ?? this.slug,
        woocommerceCatId: woocommerceCatId ?? this.woocommerceCatId,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        subCategories: subCategories ?? this.subCategories,
      );

  factory CategoryModel.fromRawJson(String str) =>
      CategoryModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        name: json["name"],
        businessId: json["business_id"],
        shortCode: json["short_code"],
        parentId: json["parent_id"],
        createdBy: json["created_by"],
        categoryType:
            json["category_type"],
        description: json["description"],
        slug: json["slug"],
        woocommerceCatId: json["woocommerce_cat_id"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        subCategories: json["sub_categories"] == null
            ? null
            : List<CategoryModel>.from(
                json["sub_categories"].map((x) => CategoryModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "business_id": businessId,
        "short_code": shortCode,
        "parent_id": parentId,
        "created_by": createdBy,
        "category_type": categoryType,
        "description": description,
        "slug": slug,
        "woocommerce_cat_id": woocommerceCatId,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "sub_categories": subCategories == null
            ? null
            : List<dynamic>.from(subCategories!.map((x) => x.toJson())),
      };
  @override
  List<Object?> get props {
    return [
      id,
      name,
      businessId,
      shortCode,
      parentId,
      createdBy,
      categoryType,
      description,
      slug,
      woocommerceCatId,
      deletedAt,
      createdAt,
      updatedAt,
      subCategories
    ];
  }

  @override
  bool get stringify => true;
}
