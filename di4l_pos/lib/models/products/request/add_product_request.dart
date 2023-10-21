// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

class AddProductRequest {
  String? name;
  int? branchId;
  int? unitId;
  int? categoryId;
  String? tax;
  String? barcodeType;
  String? sku;
  String? alertQuantity;
  String? taxType;
  String? productDescription;
  String? type;
  int? enableStock;
  int? notForSelling;
  bool? enableProductExpiry;
  dynamic expiryPeriodType;
  dynamic expiryPeriod;
  double? defaultSellPrice;
  double? defaultBuyPrice;
  int? enableSrNo;
  dynamic warrantyId;
  List<ProductVariationRequest>? productVariationRequests;
  String? img;

  AddProductRequest(
      {this.name,
      this.branchId,
      this.unitId,
      this.categoryId,
      this.tax,
      this.barcodeType,
      this.sku,
      this.alertQuantity,
      this.taxType,
      this.productDescription,
      this.type,
      this.enableStock,
      this.notForSelling,
      this.enableProductExpiry,
      this.expiryPeriodType,
      this.expiryPeriod,
      this.enableSrNo,
      this.warrantyId,
      this.productVariationRequests,
      this.defaultBuyPrice,
      this.defaultSellPrice,
      this.img});

  AddProductRequest copyWith({
    String? name,
    int? branchId,
    int? unitId,
    int? categoryId,
    String? tax,
    String? barcodeType,
    String? sku,
    String? alertQuantity,
    String? taxType,
    String? productDescription,
    String? type,
    int? enableStock,
    int? notForSelling,
    bool? enableProductExpiry,
    dynamic expiryPeriodType,
    dynamic expiryPeriod,
    int? enableSrNo,
    dynamic warrantyId,
    List<ProductVariationRequest>? productVariationRequests,
  }) =>
      AddProductRequest(
        name: name ?? this.name,
        branchId: branchId ?? this.branchId,
        unitId: unitId ?? this.unitId,
        categoryId: categoryId ?? this.categoryId,
        tax: tax ?? this.tax,
        barcodeType: barcodeType ?? this.barcodeType,
        sku: sku ?? this.sku,
        alertQuantity: alertQuantity ?? this.alertQuantity,
        taxType: taxType ?? this.taxType,
        productDescription: productDescription ?? this.productDescription,
        type: type ?? this.type,
        enableStock: enableStock ?? this.enableStock,
        notForSelling: notForSelling ?? this.notForSelling,
        enableProductExpiry: enableProductExpiry ?? this.enableProductExpiry,
        expiryPeriodType: expiryPeriodType ?? this.expiryPeriodType,
        expiryPeriod: expiryPeriod ?? this.expiryPeriod,
        enableSrNo: enableSrNo ?? this.enableSrNo,
        warrantyId: warrantyId ?? this.warrantyId,
        productVariationRequests:
            productVariationRequests ?? this.productVariationRequests,
      );

  factory AddProductRequest.fromRawJson(String str) =>
      AddProductRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddProductRequest.fromJson(Map<String, dynamic> json) =>
      AddProductRequest(
        name: json['name'],
        branchId: json['brand_id'],
        unitId: json['unit_id'],
        categoryId: json['category_id'],
        tax: json['tax'],
        barcodeType: json['barcode_type'],
        sku: json['sku'],
        alertQuantity:
            json['alert_quantity'],
        taxType: json['tax_type'],
        productDescription: json['product_description'],
        type: json['type'],
        enableStock: json['enable_stock'],
        notForSelling:
            json['not_for_selling'],
        enableProductExpiry: json['enable_product_expiry'],
        expiryPeriodType: json['expiry_period_type'],
        expiryPeriod:
            json['expiry_period'],
        enableSrNo: json['enable_sr_no'],
        warrantyId: json['warranty_id'],
        productVariationRequests: json["product_variation"] == null
            ? null
            : List<ProductVariationRequest>.from(json["product_variation"]
                .map((x) => ProductVariationRequest.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'name': name == null ? null : name,
        'brand_id': branchId == null ? null : branchId,
        'unit_id': unitId == null ? null : unitId,
        'category_id': categoryId == null ? null : categoryId,
        'tax': tax == null ? null : tax,
        'barcode_type': "C128",
        //barcodeType == null ? null : barcodeType.toString(),
        'sku': sku == null ? null : sku,
        'alert_quantity': alertQuantity == null ? null : alertQuantity,
        'tax_type': taxType == null ? null : taxType,
        'product_description':
            productDescription,
        'type': type,
        'enable_stock': enableStock,
        'not_for_selling': notForSelling,
        'enable_product_expiry':
            enableProductExpiry,
        'expiry_period_type':
            expiryPeriodType == null ? null : expiryPeriodType,
        'expiry_period': expiryPeriod == null ? null : expiryPeriod,
        'enable_sr_no': enableSrNo == null ? null : enableSrNo,
        'warranty_id': warrantyId == null ? null : warrantyId,
        'single_dpp_inc_tax': defaultBuyPrice == null ? null : defaultBuyPrice,
        'single_dsp_inc_tax':
            defaultSellPrice == null ? null : defaultSellPrice,
        "product_variation": productVariationRequests == null
            ? null
            : List<dynamic>.from(
                productVariationRequests!.map((x) => x.toJson())),

        "image": img == null ? null : img,
      };
}

class ProductVariationRequest {
  // int? id;
  // String? name;
  int? variationTemplateId;
  List<VariationRequest>? variationRequests;

  ProductVariationRequest({
    // this.id,
    // this.name,
    this.variationTemplateId,
    this.variationRequests,
  });

  ProductVariationRequest copyWith({
    // int? id,
    // String? name,
    int? variationTemplateId,
    List<VariationRequest>? variationRequests,
  }) =>
      ProductVariationRequest(
        // id: id ?? this.id,
        // name: name ?? this.name,
        variationTemplateId: variationTemplateId ?? this.variationTemplateId,
        variationRequests: variationRequests ?? this.variationRequests,
      );

  factory ProductVariationRequest.fromRawJson(String str) =>
      ProductVariationRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductVariationRequest.fromJson(Map<String, dynamic> json) =>
      ProductVariationRequest(
        // id: json['id'] == null ? null : json['id'],
        // name: json['name'] == null ? null : json['name'],
        variationTemplateId: json['variation_template_id'] == null
            ? null
            : json['variation_template_id'],
        variationRequests: json["variations"] == null
            ? null
            : List<VariationRequest>.from(
                json["variations"].map((x) => VariationRequest.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        // 'id': id == null ? null : id,
        // 'name': name == null ? null : name,
        'variation_template_id':
            variationTemplateId,
        "variations": variationRequests == null
            ? null
            : List<dynamic>.from(variationRequests!.map((x) => x.toJson())),
      };
}

class VariationRequest {
  int? id;
  String? subSku;
  String? value;
  
  double? dppIncTax;
  double? profitPercent;
  double? sellPriceIncTax;
  double? defaultSellPrice;
  double? defaultPurchasePrice;

  VariationRequest({
    this.id,
    this.subSku,
    this.value,
    this.defaultPurchasePrice,
    this.dppIncTax,
    this.profitPercent,
    this.sellPriceIncTax,
    this.defaultSellPrice,
  });

  VariationRequest copyWith({
    int? id,
    String? subSku,
    String? value,
    double? defaultPurchasePrice,
    double? dppIncTax,
    double? profitPercent,
    double? sellPriceIncTax,
    double? defaultSellPrice,
  }) =>
      VariationRequest(
        id: id ?? this.id,
        subSku: subSku ?? this.subSku,
        value: value ?? this.value,
        defaultPurchasePrice: defaultPurchasePrice ?? this.defaultPurchasePrice,
        //dppIncTax: dppIncTax ?? this.dppIncTax,
        //profitPercent: profitPercent ?? this.profitPercent,
        //sellPriceIncTax: sellPriceIncTax ?? this.sellPriceIncTax,
        defaultSellPrice: defaultSellPrice ?? this.defaultSellPrice,
      );

  factory VariationRequest.fromRawJson(String str) =>
      VariationRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VariationRequest.fromJson(Map<String, dynamic> json) =>
      VariationRequest(
        id: json['variation_value_id'] == null ? null : json['id'],
        subSku: json['sub_sku'] == null ? null : json['sub_sku'],
        value: json['value'] == null ? null : json['value'],
        defaultPurchasePrice: json['default_purchase_price'] == null
            ? null
            : json['default_purchase_price'],
        dppIncTax: json['dpp_inc_tax'] == null ? null : json['dpp_inc_tax'],
        profitPercent:
            json['profit_percent'],
        sellPriceIncTax: json['sell_price_inc_tax'],
        defaultSellPrice: json['default_sell_price'],
      );

  Map<String, dynamic> toJson() => {
        'variation_value_id': id == null ? null : id,
        'sub_sku': subSku == null ? null : subSku,
        'value': value == null ? null : value,
        'default_purchase_price':
            defaultPurchasePrice,
        'dpp_inc_tax': dppIncTax,
        'profit_percent': profitPercent,
        'sell_price_inc_tax': sellPriceIncTax,
        'default_sell_price':
            defaultSellPrice,
      };
}
