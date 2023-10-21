import 'dart:convert';

class AffiliatePaymentHistoryResponse {
  AffiliatePaymentHistoryResponse({
    this.data,
  });

  List<AffiliatePayment>? data;

  AffiliatePaymentHistoryResponse copyWith({
    List<AffiliatePayment>? data,
  }) =>
      AffiliatePaymentHistoryResponse(
        data: data ?? this.data,
      );

  factory AffiliatePaymentHistoryResponse.fromRawJson(String str) =>
      AffiliatePaymentHistoryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliatePaymentHistoryResponse.fromJson(Map<String, dynamic> json) => AffiliatePaymentHistoryResponse(
        data: json["data"]["data"] == null
            ? null
            : List<AffiliatePayment>.from(json["data"]["data"].map((x) => AffiliatePayment?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AffiliatePayment {
  AffiliatePayment({
    this.id,
    this.amount,
    this.createAt,
  });

  int? id;
  double? amount;
  dynamic createAt;

  AffiliatePayment copyWith({
    int? id,
    double? amount,
    dynamic createAt,
  }) =>
      AffiliatePayment(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        createAt: createAt ?? this.createAt,
      );

  factory AffiliatePayment.fromRawJson(String str) => AffiliatePayment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliatePayment.fromJson(Map<String, dynamic> json) => AffiliatePayment(
        id: json["id"],
        amount: double.parse(json["amount"]),
        createAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "amount": amount.toString(),
    "created_at": createAt,
  };
}