import 'dart:convert';

class AddProductStockRequest {
  int? productId;
  Map<String, Map<String, List<Purchase>>>? stocks;

  AddProductStockRequest({this.productId, this.stocks});

  factory AddProductStockRequest.fromRawJson(String str) =>
      AddProductStockRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddProductStockRequest.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> stocksJson = json['stocks'];
    Map<String, Map<String, List<Purchase>>> stocks = {};
    stocksJson.forEach((location, variationsJson) {
      Map<String, List<Purchase>> variations = {};
      variationsJson.forEach((variation, purchasesJson) {
        List<Purchase> purchases = [];
        purchasesJson.forEach((purchaseJson) {
          Purchase purchase = Purchase.fromJson(purchaseJson);
          purchases.add(purchase);
        });
        variations[variation] = purchases;
      });
      stocks[location] = variations;
    });
    return AddProductStockRequest(
      productId: json['product_id'],
      stocks: stocks,
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> stocksJson = {};
    stocks!.forEach((location, variations) {
      Map<String, List<Map<String, dynamic>>> variationsJson = {};
      variations.forEach((variation, purchases) {
        List<Map<String, dynamic>> purchasesJson = [];
        for (int i = 0; i < purchases.length; i++) {
          Map<String, dynamic> purchaseJson = purchases[i].toJson();
          purchasesJson.add(purchaseJson);
        }
        variationsJson[variation] = purchasesJson;
      });
      stocksJson[location] = variationsJson;
    });
    return {
      'product_id': productId,
      'stocks': stocksJson,
    };
  }
}

class Purchase {
  String? purchaseLineId;
  String? quantity;
  String? purchasePrice;
  String? expDate;
  String? transactionDate;
  String? purchaseLineNote;

  Purchase({
    this.purchaseLineId,
    this.quantity,
    this.purchasePrice,
    this.expDate,
    this.transactionDate,
    this.purchaseLineNote,
  });

  factory Purchase.fromJson(Map<String, dynamic> json) {
    return Purchase(
      purchaseLineId: json['purchase_line_id'],
      quantity: json['quantity'],
      purchasePrice: json['purchase_price'],
      expDate: json['exp_date'],
      transactionDate: json['transaction_date'],
      purchaseLineNote: json['purchase_line_note'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'purchase_line_id': purchaseLineId,
      'quantity': quantity,
      'purchase_price': purchasePrice,
      'exp_date': expDate,
      'transaction_date': transactionDate,
      'purchase_line_note': purchaseLineNote,
    };
  }
}
