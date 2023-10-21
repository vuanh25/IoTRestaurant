import 'dart:convert';

class AddProductResponse {
  AddProductResponse({
    this.data,
  });

  AddProduct? data;

  AddProductResponse copyWith({
    AddProduct? data,
  }) =>
      AddProductResponse(
        data: data ?? this.data,
      );

  factory AddProductResponse.fromRawJson(String str) =>
      AddProductResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddProductResponse.fromJson(Map<String, dynamic> json) =>
      AddProductResponse(
        data: json["data"] == null ? null : AddProduct.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}

class AddProduct {
  AddProduct({
    this.name,
    this.brandId,
    this.unitId,
    this.categoryId,
    this.tax,
    this.type,
    this.barcodeType,
    this.sku,
    this.alertQuantity,
    this.taxType,
    this.weight,
    this.productCustomField1,
    this.productCustomField2,
    this.productCustomField3,
    this.productCustomField4,
    this.productDescription,
    this.subUnitIds,
    this.businessId,
    this.createdBy,
    this.enableStock,
    this.notForSelling,
    this.image,
    this.warrantyId,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.imageUrl,
  });

  String? name;
  dynamic brandId;
  dynamic unitId;
  dynamic categoryId;
  String? tax;
  String? type;
  String? barcodeType;
  String? sku;
  dynamic alertQuantity;
  dynamic taxType;
  dynamic weight;
  dynamic productCustomField1;
  dynamic productCustomField2;
  dynamic productCustomField3;
  dynamic productCustomField4;
  dynamic productDescription;
  dynamic subUnitIds;
  int? businessId;
  int? createdBy;
  int? enableStock;
  int? notForSelling;
  dynamic image;
  dynamic warrantyId;
  String? updatedAt;
  String? createdAt;
  int? id;
  String? imageUrl;

  AddProduct copyWith({
    String? name,
    dynamic brandId,
    dynamic unitId,
    dynamic categoryId,
    String? tax,
    String? type,
    String? barcodeType,
    String? sku,
    dynamic alertQuantity,
    dynamic taxType,
    dynamic weight,
    dynamic productCustomField1,
    dynamic productCustomField2,
    dynamic productCustomField3,
    dynamic productCustomField4,
    dynamic productDescription,
    dynamic subUnitIds,
    int? businessId,
    int? createdBy,
    int? enableStock,
    int? notForSelling,
    dynamic image,
    dynamic warrantyId,
    String? updatedAt,
    String? createdAt,
    int? id,
    String? imageUrl,
  }) =>
      AddProduct(
        name: name ?? this.name,
        brandId: brandId ?? this.brandId,
        unitId: unitId ?? this.unitId,
        categoryId: categoryId ?? this.categoryId,
        tax: tax ?? this.tax,
        type: type ?? this.type,
        barcodeType: barcodeType ?? this.barcodeType,
        sku: sku ?? this.sku,
        alertQuantity: alertQuantity ?? this.alertQuantity,
        taxType: taxType ?? this.taxType,
        weight: weight ?? this.weight,
        productCustomField1: productCustomField1 ?? this.productCustomField1,
        productCustomField2: productCustomField2 ?? this.productCustomField2,
        productCustomField3: productCustomField3 ?? this.productCustomField3,
        productCustomField4: productCustomField4 ?? this.productCustomField4,
        productDescription: productDescription ?? this.productDescription,
        subUnitIds: subUnitIds ?? this.subUnitIds,
        businessId: businessId ?? this.businessId,
        createdBy: createdBy ?? this.createdBy,
        enableStock: enableStock ?? this.enableStock,
        notForSelling: notForSelling ?? this.notForSelling,
        image: image ?? this.image,
        warrantyId: warrantyId ?? this.warrantyId,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        imageUrl: imageUrl ?? this.imageUrl,
      );

  factory AddProduct.fromRawJson(String str) =>
      AddProduct.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddProduct.fromJson(Map<String, dynamic> json) => AddProduct(
        name: json["name"],
        brandId: json["brand_id"],
        unitId: json["unit_id"],
        categoryId: json["category_id"],
        tax: json["tax"],
        type: json["type"],
        barcodeType: json["barcode_type"],
        sku: json["sku"],
        alertQuantity:
            json["alert_quantity"],
        taxType: json["tax_type"],
        weight: json["weight"],
        productCustomField1: json["product_custom_field1"],
        productCustomField2: json["product_custom_field2"],
        productCustomField3: json["product_custom_field3"],
        productCustomField4: json["product_custom_field4"],
        productDescription: json["product_description"],
        subUnitIds: json["sub_unit_ids"],
        businessId: json["business_id"],
        createdBy: json["created_by"],
        enableStock: json["enable_stock"],
        notForSelling:
            json["not_for_selling"],
        image: json["image"],
        warrantyId: json["warranty_id"],
        updatedAt: json["updated_at"],
        createdAt: json["created_at"],
        id: json["id"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'brand_id': brandId,
        'unit_id': unitId,
        'category_id': categoryId,
        'tax': tax,
        'type': type,
        'barcode_type': barcodeType,
        'sku': sku,
        'alert_quantity': alertQuantity,
        'tax_type': taxType,
        'weight': weight,
        'product_custom_field1':
            productCustomField1,
        'product_custom_field2':
            productCustomField2,
        'product_custom_field3':
            productCustomField3,
        'product_custom_field4':
            productCustomField4,
        // ignore: unnecessary_this
        'product_description': productDescription ?? this.productDescription,
        'sub_unit_ids': subUnitIds,
        'business_id': businessId,
        'created_by': createdBy,
        'enable_stock': enableStock,
        'not_for_selling': notForSelling,
        'image': image,
        'warranty_id': warrantyId,
        'updated_at': updatedAt,
        'created_at': createdAt,
        'id': id,
        'image_url': imageUrl,
      };
}
