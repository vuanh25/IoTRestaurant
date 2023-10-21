import 'dart:convert';

import 'package:di4l_pos/models/branch/response/branch_response.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/models/pagination/response/links.dart';
import 'package:di4l_pos/models/pagination/response/meta.dart';
import 'package:di4l_pos/models/products/response/product_location.dart';
import 'package:di4l_pos/models/products/response/variation.dart';
import 'package:di4l_pos/models/unit/response/unit_response.dart';

import '../request/product_of_sell_request.dart';

class ProductResponse {
  ProductResponse({
    this.data,
    this.links,
    this.meta,
  });

  List<Product>? data;
  Links? links;
  Meta? meta;

  ProductResponse copyWith({
    List<Product>? data,
    Links? links,
    Meta? meta,
  }) =>
      ProductResponse(
        data: data ?? this.data,
        links: links ?? this.links,
        meta: meta ?? this.meta,
      );

  factory ProductResponse.fromRawJson(String str) =>
      ProductResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      ProductResponse(
        data: json["data"] == null
            ? null
            : List<Product>.from(json["data"].map((x) => Product.fromJson(x))),
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "links": links == null ? null : links!.toJson(),
        "meta": meta == null ? null : meta!.toJson(),
      };
}

class VariantValueCount {
  ProductVariation productVariation;
  int count;
  VariantValueCount(this.productVariation, this.count);
}

class Product {
  Product({
    this.id,
    this.name,
    this.businessId,
    this.type,
    this.subUnitIds,
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
    this.imageUrl,
    this.productVariations,
    this.brand,
    this.unit,
    this.category,
    this.subCategory,
    this.productTax,
    this.productLocations,
    this.purchaseLines,
  });

  int? id;
  String? name;
  int? businessId;
  String? type;
  dynamic subUnitIds;
  int? enableStock;
  dynamic alertQuantity;
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
  String? imageUrl;
  List<ProductVariation?>? productVariations;
  Branch? brand;
  Unit? unit;
  CategoryModel? category;
  dynamic subCategory;
  dynamic productTax;
  List<ProductLocation?>? productLocations;
  List<PurchaseLine?>? purchaseLines;
  List<ProductOfSell> variantsSelect = [];

  Product copyWith({
    int? id,
    String? name,
    int? businessId,
    String? type,
    dynamic subUnitIds,
    int? enableStock,
    dynamic alertQuantity,
    String? sku,
    String? barcodeType,
    dynamic expiryPeriod,
    dynamic expiryPeriodType,
    int? enableSrNo,
    dynamic weight,
    dynamic productCustomField1,
    dynamic productCustomField2,
    dynamic productCustomField3,
    dynamic productCustomField4,
    dynamic image,
    dynamic woocommerceMediaId,
    dynamic productDescription,
    int? createdBy,
    dynamic woocommerceProductId,
    int? woocommerceDisableSync,
    dynamic warrantyId,
    int? isInactive,
    dynamic repairModelId,
    int? notForSelling,
    String? imageUrl,
    List<ProductVariation?>? productVariations,
    Branch? brand,
    Unit? unit,
    CategoryModel? category,
    dynamic subCategory,
    dynamic productTax,
    List<ProductLocation?>? productLocations,
    List<PurchaseLine?>? purchaseLines,
  }) =>
      Product(
          id: id ?? this.id,
          name: name ?? this.name,
          businessId: businessId ?? this.businessId,
          type: type ?? this.type,
          subUnitIds: subUnitIds ?? this.subUnitIds,
          enableStock: enableStock ?? this.enableStock,
          alertQuantity: alertQuantity ?? this.alertQuantity,
          sku: sku ?? this.sku,
          barcodeType: barcodeType ?? this.barcodeType,
          expiryPeriod: expiryPeriod ?? this.expiryPeriod,
          expiryPeriodType: expiryPeriodType ?? this.expiryPeriodType,
          enableSrNo: enableSrNo ?? this.enableSrNo,
          weight: weight ?? this.weight,
          productCustomField1: productCustomField1 ?? this.productCustomField1,
          productCustomField2: productCustomField2 ?? this.productCustomField2,
          productCustomField3: productCustomField3 ?? this.productCustomField3,
          productCustomField4: productCustomField4 ?? this.productCustomField4,
          image: image ?? this.image,
          woocommerceMediaId: woocommerceMediaId ?? this.woocommerceMediaId,
          productDescription: productDescription ?? this.productDescription,
          createdBy: createdBy ?? this.createdBy,
          woocommerceProductId:
              woocommerceProductId ?? this.woocommerceProductId,
          woocommerceDisableSync:
              woocommerceDisableSync ?? this.woocommerceDisableSync,
          warrantyId: warrantyId ?? this.warrantyId,
          isInactive: isInactive ?? this.isInactive,
          repairModelId: repairModelId ?? this.repairModelId,
          notForSelling: notForSelling ?? this.notForSelling,
          imageUrl: imageUrl ?? this.imageUrl,
          productVariations: productVariations ?? this.productVariations,
          brand: brand ?? this.brand,
          unit: unit ?? this.unit,
          category: category ?? this.category,
          subCategory: subCategory ?? this.subCategory,
          productTax: productTax ?? this.productTax,
          productLocations: productLocations ?? this.productLocations,
          purchaseLines: purchaseLines ?? this.purchaseLines);

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        businessId: json["business_id"],
        type: json["type"],
        subUnitIds: json["sub_unit_ids"],
        enableStock: json["enable_stock"],
        alertQuantity: json["alert_quantity"],
        sku: json["sku"],
        barcodeType: json["barcode_type"],
        expiryPeriod: json["expiry_period"],
        expiryPeriodType: json["expiry_period_type"],
        enableSrNo: json["enable_sr_no"],
        weight: json["weight"],
        productCustomField1: json["product_custom_field1"],
        productCustomField2: json["product_custom_field2"],
        productCustomField3: json["product_custom_field3"],
        productCustomField4: json["product_custom_field4"],
        image: json["image"],
        woocommerceMediaId: json["woocommerce_media_id"],
        productDescription: json["product_description"],
        createdBy: json["created_by"],
        woocommerceProductId: json["woocommerce_product_id"],
        woocommerceDisableSync: json["woocommerce_disable_sync"],
        warrantyId: json["warranty_id"],
        isInactive: json["is_inactive"],
        repairModelId: json["repair_model_id"],
        notForSelling: json["not_for_selling"],
        imageUrl: json["image_url"],
        productVariations: json["product_variations"] == null
            ? null
            : List<ProductVariation>.from(json["product_variations"]
                .map((x) => ProductVariation.fromJson(x))),
        brand: json["brand"] == null ? null : Branch.fromJson(json["brand"]),
        unit: json["unit"] == null ? null : Unit.fromJson(json["unit"]),
        category: json["category"] == null
            ? null
            : CategoryModel.fromJson(json["category"]),
        subCategory: json["sub_category"],
        productTax: json["product_tax"],
        productLocations: json["product_locations"] == null
            ? null
            : List<ProductLocation>.from(json["product_locations"]
                .map((x) => ProductLocation.fromJson(x))),
        purchaseLines: json["purchase_lines"] == null
            ? null
            : List<PurchaseLine>.from(
                json["purchase_lines"].map((x) => PurchaseLine.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "business_id": businessId,
        "type": type,
        "sub_unit_ids": subUnitIds,
        "enable_stock": enableStock,
        "alert_quantity": alertQuantity,
        "sku": sku,
        "barcode_type": barcodeType,
        "expiry_period": expiryPeriod,
        "expiry_period_type": expiryPeriodType,
        "enable_sr_no": enableSrNo,
        "weight": weight,
        "product_custom_field1": productCustomField1,
        "product_custom_field2": productCustomField2,
        "product_custom_field3": productCustomField3,
        "product_custom_field4": productCustomField4,
        "image": image,
        "woocommerce_media_id": woocommerceMediaId,
        "product_description": productDescription,
        "created_by": createdBy,
        "woocommerce_product_id": woocommerceProductId,
        "woocommerce_disable_sync": woocommerceDisableSync,
        "warranty_id": warrantyId,
        "is_inactive": isInactive,
        "repair_model_id": repairModelId,
        "not_for_selling": notForSelling,
        "image_url": imageUrl,
        "product_variations": productVariations == null
            ? null
            : List<dynamic>.from(productVariations!.map((x) => x!.toJson())),
        "brand": brand == null ? null : brand!.toJson(),
        "unit": unit == null ? null : unit!.toJson(),
        "category": category == null ? null : category!.toJson(),
        "sub_category": subCategory,
        "product_tax": productTax,
        "product_locations": productLocations == null
            ? null
            : List<dynamic>.from(productLocations!.map((x) => x!.toJson())),
      };

  String getProductLocationName() {
    if (productLocations?.isEmpty ?? true) {
      return '';
    }
    return (productLocations ?? []).map((e) => e?.name ?? '').join(', ');
  }

  List<String> getProductLocationId() {
    if (productLocations?.isEmpty ?? true) {
      return [];
    }
    List<String> stringList = [];
    for (int i = 0; i < productLocations!.length; i++) {
      stringList.add(productLocations![i]!.id.toString());
    }
    return stringList;
  }
 

  String getSubSkuVariantions() {
    if (productVariations?.isEmpty ?? true) {
      return '';
    }
    return (productVariations ?? [])
        .map((e) => e?.getSubSkuVariantions() ?? '')
        .join(' ');
  }
}

class ProductVariation {
  ProductVariation({
    this.id,
    this.variationTemplateId,
    this.name,
    this.productId,
    this.isDummy,
    this.createdAt,
    this.updatedAt,
    this.variations,
  });

  int? id;
  dynamic variationTemplateId;
  String? name;
  int? productId;
  int? isDummy;
  String? createdAt;
  String? updatedAt;
  List<Variation?>? variations;

  ProductVariation copyWith({
    int? id,
    dynamic variationTemplateId,
    String? name,
    int? productId,
    int? isDummy,
    String? createdAt,
    String? updatedAt,
    List<Variation?>? variations,
  }) =>
      ProductVariation(
        id: id ?? this.id,
        variationTemplateId: variationTemplateId ?? this.variationTemplateId,
        name: name ?? this.name,
        productId: productId ?? this.productId,
        isDummy: isDummy ?? this.isDummy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        variations: variations ?? this.variations,
      );

  factory ProductVariation.fromRawJson(String str) =>
      ProductVariation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductVariation.fromJson(Map<String, dynamic> json) =>
      ProductVariation(
        id: json["id"],
        variationTemplateId: json["variation_template_id"],
        name: json["name"],
        productId: json["product_id"],
        isDummy: json["is_dummy"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        variations: json["variations"] == null
            ? null
            : List<Variation>.from(
                json["variations"].map((x) => Variation.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "variation_template_id": variationTemplateId,
        "name": name,
        "product_id": productId,
        "is_dummy": isDummy,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "variations": variations == null
            ? null
            : List<dynamic>.from(variations!.map((x) => x!.toJson())),
      };
  String getSubSkuVariantions() {
    if (variations?.isEmpty ?? true) {
      return '';
    }
    return (variations ?? []).map((e) => e?.subSku ?? '').join(', ');
  }
}

class PurchaseLine {
  int? id;
  int? transactionId;
  int? productId;
  int? variationId;
  int? quantity;
  String? ppWithoutDiscount;
  String? discountPercent;
  String? purchasePrice;
  String? purchasePriceIncTax;
  String? itemTax;
  dynamic taxId;
  dynamic purchaseOrderLineId;
  String? quantitySold;
  String? quantityAdjusted;
  String? quantityReturned;
  String? poQuantityPurchased;
  String? mfgQuantityUsed;
  dynamic mfgDate;
  dynamic expDate;
  dynamic lotNumber;
  dynamic subUnitId;
  String? createdAt;
  String? updatedAt;

  PurchaseLine({
    this.id,
    this.transactionId,
    this.productId,
    this.variationId,
    this.quantity,
    this.ppWithoutDiscount,
    this.discountPercent,
    this.purchasePrice,
    this.purchasePriceIncTax,
    this.itemTax,
    this.taxId,
    this.purchaseOrderLineId,
    this.quantitySold,
    this.quantityAdjusted,
    this.quantityReturned,
    this.poQuantityPurchased,
    this.mfgQuantityUsed,
    this.mfgDate,
    this.expDate,
    this.lotNumber,
    this.subUnitId,
    this.createdAt,
    this.updatedAt,
  });

  factory PurchaseLine.fromRawJson(String str) =>
      PurchaseLine.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurchaseLine.fromJson(Map<String, dynamic> json) => PurchaseLine(
        id: json["id"],
        transactionId: json["transaction_id"],
        productId: json["product_id"],
        variationId: json["variation_id"],
        quantity: json["quantity"],
        ppWithoutDiscount: json["pp_without_discount"],
        discountPercent: json["discount_percent"],
        purchasePrice: json["purchase_price"],
        purchasePriceIncTax: json["purchase_price_inc_tax"],
        itemTax: json["item_tax"],
        taxId: json["tax_id"],
        purchaseOrderLineId: json["purchase_order_line_id"],
        quantitySold: json["quantity_sold"],
        quantityAdjusted: json["quantity_adjusted"],
        quantityReturned: json["quantity_returned"],
        poQuantityPurchased: json["po_quantity_purchased"],
        mfgQuantityUsed: json["mfg_quantity_used"],
        mfgDate: json["mfg_date"],
        expDate: json["exp_date"],
        lotNumber: json["lot_number"],
        subUnitId: json["sub_unit_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "transaction_id": transactionId,
        "product_id": productId,
        "variation_id": variationId,
        "quantity": quantity,
        "pp_without_discount": ppWithoutDiscount,
        "discount_percent": discountPercent,
        "purchase_price": purchasePrice,
        "purchase_price_inc_tax": purchasePriceIncTax,
        "item_tax": itemTax,
        "tax_id": taxId,
        "purchase_order_line_id": purchaseOrderLineId,
        "quantity_sold": quantitySold,
        "quantity_adjusted": quantityAdjusted,
        "quantity_returned": quantityReturned,
        "po_quantity_purchased": poQuantityPurchased,
        "mfg_quantity_used": mfgQuantityUsed,
        "mfg_date": mfgDate,
        "exp_date": expDate,
        "lot_number": lotNumber,
        "sub_unit_id": subUnitId,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
