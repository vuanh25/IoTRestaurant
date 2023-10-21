import 'dart:convert';

class AddCustomerGroupRequest {
  String? name;
  String? priceCalculationType;
  dynamic amount;
  int? sellingPriceGroupId;

  AddCustomerGroupRequest({
    this.name,
    this.priceCalculationType,
    this.amount,
    this.sellingPriceGroupId,
  });

  AddCustomerGroupRequest copyWith({
    String? name,
    String? priceCalculationType,
    dynamic amount,
    int? sellingPriceGroupId,
  }) =>
      AddCustomerGroupRequest(
        name: name ?? this.name,
        priceCalculationType: priceCalculationType ?? this.priceCalculationType,
        amount: amount ?? this.amount,
        sellingPriceGroupId: sellingPriceGroupId ?? this.sellingPriceGroupId,
      );

  factory AddCustomerGroupRequest.fromRawJson(String str) =>
      AddCustomerGroupRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCustomerGroupRequest.fromJson(Map<String, dynamic> json) =>
      AddCustomerGroupRequest(
        name: json['name'],
        priceCalculationType: json['price_calculation_type'],
        amount: json['amount'],
        sellingPriceGroupId:
            json['description'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'price_calculation_type':
            priceCalculationType,
        'amount': amount,
        'selling_price_group_id':
            sellingPriceGroupId,
      };
}
