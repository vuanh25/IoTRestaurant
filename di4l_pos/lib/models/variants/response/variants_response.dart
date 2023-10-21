import 'dart:convert';

class VariantsResponse {
  VariantsResponse({
    this.success,
    this.message,
    this.data,
  });
  bool? success;
  String? message;
  List<Variant>? data;

  VariantsResponse copyWith({
    bool? success,
    String? message,
    List<Variant>? data,
  }) =>
      VariantsResponse(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory VariantsResponse.fromRawJson(String str) =>
      VariantsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VariantsResponse.fromJson(Map<String, dynamic> json) =>
      VariantsResponse(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? null
            : List<Variant>.from(json["data"].map((x) => Variant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Variant {
  Variant({
    this.id,
    this.name,
    this.businessId,
    this.woocommerceAttrId,
    this.createdAt,
    this.updatedAt,
    this.values,
  });

  int? id;
  String? name;
  int? businessId;
  dynamic woocommerceAttrId;
  String? createdAt;
  String? updatedAt;
  List<ValueVariant>? values;
  Variant copyWith({
    int? id,
    String? name,
    int? businessId,
    dynamic woocommerceAttrId,
    String? createdAt,
    String? updatedAt,
    List<ValueVariant>? values,
  }) =>
      Variant(
        id: id ?? this.id,
        name: name ?? this.name,
        businessId: businessId ?? this.businessId,
        woocommerceAttrId: woocommerceAttrId ?? this.woocommerceAttrId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Variant.fromRawJson(String str) => Variant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json["id"],
        name: json["name"],
        businessId: json["business_id"],
        woocommerceAttrId: json["woocommerce_attr_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        values: json["values"] == null
            ? null
            : List<ValueVariant>.from(
                json["values"].map((x) => ValueVariant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "business_id": businessId,
        "woocommerce_attr_id":
            woocommerceAttrId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "values": values == null
            ? null
            : List<dynamic>.from(values!.map((x) => x.toJson())),
      };
}

class ValueVariant {
  ValueVariant({
    this.id,
    this.name,
    this.variationTemplateId,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  int? variationTemplateId;
  String? createdAt;
  String? updatedAt;

  ValueVariant copyWith({
    int? id,
    String? name,
    int? variationTemplateId,
    String? createdAt,
    String? updatedAt,
  }) =>
      ValueVariant(
        id: id ?? this.id,
        name: name ?? this.name,
        variationTemplateId: variationTemplateId ?? this.variationTemplateId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory ValueVariant.fromRawJson(String str) =>
      ValueVariant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ValueVariant.fromJson(Map<String, dynamic> json) => ValueVariant(
        id: json["id"],
        name: json["name"],
        variationTemplateId: json["variation_template_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "variation_template_id":
            variationTemplateId,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
