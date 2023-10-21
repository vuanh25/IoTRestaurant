// import 'dart:convert';
// import 'package:di4l_pos/models/products/response/product_response.dart';

class ModifierResponse {
  List<Modifier>? data;

  ModifierResponse({this.data});

  ModifierResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Modifier>[];
      json['data'].forEach((v) {
        data!.add(Modifier.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Modifier {
  int? id;
  String? name;
  dynamic slug;
  int? businessId;
  int? featured;
  String? type;
  dynamic unitId;
  dynamic subUnitIds;
  dynamic brandId;
  dynamic categoryId;
  dynamic subCategoryId;
  dynamic tax;
  String? taxType;
  int? enableStock;
  String? alertQuantity;
  String? sku;
  String? barcodeType;
  dynamic expiryPeriod;
  dynamic expiryPeriodType;
  int? enableSrNo;
  dynamic weight;
  dynamic productCustomField1;
  dynamic productCustomField2;
  dynamic productCustomField3;
  dynamic productCustomField4;
  dynamic image;
  dynamic woocommerceMediaId;
  dynamic productDescription;
  int? createdBy;
  dynamic woocommerceProductId;
  int? woocommerceDisableSync;
  dynamic warrantyId;
  int? isInactive;
  dynamic repairModelId;
  int? notForSelling;
  dynamic metaTitle;
  dynamic metaKeyword;
  dynamic metaDescription;
  String? createdAt;
  String? updatedAt;
  String? imageUrl;
  List<Variations>? variations;
  List<ModifierProducts>? modifierProducts;
  List<Media>? media;

  Modifier(
      {this.id,
      this.name,
      this.slug,
      this.businessId,
      this.featured,
      this.type,
      this.unitId,
      this.subUnitIds,
      this.brandId,
      this.categoryId,
      this.subCategoryId,
      this.tax,
      this.taxType,
      this.enableStock,
      this.alertQuantity,
      this.sku,
      this.barcodeType,
      this.expiryPeriod,
      this.expiryPeriodType,
      this.enableSrNo,
      this.weight,
      this.productCustomField1,
      this.productCustomField2,
      this.productCustomField3,
      this.productCustomField4,
      this.image,
      this.woocommerceMediaId,
      this.productDescription,
      this.createdBy,
      this.woocommerceProductId,
      this.woocommerceDisableSync,
      this.warrantyId,
      this.isInactive,
      this.repairModelId,
      this.notForSelling,
      this.metaTitle,
      this.metaKeyword,
      this.metaDescription,
      this.createdAt,
      this.updatedAt,
      this.imageUrl,
      this.variations,
      this.modifierProducts,
      this.media});

  Modifier.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    businessId = json['business_id'];
    featured = json['featured'];
    type = json['type'];
    unitId = json['unit_id'];
    subUnitIds = json['sub_unit_ids'];
    brandId = json['brand_id'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    tax = json['tax'];
    taxType = json['tax_type'];
    enableStock = json['enable_stock'];
    alertQuantity = json['alert_quantity'];
    sku = json['sku'];
    barcodeType = json['barcode_type'];
    expiryPeriod = json['expiry_period'];
    expiryPeriodType = json['expiry_period_type'];
    enableSrNo = json['enable_sr_no'];
    weight = json['weight'];
    productCustomField1 = json['product_custom_field1'];
    productCustomField2 = json['product_custom_field2'];
    productCustomField3 = json['product_custom_field3'];
    productCustomField4 = json['product_custom_field4'];
    image = json['image'];
    woocommerceMediaId = json['woocommerce_media_id'];
    productDescription = json['product_description'];
    createdBy = json['created_by'];
    woocommerceProductId = json['woocommerce_product_id'];
    woocommerceDisableSync = json['woocommerce_disable_sync'];
    warrantyId = json['warranty_id'];
    isInactive = json['is_inactive'];
    repairModelId = json['repair_model_id'];
    notForSelling = json['not_for_selling'];
    metaTitle = json['meta_title'];
    metaKeyword = json['meta_keyword'];
    metaDescription = json['meta_description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageUrl = json['image_url'];
    if (json['variations'] != null) {
      variations = <Variations>[];
      json['variations'].forEach((v) {
        variations!.add(Variations.fromJson(v));
      });
    }
    if (json['modifier_products'] != null) {
      modifierProducts = <ModifierProducts>[];
      json['modifier_products'].forEach((v) {
        modifierProducts!.add(ModifierProducts.fromJson(v));
      });
    }
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['business_id'] = businessId;
    data['featured'] = featured;
    data['type'] = type;
    data['unit_id'] = unitId;
    data['sub_unit_ids'] = subUnitIds;
    data['brand_id'] = brandId;
    data['category_id'] = categoryId;
    data['sub_category_id'] = subCategoryId;
    data['tax'] = tax;
    data['tax_type'] = taxType;
    data['enable_stock'] = enableStock;
    data['alert_quantity'] = alertQuantity;
    data['sku'] = sku;
    data['barcode_type'] = barcodeType;
    data['expiry_period'] = expiryPeriod;
    data['expiry_period_type'] = expiryPeriodType;
    data['enable_sr_no'] = enableSrNo;
    data['weight'] = weight;
    data['product_custom_field1'] = productCustomField1;
    data['product_custom_field2'] = productCustomField2;
    data['product_custom_field3'] = productCustomField3;
    data['product_custom_field4'] = productCustomField4;
    data['image'] = image;
    data['woocommerce_media_id'] = woocommerceMediaId;
    data['product_description'] = productDescription;
    data['created_by'] = createdBy;
    data['woocommerce_product_id'] = woocommerceProductId;
    data['woocommerce_disable_sync'] = woocommerceDisableSync;
    data['warranty_id'] = warrantyId;
    data['is_inactive'] = isInactive;
    data['repair_model_id'] = repairModelId;
    data['not_for_selling'] = notForSelling;
    data['meta_title'] = metaTitle;
    data['meta_keyword'] = metaKeyword;
    data['meta_description'] = metaDescription;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image_url'] = imageUrl;
    if (variations != null) {
      data['variations'] = variations!.map((v) => v.toJson()).toList();
    }
    if (modifierProducts != null) {
      data['modifier_products'] =
          modifierProducts!.map((v) => v.toJson()).toList();
    }
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Variations {
  int? id;
  String? name;
  int? productId;
  String? subSku;
  int? productVariationId;
  dynamic woocommerceVariationId;
  dynamic variationValueId;
  String? defaultPurchasePrice;
  String? dppIncTax;
  String? profitPercent;
  String? defaultSellPrice;
  String? sellPriceIncTax;
  String? regularPrice;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  dynamic comboVariations;

  Variations(
      {this.id,
      this.name,
      this.productId,
      this.subSku,
      this.productVariationId,
      this.woocommerceVariationId,
      this.variationValueId,
      this.defaultPurchasePrice,
      this.dppIncTax,
      this.profitPercent,
      this.defaultSellPrice,
      this.sellPriceIncTax,
      this.regularPrice,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.comboVariations});

  Variations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    productId = json['product_id'];
    subSku = json['sub_sku'];
    productVariationId = json['product_variation_id'];
    woocommerceVariationId = json['woocommerce_variation_id'];
    variationValueId = json['variation_value_id'];
    defaultPurchasePrice = json['default_purchase_price'];
    dppIncTax = json['dpp_inc_tax'];
    profitPercent = json['profit_percent'];
    defaultSellPrice = json['default_sell_price'];
    sellPriceIncTax = json['sell_price_inc_tax'];
    regularPrice = json['regular_price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    comboVariations = json['combo_variations'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['product_id'] = productId;
    data['sub_sku'] = subSku;
    data['product_variation_id'] = productVariationId;
    data['woocommerce_variation_id'] = woocommerceVariationId;
    data['variation_value_id'] = variationValueId;
    data['default_purchase_price'] = defaultPurchasePrice;
    data['dpp_inc_tax'] = dppIncTax;
    data['profit_percent'] = profitPercent;
    data['default_sell_price'] = defaultSellPrice;
    data['sell_price_inc_tax'] = sellPriceIncTax;
    data['regular_price'] = regularPrice;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    data['combo_variations'] = comboVariations;
    return data;
  }
}

class ModifierProducts {
  int? id;
  String? name;
  String? slug;
  int? businessId;
  int? featured;
  String? type;
  int? unitId;
  dynamic subUnitIds;
  dynamic brandId;
  int? categoryId;
  dynamic subCategoryId;
  dynamic tax;
  String? taxType;
  int? enableStock;
  String? alertQuantity;
  String? sku;
  String? barcodeType;
  dynamic expiryPeriod;
  dynamic expiryPeriodType;
  int? enableSrNo;
  dynamic weight;
  dynamic productCustomField1;
  dynamic productCustomField2;
  dynamic productCustomField3;
  dynamic productCustomField4;
  dynamic image;
  dynamic woocommerceMediaId;
  dynamic productDescription;
  int? createdBy;
  dynamic woocommerceProductId;
  int? woocommerceDisableSync;
  dynamic warrantyId;
  int? isInactive;
  dynamic repairModelId;
  int? notForSelling;
  dynamic metaTitle;
  dynamic metaKeyword;
  dynamic metaDescription;
  String? createdAt;
  String? updatedAt;
  String? imageUrl;
  Pivot? pivot;
  List<Media>? media;

  ModifierProducts(
      {this.id,
      this.name,
      this.slug,
      this.businessId,
      this.featured,
      this.type,
      this.unitId,
      this.subUnitIds,
      this.brandId,
      this.categoryId,
      this.subCategoryId,
      this.tax,
      this.taxType,
      this.enableStock,
      this.alertQuantity,
      this.sku,
      this.barcodeType,
      this.expiryPeriod,
      this.expiryPeriodType,
      this.enableSrNo,
      this.weight,
      this.productCustomField1,
      this.productCustomField2,
      this.productCustomField3,
      this.productCustomField4,
      this.image,
      this.woocommerceMediaId,
      this.productDescription,
      this.createdBy,
      this.woocommerceProductId,
      this.woocommerceDisableSync,
      this.warrantyId,
      this.isInactive,
      this.repairModelId,
      this.notForSelling,
      this.metaTitle,
      this.metaKeyword,
      this.metaDescription,
      this.createdAt,
      this.updatedAt,
      this.imageUrl,
      this.pivot,
      this.media});

  ModifierProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    businessId = json['business_id'];
    featured = json['featured'];
    type = json['type'];
    unitId = json['unit_id'];
    subUnitIds = json['sub_unit_ids'];
    brandId = json['brand_id'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    tax = json['tax'];
    taxType = json['tax_type'];
    enableStock = json['enable_stock'];
    alertQuantity = json['alert_quantity'];
    sku = json['sku'];
    barcodeType = json['barcode_type'];
    expiryPeriod = json['expiry_period'];
    expiryPeriodType = json['expiry_period_type'];
    enableSrNo = json['enable_sr_no'];
    weight = json['weight'];
    productCustomField1 = json['product_custom_field1'];
    productCustomField2 = json['product_custom_field2'];
    productCustomField3 = json['product_custom_field3'];
    productCustomField4 = json['product_custom_field4'];
    image = json['image'];
    woocommerceMediaId = json['woocommerce_media_id'];
    productDescription = json['product_description'];
    createdBy = json['created_by'];
    woocommerceProductId = json['woocommerce_product_id'];
    woocommerceDisableSync = json['woocommerce_disable_sync'];
    warrantyId = json['warranty_id'];
    isInactive = json['is_inactive'];
    repairModelId = json['repair_model_id'];
    notForSelling = json['not_for_selling'];
    metaTitle = json['meta_title'];
    metaKeyword = json['meta_keyword'];
    metaDescription = json['meta_description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageUrl = json['image_url'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['business_id'] = businessId;
    data['featured'] = featured;
    data['type'] = type;
    data['unit_id'] = unitId;
    data['sub_unit_ids'] = subUnitIds;
    data['brand_id'] = brandId;
    data['category_id'] = categoryId;
    data['sub_category_id'] = subCategoryId;
    data['tax'] = tax;
    data['tax_type'] = taxType;
    data['enable_stock'] = enableStock;
    data['alert_quantity'] = alertQuantity;
    data['sku'] = sku;
    data['barcode_type'] = barcodeType;
    data['expiry_period'] = expiryPeriod;
    data['expiry_period_type'] = expiryPeriodType;
    data['enable_sr_no'] = enableSrNo;
    data['weight'] = weight;
    data['product_custom_field1'] = productCustomField1;
    data['product_custom_field2'] = productCustomField2;
    data['product_custom_field3'] = productCustomField3;
    data['product_custom_field4'] = productCustomField4;
    data['image'] = image;
    data['woocommerce_media_id'] = woocommerceMediaId;
    data['product_description'] = productDescription;
    data['created_by'] = createdBy;
    data['woocommerce_product_id'] = woocommerceProductId;
    data['woocommerce_disable_sync'] = woocommerceDisableSync;
    data['warranty_id'] = warrantyId;
    data['is_inactive'] = isInactive;
    data['repair_model_id'] = repairModelId;
    data['not_for_selling'] = notForSelling;
    data['meta_title'] = metaTitle;
    data['meta_keyword'] = metaKeyword;
    data['meta_description'] = metaDescription;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image_url'] = imageUrl;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pivot {
  int? modifierSetId;
  int? productId;

  Pivot({this.modifierSetId, this.productId});

  Pivot.fromJson(Map<String, dynamic> json) {
    modifierSetId = json['modifier_set_id'];
    productId = json['product_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['modifier_set_id'] = modifierSetId;
    data['product_id'] = productId;
    return data;
  }
}

class Media {
  int? id;
  int? businessId;
  String? fileName;
  dynamic description;
  int? uploadedBy;
  String? modelType;
  dynamic woocommerceMediaId;
  dynamic modelMediaType;
  int? modelId;
  String? createdAt;
  String? updatedAt;
  String? displayName;
  String? displayUrl;

  Media(
      {this.id,
      this.businessId,
      this.fileName,
      this.description,
      this.uploadedBy,
      this.modelType,
      this.woocommerceMediaId,
      this.modelMediaType,
      this.modelId,
      this.createdAt,
      this.updatedAt,
      this.displayName,
      this.displayUrl});

  Media.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    fileName = json['file_name'];
    description = json['description'];
    uploadedBy = json['uploaded_by'];
    modelType = json['model_type'];
    woocommerceMediaId = json['woocommerce_media_id'];
    modelMediaType = json['model_media_type'];
    modelId = json['model_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    displayName = json['display_name'];
    displayUrl = json['display_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['file_name'] = fileName;
    data['description'] = description;
    data['uploaded_by'] = uploadedBy;
    data['model_type'] = modelType;
    data['woocommerce_media_id'] = woocommerceMediaId;
    data['model_media_type'] = modelMediaType;
    data['model_id'] = modelId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['display_name'] = displayName;
    data['display_url'] = displayUrl;
    return data;
  }
}


// class ModifierSetResponse {
//   ModifierSetResponse({
//     this.data,
//   });

//   List<ModifierSet>? data;

//   ModifierSetResponse copyWith({
//     List<ModifierSet>? data,
//   }) =>
//       ModifierSetResponse(
//         data: data ?? this.data,
//       );

//   factory ModifierSetResponse.fromRawJson(String str) =>
//       ModifierSetResponse.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory ModifierSetResponse.fromJson(Map<String, dynamic> json) =>
//       ModifierSetResponse(
//         data: json["data"] == null
//             ? null
//             : List<ModifierSet>.from(
//                 json["data"].map((x) => ModifierSet.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data == null
//             ? null
//             : List<dynamic>.from(data!.map((x) => x.toJson())),
//       };
// }

// class ModifierSet {
//   ModifierSet({
//     this.id,
//     this.name,
//     this.slug,
//     this.businessId,
//     this.featured,
//     this.type,
//     this.unitId,
//     this.subUnitIds,
//     this.brandId,
//     this.categoryId,
//     this.subCategoryId,
//     this.tax,
//     this.taxType,
//     this.enableStock,
//     this.alertQuantity,
//     this.sku,
//     this.barcodeType,
//     this.expiryPeriod,
//     this.expiryPeriodType,
//     this.enableSrNo,
//     this.weight,
//     this.productCustomField1,
//     this.productCustomField2,
//     this.productCustomField3,
//     this.productCustomField4,
//     this.image,
//     this.woocommerceMediaId,
//     this.productDescription,
//     this.createdBy,
//     this.woocommerceProductId,
//     this.woocommerceDisableSync,
//     this.warrantyId,
//     this.isInactive,
//     this.repairModelId,
//     this.notForSelling,
//     this.metaTitle,
//     this.metaKeyword,
//     this.metaDescription,
//     this.createdAt,
//     this.updatedAt,
//     this.variations,
//     this.imageUrl,
//     this.modifierProducts,
//     this.media,
//   });

//   int? id;
//   String? name;
//   int? businessId;
//   int? featured;
//   String? type;
//   dynamic subUnitIds;
//   int? enableStock;
//   dynamic alertQuantity;
//   String? sku;
//   String? barcodeType;
//   dynamic expiryPeriod;
//   dynamic expiryPeriodType;
//   int? enableSrNo;
//   dynamic weight;
//   dynamic productCustomField1;
//   dynamic productCustomField2;
//   dynamic productCustomField3;
//   dynamic productCustomField4;
//   dynamic image;
//   dynamic woocommerceMediaId;
//   dynamic productDescription;
//   int? createdBy;
//   dynamic woocommerceProductId;
//   int? woocommerceDisableSync;
//   dynamic warrantyId;
//   bool? isInactive;
//   dynamic repairModelId;
//   int? notForSelling;
//   String? imageUrl;
//   dynamic subCategoryId;
//   dynamic slug;
//   int? brandId;
//   int? unitId;
//   int? categoryId;
//   List<dynamic>? media;
//   List<Product>? modifierProducts;
//   List<VariationModel>? variations;
//   String? updatedAt;
//   String? createdAt;
//   String? metaDescription;
//   dynamic tax;
//   String? taxType;
//   String? metaTitle;
//   String? metaKeyword;

//   ModifierSet copyWith({
//     int? id,
//     String? name,
//     dynamic slug,
//     int? businessId,
//     int? featured,
//     int? brandId,
//     int? unitId,
//     int? categoryId,
//     dynamic subCategoryId,
//     String? type,
//     dynamic subUnitIds,
//     dynamic tax,
//     String? taxType,
//     int? enableStock,
//     dynamic alertQuantity,
//     String? sku,
//     String? barcodeType,
//     dynamic expiryPeriod,
//     dynamic expiryPeriodType,
//     int? enableSrNo,
//     dynamic weight,
//     dynamic productCustomField1,
//     dynamic productCustomField2,
//     dynamic productCustomField3,
//     dynamic productCustomField4,
//     dynamic image,
//     dynamic woocommerceMediaId,
//     dynamic productDescription,
//     int? createdBy,
//     dynamic woocommerceProductId,
//     int? woocommerceDisableSync,
//     dynamic warrantyId,
//     bool? isInactive,
//     dynamic repairModelId,
//     int? notForSelling,
//     String? metaTitle,
//     String? metaKeyword,
//     String? metaDescription,
//     String? createdAt,
//     String? updatedAt,
//     String? imageUrl,
//     List<VariationModel>? variations,
//     List<Product>? modifierProducts,
//     List<dynamic>? media,
//   }) =>
//       ModifierSet(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         slug: slug ?? this.slug,
//         businessId: businessId ?? this.businessId,
//         featured: featured ?? this.featured,
//         type: type ?? this.type,
//         brandId: brandId ?? this.brandId,
//         unitId: unitId ?? this.unitId,
//         categoryId: categoryId ?? this.categoryId,
//         subCategoryId: subCategoryId ?? this.subCategoryId,
//         subUnitIds: subUnitIds ?? this.subUnitIds,
//         tax: tax ?? this.tax,
//         taxType: taxType ?? this.taxType,
//         enableStock: enableStock ?? this.enableStock,
//         alertQuantity: alertQuantity ?? this.alertQuantity,
//         sku: sku ?? this.sku,
//         barcodeType: barcodeType ?? this.barcodeType,
//         expiryPeriod: expiryPeriod ?? this.expiryPeriod,
//         expiryPeriodType: expiryPeriodType ?? this.expiryPeriodType,
//         enableSrNo: enableSrNo ?? this.enableSrNo,
//         weight: weight ?? this.weight,
//         productCustomField1: productCustomField1 ?? this.productCustomField1,
//         productCustomField2: productCustomField2 ?? this.productCustomField2,
//         productCustomField3: productCustomField3 ?? this.productCustomField3,
//         productCustomField4: productCustomField4 ?? this.productCustomField4,
//         image: image ?? this.image,
//         woocommerceMediaId: woocommerceMediaId ?? this.woocommerceMediaId,
//         productDescription: productDescription ?? this.productDescription,
//         createdBy: createdBy ?? this.createdBy,
//         woocommerceProductId: woocommerceProductId ?? this.woocommerceProductId,
//         woocommerceDisableSync:
//             woocommerceDisableSync ?? this.woocommerceDisableSync,
//         warrantyId: warrantyId ?? this.warrantyId,
//         isInactive: isInactive ?? this.isInactive,
//         repairModelId: repairModelId ?? this.repairModelId,
//         notForSelling: notForSelling ?? this.notForSelling,
//         metaTitle: metaTitle ?? this.metaTitle,
//         metaKeyword: metaKeyword ?? this.metaKeyword,
//         metaDescription: metaDescription ?? this.metaDescription,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         variations: variations ?? this.variations,
//         imageUrl: imageUrl ?? this.imageUrl,
//         modifierProducts: modifierProducts ?? this.modifierProducts,
//         media: media ?? this.media,
//       );

//   factory ModifierSet.fromRawJson(String str) =>
//       ModifierSet.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory ModifierSet.fromJson(Map<String, dynamic> json) => ModifierSet(
//         id: json["id"],
//         name: json["name"],
//         slug: json['slug'] == null ? null : json["slug"],
//         featured: json['featured'] == null ? null : json["featured"],
//         businessId: json["business_id"],
//         type: json["type"],
//         subUnitIds: json["sub_unit_ids"],
//         brandId: json["brand_id"],
//         unitId: json["unit_id"],
//         categoryId: json["category_id"],
//         subCategoryId: json["sub_category_id"],
//         tax: json["tax"],
//         taxType: json["tax_type"],
//         enableStock: json["enable_stock"],
//         alertQuantity: json["alert_quantity"],
//         sku: json["sku"],
//         barcodeType: json["barcode_type"],
//         expiryPeriod: json["expiry_period"],
//         expiryPeriodType: json["expiry_period_type"],
//         enableSrNo: json["enable_sr_no"],
//         weight: json["weight"],
//         productCustomField1: json["product_custom_field1"],
//         productCustomField2: json["product_custom_field2"],
//         productCustomField3: json["product_custom_field3"],
//         productCustomField4: json["product_custom_field4"],
//         image: json["image"],
//         woocommerceMediaId: json["woocommerce_media_id"],
//         productDescription: json["product_description"],
//         createdBy: json["created_by"],
//         woocommerceProductId: json["woocommerce_product_id"],
//         woocommerceDisableSync: json["woocommerce_disable_sync"],
//         warrantyId: json["warranty_id"],
//         isInactive: json["is_inactive"],
//         repairModelId: json["repair_model_id"],
//         notForSelling: json["not_for_selling"],
//         metaTitle: json["meta_title"],
//         metaKeyword: json["meta_keyword"],
//         metaDescription: json["meta_description"],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"],
//         imageUrl: json["image_url"],
//         variations: json["variations"] == null
//             ? null
//             : List<VariationModel>.from(json["variations"].map((x) => x)),
//         modifierProducts: json["modifier_products"] == null
//             ? null
//             : List<Product>.from(json["modifier_products"].map((x) => x)),
//         media: json["media"] == null
//             ? null
//             : List<dynamic>.from(json["media"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id == null ? null : id!,
//         "name": name == null ? null : name!,
//         "slug": slug == null ? null : slug!,
//         "featured": featured == null ? null : featured!,
//         "business_id": businessId == null ? null : businessId!,
//         "type": type == null ? null : type!,
//         "brand_id": brandId == null ? null : brandId!,
//         "unit_id": unitId == null ? null : unitId!,
//         "category_id": categoryId == null ? null : categoryId!,
//         "sub_category_id": subCategoryId,
//         "sub_unit_ids": subUnitIds,
//         "tax": tax,
//         "tax_type": taxType,
//         "enable_stock": enableStock == null ? null : enableStock!,
//         "alert_quantity": alertQuantity,
//         "sku": sku == null ? null : sku!,
//         "barcode_type": barcodeType == null ? null : barcodeType!,
//         "expiry_period": expiryPeriod,
//         "expiry_period_type": expiryPeriodType,
//         "enable_sr_no": enableSrNo == null ? null : enableSrNo!,
//         "weight": weight,
//         "product_custom_field1": productCustomField1,
//         "product_custom_field2": productCustomField2,
//         "product_custom_field3": productCustomField3,
//         "product_custom_field4": productCustomField4,
//         "image": image,
//         "woocommerce_media_id": woocommerceMediaId,
//         "product_description": productDescription,
//         "created_by": createdBy == null ? null : createdBy!,
//         "woocommerce_product_id": woocommerceProductId,
//         "woocommerce_disable_sync":
//             woocommerceDisableSync == null ? null : woocommerceDisableSync!,
//         "warranty_id": warrantyId,
//         "is_inactive": isInactive == null ? null : isInactive!,
//         "repair_model_id": repairModelId,
//         "not_for_selling": notForSelling == null ? null : notForSelling!,
//         "meta_title": metaTitle,
//         "meta_keyword": metaKeyword == null ? null : metaKeyword!,
//         "meta_description": metaDescription == null ? null : metaDescription!,
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//         "image_url": imageUrl == null ? null : imageUrl!,
//         "variations": variations == null
//             ? null
//             : List<VariationModel>.from(variations!.map((x) => x)),
//         "modifier_products": modifierProducts == null
//             ? null
//             : List<Product>.from(modifierProducts!.map((x) => x)),
//         "media":
//             media == null ? null : List<dynamic>.from(media!.map((x) => x)),
//       };
// }

// // class ModifierProduct {
// //   ModifierProduct({
// //     this.id,
// //     this.name,
// //     this.businessId,
// //     this.type,
// //     this.subUnitIds,
// //     this.enableStock,
// //     this.alertQuantity,
// //     this.sku,
// //     this.barcodeType,
// //     this.expiryPeriod,
// //     this.expiryPeriodType,
// //     this.enableSrNo,
// //     this.weight,
// //     this.productCustomField1,
// //     this.productCustomField2,
// //     this.productCustomField3,
// //     this.productCustomField4,
// //     this.image,
// //     this.woocommerceMediaId,
// //     this.productDescription,
// //     this.createdBy,
// //     this.woocommerceProductId,
// //     this.woocommerceDisableSync,
// //     this.warrantyId,
// //     this.isInactive,
// //     this.repairModelId,
// //     this.notForSelling,
// //     this.imageUrl,
// //     // this.productVariations,
// //     this.brandId,
// //     this.unitId,
// //     this.categoryId,
// //     this.subCategory,
// //     this.productTax,
// //     // this.productLocations,
// //   });

// //   int? id;
// //   String? name;
// //   int? businessId;
// //   String? type;
// //   dynamic subUnitIds;
// //   int? enableStock;
// //   dynamic alertQuantity;
// //   String? sku;
// //   String? barcodeType;
// //   dynamic expiryPeriod;
// //   dynamic expiryPeriodType;
// //   int? enableSrNo;
// //   dynamic weight;
// //   dynamic productCustomField1;
// //   dynamic productCustomField2;
// //   dynamic productCustomField3;
// //   dynamic productCustomField4;
// //   dynamic image;
// //   dynamic woocommerceMediaId;
// //   dynamic productDescription;
// //   int? createdBy;
// //   dynamic woocommerceProductId;
// //   int? woocommerceDisableSync;
// //   dynamic warrantyId;
// //   int? isInactive;
// //   dynamic repairModelId;
// //   int? notForSelling;
// //   String? imageUrl;
// //   // List<ProductVariation?>? productVariations;
// //   int? brandId;
// //   int? unitId;
// //   int? categoryId;
// //   dynamic subCategory;
// //   dynamic productTax;
// //   String? slug;
// //   int? featured;
// //   dynamic subCategoryId;
// //   dynamic tax;
// //   String? taxType;
// //   dynamic metaTitle;
// //   dynamic metaKeyword;
// //   dynamic metaDescription;
// //   String? createdAt;
// //   String? updatedAt;
// //   Pivot? pivot;
// //   List<Media>? media;
// //   // List<ProductLocation?>? productLocations;
// //   // List<ProductOfSell> variantsSelect = [];

// //   ModifierProduct copyWith({
// //     int? id,
// //     String? name,
// //     int? businessId,
// //     String? type,
// //     dynamic subUnitIds,
// //     int? enableStock,
// //     dynamic alertQuantity,
// //     String? sku,
// //     String? barcodeType,
// //     dynamic expiryPeriod,
// //     dynamic expiryPeriodType,
// //     int? enableSrNo,
// //     dynamic weight,
// //     dynamic productCustomField1,
// //     dynamic productCustomField2,
// //     dynamic productCustomField3,
// //     dynamic productCustomField4,
// //     dynamic image,
// //     dynamic woocommerceMediaId,
// //     dynamic productDescription,
// //     int? createdBy,
// //     dynamic woocommerceProductId,
// //     int? woocommerceDisableSync,
// //     dynamic warrantyId,
// //     int? isInactive,
// //     dynamic repairModelId,
// //     int? notForSelling,
// //     String? imageUrl,
// //     List<ProductVariation?>? productVariations,
// //     int? brandId,
// //     int? unitId,
// //     int? categoryId,
// //     dynamic subCategory,
// //     dynamic productTax,
// //   }) =>
// //       ModifierProduct(
// //         id: id ?? this.id,
// //         name: name ?? this.name,
// //         businessId: businessId ?? this.businessId,
// //         type: type ?? this.type,
// //         subUnitIds: subUnitIds ?? this.subUnitIds,
// //         enableStock: enableStock ?? this.enableStock,
// //         alertQuantity: alertQuantity ?? this.alertQuantity,
// //         sku: sku ?? this.sku,
// //         barcodeType: barcodeType ?? this.barcodeType,
// //         expiryPeriod: expiryPeriod ?? this.expiryPeriod,
// //         expiryPeriodType: expiryPeriodType ?? this.expiryPeriodType,
// //         enableSrNo: enableSrNo ?? this.enableSrNo,
// //         weight: weight ?? this.weight,
// //         productCustomField1: productCustomField1 ?? this.productCustomField1,
// //         productCustomField2: productCustomField2 ?? this.productCustomField2,
// //         productCustomField3: productCustomField3 ?? this.productCustomField3,
// //         productCustomField4: productCustomField4 ?? this.productCustomField4,
// //         image: image ?? this.image,
// //         woocommerceMediaId: woocommerceMediaId ?? this.woocommerceMediaId,
// //         productDescription: productDescription ?? this.productDescription,
// //         createdBy: createdBy ?? this.createdBy,
// //         woocommerceProductId: woocommerceProductId ?? this.woocommerceProductId,
// //         woocommerceDisableSync:
// //             woocommerceDisableSync ?? this.woocommerceDisableSync,
// //         warrantyId: warrantyId ?? this.warrantyId,
// //         isInactive: isInactive ?? this.isInactive,
// //         repairModelId: repairModelId ?? this.repairModelId,
// //         notForSelling: notForSelling ?? this.notForSelling,
// //         imageUrl: imageUrl ?? this.imageUrl,
// //         // productVariations: productVariations ?? this.productVariations,
// //         brandId: brandId ?? this.brandId,
// //         unitId: unitId ?? this.unitId,
// //         categoryId: categoryId ?? this.categoryId,
// //         subCategory: subCategory ?? this.subCategory,
// //         productTax: productTax ?? this.productTax,
// //         // productLocations: productLocations ?? this.productLocations,
// //       );

// //   factory ModifierProduct.fromRawJson(String str) => ModifierProduct.fromJson(json.decode(str));

// //   String toRawJson() => json.encode(toJson());

// //   factory ModifierProduct.fromJson(Map<String, dynamic> json) => ModifierProduct(
// //         id: json["id"],
// //         name: json["name"],
// //         businessId: json["business_id"],
// //         type: json["type"],
// //         subUnitIds: json["sub_unit_ids"],
// //         enableStock: json["enable_stock"],
// //         alertQuantity: json["alert_quantity"],
// //         sku: json["sku"],
// //         barcodeType: json["barcode_type"],
// //         expiryPeriod: json["expiry_period"],
// //         expiryPeriodType: json["expiry_period_type"],
// //         enableSrNo: json["enable_sr_no"],
// //         weight: json["weight"],
// //         productCustomField1: json["product_custom_field1"],
// //         productCustomField2: json["product_custom_field2"],
// //         productCustomField3: json["product_custom_field3"],
// //         productCustomField4: json["product_custom_field4"],
// //         image: json["image"],
// //         woocommerceMediaId: json["woocommerce_media_id"],
// //         productDescription: json["product_description"],
// //         createdBy: json["created_by"],
// //         woocommerceProductId: json["woocommerce_product_id"],
// //         woocommerceDisableSync: json["woocommerce_disable_sync"],
// //         warrantyId: json["warranty_id"],
// //         isInactive: json["is_inactive"],
// //         repairModelId: json["repair_model_id"],
// //         notForSelling: json["not_for_selling"],
// //         imageUrl: json["image_url"],
// //         // productVariations: json["product_variations"] == null
// //         //     ? null
// //         //     : List<ProductVariation>.from(json["product_variations"]
// //         //         .map((x) => ProductVariation.fromJson(x))),
// //         brandId: json["brand_id"],
// //         unitId: json["unit_id"],
// //         categoryId: json["category_id"],
// //         subCategory: json["sub_category"],
// //         productTax: json["product_tax"],
// //         // productLocations: json["product_locations"] == null
// //         //     ? null
// //         //     : List<ProductLocation>.from(json["product_locations"]
// //         //         .map((x) => ProductLocation.fromJson(x))),
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "id": id,
// //         "name": name,
// //         "business_id": businessId,
// //         "type": type,
// //         "sub_unit_ids": subUnitIds,
// //         "enable_stock": enableStock,
// //         "alert_quantity": alertQuantity,
// //         "sku": sku,
// //         "barcode_type": barcodeType,
// //         "expiry_period": expiryPeriod,
// //         "expiry_period_type": expiryPeriodType,
// //         "enable_sr_no": enableSrNo,
// //         "weight": weight,
// //         "product_custom_field1": productCustomField1,
// //         "product_custom_field2": productCustomField2,
// //         "product_custom_field3": productCustomField3,
// //         "product_custom_field4": productCustomField4,
// //         "image": image,
// //         "woocommerce_media_id": woocommerceMediaId,
// //         "product_description": productDescription,
// //         "created_by": createdBy,
// //         "woocommerce_product_id": woocommerceProductId,
// //         "woocommerce_disable_sync": woocommerceDisableSync,
// //         "warranty_id": warrantyId,
// //         "is_inactive": isInactive,
// //         "repair_model_id": repairModelId,
// //         "not_for_selling": notForSelling,
// //         "image_url": imageUrl,
// //         // "product_variations": productVariations == null
// //         //     ? null
// //         //     : List<dynamic>.from(productVariations!.map((x) => x!.toJson())),
// //         "brand_id": brandId,
// //         "unit_id": unitId,
// //         "category_id": categoryId ,
// //         "sub_category": subCategory,
// //         "product_tax": productTax,
// //         // "product_locations": productLocations == null
// //         //     ? null
// //         //     : List<dynamic>.from(productLocations!.map((x) => x!.toJson())),
// //       };
// // }

// class VariationModel {
//   VariationModel({
//     this.id,
//     this.name,
//     this.productId,
//     this.subSku,
//     this.productVariationId,
//     this.woocommerceVariationId,
//     this.variationValueId,
//     this.defaultPurchasePrice,
//     this.dppIncTax,
//     this.profitPercent,
//     this.defaultSellPrice,
//     this.sellPriceIncTax,
//     this.regularPrice,
//     this.createdAt,
//     this.updatedAt,
//     this.deletedAt,
//     this.comboVariations,
//   });

//   int? id;
//   String? name;
//   int? productId;
//   String? subSku;
//   int? productVariationId;
//   dynamic woocommerceVariationId;
//   dynamic variationValueId;
//   String? defaultPurchasePrice;
//   String? dppIncTax;
//   String? profitPercent;
//   String? defaultSellPrice;
//   String? sellPriceIncTax;
//   String? regularPrice;
//   String? createdAt;
//   String? updatedAt;
//   dynamic deletedAt;
//   List<dynamic>? comboVariations;

//   VariationModel copyWith({
//     int? id,
//     String? name,
//     int? productId,
//     String? subSku,
//     int? productVariationId,
//     dynamic woocommerceVariationId,
//     dynamic variationValueId,
//     String? defaultPurchasePrice,
//     String? dppIncTax,
//     String? profitPercent,
//     String? defaultSellPrice,
//     String? sellPriceIncTax,
//     String? regularPrice,
//     String? createdAt,
//     String? updatedAt,
//     dynamic deletedAt,
//     List<dynamic>? comboVariations,
//   }) =>
//       VariationModel(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         productId: productId ?? this.productId,
//         subSku: subSku ?? this.subSku,
//         productVariationId: productVariationId ?? this.productVariationId,
//         woocommerceVariationId:
//             woocommerceVariationId ?? this.woocommerceVariationId,
//         variationValueId: variationValueId ?? this.variationValueId,
//         defaultPurchasePrice: defaultPurchasePrice ?? this.defaultPurchasePrice,
//         dppIncTax: dppIncTax ?? this.dppIncTax,
//         profitPercent: profitPercent ?? this.profitPercent,
//         defaultSellPrice: defaultSellPrice ?? this.defaultSellPrice,
//         sellPriceIncTax: sellPriceIncTax ?? this.sellPriceIncTax,
//         regularPrice: regularPrice ?? this.regularPrice,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         deletedAt: deletedAt ?? this.deletedAt,
//         comboVariations: comboVariations ?? this.comboVariations,
//       );

//   factory VariationModel.fromRawJson(String str) =>
//       VariationModel.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory VariationModel.fromJson(Map<String, dynamic> json) => VariationModel(
//         id: json["id"],
//         name: json["name"],
//         productId: json["product_id"],
//         subSku: json["sub_sku"],
//         productVariationId: json["product_variation_id"],
//         woocommerceVariationId: json["woocommerce_variation_id"],
//         variationValueId: json["variation_value_id"],
//         defaultPurchasePrice: json["default_purchase_price"],
//         dppIncTax: json["dpp_inc_tax"],
//         profitPercent: json["profit_percent"],
//         defaultSellPrice: json["default_sell_price"],
//         sellPriceIncTax: json["sell_price_inc_tax"],
//         regularPrice: json["regular_price"],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"],
//         deletedAt: json["deleted_at"],
//         comboVariations: json["combo_variations"] == null
//             ? null
//             : List<dynamic>.from(json["combo_variations"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "product_id": productId,
//         "sub_sku": subSku,
//         "product_variation_id": productVariationId,
//         "woocommerce_variation_id": woocommerceVariationId,
//         "variation_value_id": variationValueId,
//         "default_purchase_price": defaultPurchasePrice,
//         "dpp_inc_tax": dppIncTax,
//         "profit_percent": profitPercent,
//         "default_sell_price": defaultSellPrice,
//         "sell_price_inc_tax": sellPriceIncTax,
//         "regular_price": regularPrice,
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//         "deleted_at": deletedAt,
//         "combo_variations": comboVariations == null
//             ? null
//             : List<dynamic>.from(comboVariations!.map((x) => x)),
//       };
// }
