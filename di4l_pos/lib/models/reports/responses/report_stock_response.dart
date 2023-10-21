import 'dart:convert';

class ReportStockResponse {
  ReportStockResponse({
    this.data,
  });

  List<ReportStockData>? data;

  ReportStockResponse copyWith({
    List<ReportStockData>? data,
  }) =>
      ReportStockResponse(
        data: data ?? this.data,
      );

  factory ReportStockResponse.fromRawJson(String str) =>
      ReportStockResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReportStockResponse.fromJson(Map<String, dynamic> json) =>
      ReportStockResponse(
        data: json["data"] == null
            ? null
            : List<ReportStockData>.from(
                json["data"].map((x) => ReportStockData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class ReportStockData {
  ReportStockData({
    this.totalSold,
    this.totalTransfered,
    this.totalAdjusted,
    this.stockPrice,
    this.stock,
    this.sku,
    this.product,
    this.type,
    this.productId,
    this.unit,
    this.enableStock,
    this.unitPrice,
    this.productVariation,
    this.variationName,
    this.locationName,
    this.locationId,
    this.variationId,
  });

  String? totalSold;
  dynamic totalTransfered;
  dynamic totalAdjusted;
  String? stockPrice;
  String? stock;
  String? sku;
  String? product;
  String? type;
  int? productId;
  String? unit;
  int? enableStock;
  String? unitPrice;
  String? productVariation;
  String? variationName;
  String? locationName;
  int? locationId;
  int? variationId;

  ReportStockData copyWith({
    String? totalSold,
    dynamic totalTransfered,
    dynamic totalAdjusted,
    String? stockPrice,
    String? stock,
    String? sku,
    String? product,
    String? type,
    int? productId,
    String? unit,
    int? enableStock,
    String? unitPrice,
    String? productVariation,
    String? variationName,
    String? locationName,
    int? locationId,
    int? variationId,
  }) =>
      ReportStockData(
        totalSold: totalSold ?? this.totalSold,
        totalTransfered: totalTransfered ?? this.totalTransfered,
        totalAdjusted: totalAdjusted ?? this.totalAdjusted,
        stockPrice: stockPrice ?? this.stockPrice,
        stock: stock ?? this.stock,
        sku: sku ?? this.sku,
        product: product ?? this.product,
        type: type ?? this.type,
        productId: productId ?? this.productId,
        unit: unit ?? this.unit,
        enableStock: enableStock ?? this.enableStock,
        unitPrice: unitPrice ?? this.unitPrice,
        productVariation: productVariation ?? this.productVariation,
        variationName: variationName ?? this.variationName,
        locationName: locationName ?? this.locationName,
        locationId: locationId ?? this.locationId,
        variationId: variationId ?? this.variationId,
      );

  factory ReportStockData.fromRawJson(String str) =>
      ReportStockData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReportStockData.fromJson(Map<String, dynamic> json) =>
      ReportStockData(
        totalSold: json["total_sold"],
        totalTransfered: json["total_transfered"],
        totalAdjusted: json["total_adjusted"],
        stockPrice: json["stock_price"],
        stock: json["stock"],
        sku: json["sku"],
        product: json["product"],
        type: json["type"],
        productId: json["product_id"],
        unit: json["unit"],
        enableStock: json["enable_stock"],
        unitPrice: json["unit_price"],
        productVariation: json["product_variation"],
        variationName:
            json["variation_name"],
        locationName:
            json["location_name"],
        locationId: json["location_id"],
        variationId: json["variation_id"],
      );

  Map<String, dynamic> toJson() => {
        "total_sold": totalSold,
        "total_transfered": totalTransfered,
        "total_adjusted": totalAdjusted,
        "stock_price": stockPrice,
        "stock": stock,
        "sku": sku,
        "product": product,
        "type": type,
        "product_id": productId,
        "unit": unit,
        "enable_stock": enableStock,
        "unit_price": unitPrice,
        "product_variation": productVariation,
        "variation_name": variationName,
        "location_name": locationName,
        "location_id": locationId,
        "variation_id": variationId,
      };
}
