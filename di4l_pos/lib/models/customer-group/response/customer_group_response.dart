import 'dart:convert';

class CustomerGroupResponse {
  CustomerGroupResponse({
    this.data,
  });

  List<CustomerGroupModel>? data;

  CustomerGroupResponse copyWith({
    List<CustomerGroupModel>? data,
  }) =>
      CustomerGroupResponse(
        data: data ?? this.data,
      );

  factory CustomerGroupResponse.fromRawJson(String str) =>
      CustomerGroupResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomerGroupResponse.fromJson(Map<String, dynamic> json) =>
      CustomerGroupResponse(
        data: json["data"] == null
            ? null
            : List<CustomerGroupModel>.from(
                json["data"].map((x) => CustomerGroupModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CustomerGroupModel {
  CustomerGroupModel({
    this.id,
    this.name,
    this.priceCalculationType,
    this.amount,
    this.sellingPriceGroup,
    this.businessId,
    this.createBy,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? priceCalculationType;
  dynamic amount;
  dynamic sellingPriceGroup;
  int? businessId;
  int? createBy;
  String? createdAt;
  String? updatedAt;

  CustomerGroupModel copyWith({
    int? id,
    String? name,
    String? priceCalculationType,
    dynamic amount,
    dynamic sellingPriceGroup,
    int? businessId,
    int? createBy,
    String? createdAt,
    String? updatedAt,
  }) =>
      CustomerGroupModel(
        id: id ?? this.id,
        name: name ?? this.name,
        priceCalculationType: priceCalculationType ?? this.priceCalculationType,
        amount: amount ?? this.amount,
        sellingPriceGroup: sellingPriceGroup ?? this.sellingPriceGroup,
        businessId: businessId ?? this.businessId,
        createBy: createBy ?? this.createBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory CustomerGroupModel.fromRawJson(String str) =>
      CustomerGroupModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomerGroupModel.fromJson(Map<String, dynamic> json) =>
      CustomerGroupModel(
        id: json["id"],
        name: json["name"],
        priceCalculationType: json["price_calculation_type"],
        amount: json["amount"],
        sellingPriceGroup: json["selling_price_group"],
        businessId: json["business_id"],
        createBy: json["created_by"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price_calculation_type":
            priceCalculationType,
        "amount": amount,
        "selling_price_group":
            sellingPriceGroup,
        "business_id": businessId,
        "created_by": createBy,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
