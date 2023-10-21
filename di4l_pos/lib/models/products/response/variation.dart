import 'dart:convert';

class Variation {
  Variation({
    this.id,
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
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.comboVariations,
    this.variationLocationDetails,
    this.media,
    this.discounts,
  });

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
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<dynamic>? comboVariations;
  List<VariantionLocationDetail>? variationLocationDetails;
  List<dynamic>? media;
  List<dynamic>? discounts;

  Variation copyWith({
    int? id,
    String? name,
    int? productId,
    String? subSku,
    int? productVariationId,
    dynamic woocommerceVariationId,
    dynamic variationValueId,
    String? defaultPurchasePrice,
    String? dppIncTax,
    String? profitPercent,
    String? defaultSellPrice,
    String? sellPriceIncTax,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<dynamic>? comboVariations,
    List<VariantionLocationDetail>? variationLocationDetails,
    List<dynamic>? media,
    List<dynamic>? discounts,
  }) =>
      Variation(
        id: id ?? this.id,
        name: name ?? this.name,
        productId: productId ?? this.productId,
        subSku: subSku ?? this.subSku,
        productVariationId: productVariationId ?? this.productVariationId,
        woocommerceVariationId:
            woocommerceVariationId ?? this.woocommerceVariationId,
        variationValueId: variationValueId ?? this.variationValueId,
        defaultPurchasePrice: defaultPurchasePrice ?? this.defaultPurchasePrice,
        dppIncTax: dppIncTax ?? this.dppIncTax,
        profitPercent: profitPercent ?? this.profitPercent,
        defaultSellPrice: defaultSellPrice ?? this.defaultSellPrice,
        sellPriceIncTax: sellPriceIncTax ?? this.sellPriceIncTax,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
        comboVariations: comboVariations ?? this.comboVariations,
        variationLocationDetails:
            variationLocationDetails ?? this.variationLocationDetails,
        media: media ?? this.media,
        discounts: discounts ?? this.discounts,
      );

  factory Variation.fromRawJson(String str) =>
      Variation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Variation.fromJson(Map<String, dynamic> json) => Variation(
        id: json["id"],
        name: json["name"],
        productId: json["product_id"],
        subSku: json["sub_sku"],
        productVariationId: json["product_variation_id"],
        woocommerceVariationId: json["woocommerce_variation_id"],
        variationValueId: json["variation_value_id"],
        defaultPurchasePrice: json["default_purchase_price"],
        dppIncTax: json["dpp_inc_tax"],
        profitPercent: json["profit_percent"],
        defaultSellPrice: json["default_sell_price"],
        sellPriceIncTax: json["sell_price_inc_tax"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        comboVariations: json["combo_variations"] == null
            ? null
            : List<dynamic>.from(json["combo_variations"].map((x) => x)),
        variationLocationDetails: json["variation_location_details"] == null
            ? null
            : List<VariantionLocationDetail>.from(
                json["variation_location_details"]
                    .map((x) => VariantionLocationDetail.fromJson(x))),
        media: json["media"] == null
            ? null
            : List<dynamic>.from(json["media"].map((x) => x)),
        discounts: json["discounts"] == null
            ? null
            : List<dynamic>.from(json["discounts"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "product_id": productId,
        "sub_sku": subSku,
        "product_variation_id": productVariationId,
        "woocommerce_variation_id": woocommerceVariationId,
        "variation_value_id": variationValueId,
        "default_purchase_price": defaultPurchasePrice,
        "dpp_inc_tax": dppIncTax,
        "profit_percent": profitPercent,
        "default_sell_price": defaultSellPrice,
        "sell_price_inc_tax": sellPriceIncTax,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "combo_variations": comboVariations == null
            ? null
            : List<dynamic>.from(comboVariations!.map((x) => x)),
        "variation_location_details": variationLocationDetails == null
            ? null
            : List<VariantionLocationDetail>.from(
                variationLocationDetails!.map((x) => x.toJson())),
        "media":
            media == null ? null : List<dynamic>.from(media!.map((x) => x)),
        "discounts": discounts == null
            ? null
            : List<dynamic>.from(discounts!.map((x) => x)),
      };
}

class VariantionLocationDetail {
  VariantionLocationDetail({
    this.id,
    this.productId,
    this.productVariantionId,
    this.variationId,
    this.locationId,
    this.qtyAvailable,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? productId;
  int? productVariantionId;
  int? variationId;
  int? locationId;
  String? qtyAvailable;
  String? createdAt;
  String? updatedAt;

  VariantionLocationDetail copyWith({
    int? id,
    int? productId,
    int? productVariantionId,
    int? variationId,
    int? locationId,
    String? qtyAvailable,
    String? createdAt,
    String? updatedAt,
  }) =>
      VariantionLocationDetail(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        productVariantionId: productVariantionId ?? this.productVariantionId,
        variationId: variationId ?? this.variationId,
        locationId: locationId ?? this.locationId,
        qtyAvailable: qtyAvailable ?? this.qtyAvailable,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory VariantionLocationDetail.fromRawJson(String str) =>
      VariantionLocationDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VariantionLocationDetail.fromJson(Map<String, dynamic> json) =>
      VariantionLocationDetail(
        id: json["location_id"],
        productId: json["product_id"],
        productVariantionId: json["product_variation_id"],
        variationId: json["variation_id"],
        locationId: json["location_id"],
        qtyAvailable: json["qty_available"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "product_variation_id": productVariantionId,
        "variation_id": variationId,
        "location_id": locationId,
        "qty_available": qtyAvailable,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
