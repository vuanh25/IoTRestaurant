

class AddStockAdjustmentRequest {
  String? refNo;
  String? adjustmentType;
  String? transactionDate;
  int? locationId;
  int? transferLocationId;
  dynamic searchProduct;
  String? finalTotal;
  List<ProductsRequest>? products;
  String? totalAmountRecovered;
  String? additionalNotes;

  AddStockAdjustmentRequest(
      {this.refNo,
      this.adjustmentType,
      this.transactionDate,
      this.locationId,
      this.transferLocationId,
      this.searchProduct,
      this.finalTotal,
      this.products,
      this.totalAmountRecovered,
      this.additionalNotes});

  AddStockAdjustmentRequest.fromJson(Map<String, dynamic> json) {
    refNo = json['ref_no'];
    adjustmentType = json['adjustment_type'];
    transactionDate = json['transaction_date'];
    locationId = json['location_id'];
    transferLocationId = json['transfer_location_id'];
    searchProduct = json['search_product'];
    finalTotal = json['final_total'];
    if (json['products'] != null) {
      products = <ProductsRequest>[];
      json['products'].forEach((v) {
        products!.add(ProductsRequest.fromJson(v));
      });
    }
    totalAmountRecovered = json['total_amount_recovered'];
    additionalNotes = json['additional_notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ref_no'] = refNo;
    data['adjustment_type'] = adjustmentType;
    data['transaction_date'] = transactionDate;
    data['location_id'] = locationId;
    data['transfer_location_id'] = transferLocationId;
    data['search_product'] = searchProduct;
    data['final_total'] = finalTotal;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    data['total_amount_recovered'] = totalAmountRecovered;
    data['additional_notes'] = additionalNotes;
    return data;
  }
}

class ProductsRequest {
  String? lotNoLineId;
  int? productId;
  int? variationId;
  int? enableStock;
  String? quantity;
  dynamic baseUnitMultiplier;
  int? productUnitId;
  int? subUnitId;
  String? unitPrice;
  String? price;

  ProductsRequest(
      {this.lotNoLineId,
      this.productId,
      this.variationId,
      this.enableStock,
      this.quantity,
      this.baseUnitMultiplier,
      this.productUnitId,
      this.subUnitId,
      this.unitPrice,
      this.price});

  ProductsRequest.fromJson(Map<String, dynamic> json) {
    lotNoLineId = json['lot_no_line_id'];
    productId = json['product_id'];
    variationId = json['variation_id'];
    enableStock = json['enable_stock'];
    quantity = json['quantity'];
    baseUnitMultiplier = json['base_unit_multiplier'];
    productUnitId = json['product_unit_id'];
    subUnitId = json['sub_unit_id'];
    unitPrice = json['unit_price'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lot_no_line_id'] = lotNoLineId;
    data['product_id'] = productId;
    data['variation_id'] = variationId;
    data['enable_stock'] = enableStock;
    data['quantity'] = quantity;
    data['base_unit_multiplier'] = baseUnitMultiplier;
    data['product_unit_id'] = productUnitId;
    data['sub_unit_id'] = subUnitId;
    data['unit_price'] = unitPrice;
    data['price'] = price;
    return data;
  }
}