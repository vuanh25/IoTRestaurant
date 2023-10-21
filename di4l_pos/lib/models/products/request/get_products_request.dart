import 'dart:convert';

class GetProductsRequest {
  GetProductsRequest({
    this.brandId,
    this.categoryId,
    this.subCategoryId,
    this.locationId,
    this.sellingPriceGroup,
    this.name,
    this.sku,
    this.perPage,
  });

  String? brandId;
  String? categoryId;
  String? subCategoryId;
  String? locationId;
  String? sellingPriceGroup;
  String? name;
  String? sku;
  String? perPage;

  GetProductsRequest copyWith({
    String? brandId,
    String? categoryId,
    String? subCategoryId,
    String? locationId,
    String? sellingPriceGroup,
    String? name,
    String? sku,
    String? perPage,
  }) =>
      GetProductsRequest(
        brandId: brandId ?? this.brandId,
        categoryId: categoryId ?? this.categoryId,
        subCategoryId: subCategoryId ?? this.subCategoryId,
        locationId: locationId ?? this.locationId,
        sellingPriceGroup: sellingPriceGroup ?? this.sellingPriceGroup,
        name: name ?? this.name,
        sku: sku ?? this.sku,
        perPage: perPage ?? this.perPage,
      );

  factory GetProductsRequest.fromRawJson(String str) =>
      GetProductsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetProductsRequest.fromJson(Map<String, dynamic> json) =>
      GetProductsRequest(
        brandId: json["brand_id"],
        categoryId: json["category_id"],
        subCategoryId: json["sub_category_id"],
        locationId: json["location_id"],
        sellingPriceGroup: json["selling_price_group"],
        name: json["name"],
        sku: json["sku"],
        perPage: json["per_page"],
      );

  Map<String, dynamic> toJson() => {
        "brand_id": brandId,
        "category_id": categoryId,
        "sub_category_id": subCategoryId,
        "location_id": locationId,
        "selling_price_group": sellingPriceGroup,
        "name": name,
        "sku": sku,
        "per_page": perPage,
      };
}
