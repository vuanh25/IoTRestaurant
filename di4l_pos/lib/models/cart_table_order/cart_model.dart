import 'dart:convert';
import 'package:di4l_pos/models/products/response/product_response.dart';

class ItemProduct {
  ItemProduct({
    this.productId,
    this.variationId,
    this.name,
    this.description,
    this.unit,
    this.quantity,
    this.price,
    this.imageUrl,
    this.discountType,
    this.discountAmount,
    this.modifierSets,
    this.modifier,
    this.addOns,
    this.productVariations,
  });

  int? productId;
  int? variationId;
  String? name;
  String? description;
  UnitCart? unit;
  int? quantity;
  int? price;
  String? imageUrl;
  String? discountType;
  String? discountAmount;
  List<int>? modifier;
  List<ModifierSet>? modifierSets;
  List<ModifierCart>? addOns;
  List<ProductVariation?>? productVariations;

  ItemProduct copyWith({
    int? productId,
    int? variationId,
    String? name,
    String? description,
    UnitCart? unit,
    int? quantity,
    int? price,
    String? imageUrl,
    String? discountType,
    String? discountAmount,
    List<ModifierSet>? modifierSets,
    List<ModifierCart>? addOns,
    List<ProductVariation?>? productVariations,
  }) =>
      ItemProduct(
        productId: productId ?? this.productId,
        variationId: variationId ?? this.variationId,
        name: name ?? this.name,
        description: description ?? this.description,
        unit: unit ?? this.unit,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        imageUrl: imageUrl ?? this.imageUrl,
        discountType: discountType ?? this.discountType,
        discountAmount: discountAmount ?? this.discountAmount,
        modifierSets: modifierSets ?? this.modifierSets,
        addOns: addOns ?? this.addOns,
        productVariations: productVariations ?? this.productVariations,
      );

  factory ItemProduct.fromRawJson(String str) =>
      ItemProduct.fromJson(json.decode(str));

  String? toRawJson(ItemProduct itemProduct) =>
      json.encode(toJson(itemProduct));

  ItemProduct.fromJson(Map<String, dynamic> json) {
    productId = json["product_id"];
    variationId = json["variation_id"];
    name = json["name"];
    description = json["description"];
    unit = json["unit"] == null ? null : UnitCart.fromJson(json["unit"]);
    quantity = json["quantity"];
    price = json["price"];
    imageUrl = json["image_url"];
    discountType = json["discount_type"];
    discountAmount = json["discount_amount"];
    if (json['modifier_sets'] != null) {
      modifierSets = <ModifierSet>[];
      modifierSets = json["modifier_sets"].forEach((x) {
        ModifierSet.fromJson(x);
      });
    }
    if (json['add_ons'] != null) {
      addOns = <ModifierCart>[];
      addOns = json["add_ons"].forEach((x) {
        ModifierCart.fromJson(x);
      });
    }
    if (json['product_variations'] != null) {
      productVariations = <ProductVariation>[];
      productVariations = json["product_variations"].forEach((v) {
        productVariations!.add(ProductVariation.fromJson(v));
      });
    }
  }

  static Map<String, dynamic> toJson(ItemProduct itemProduct) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["product_id"] = itemProduct.productId;
    data["variation_id"] = itemProduct.variationId;
    data["name"] = itemProduct.name;
    data["description"] = itemProduct.description;
    data["unit"] = itemProduct.unit == null ? null : itemProduct.unit!.toJson();
    data["quantity"] = itemProduct.quantity;
    data["price"] = itemProduct.price;
    data["image_url"] = itemProduct.imageUrl;
    data["discount_type"] = itemProduct.discountType;
    data["discount_amount"] = itemProduct.discountAmount;
    if (itemProduct.modifierSets != null) {
      data["modifier_sets"] =
          itemProduct.modifierSets!.map((v) => v.toJson()).toList();
    }
    if (itemProduct.addOns != null) {
      data["add_ons"] = itemProduct.addOns!.map((v) => v.toJson()).toList();
    }
    if (itemProduct.productVariations != null) {
      data["product_variations"] =
          itemProduct.productVariations!.map((v) => v!.toJson()).toList();
    }

    // data["add_ons"] = itemProduct.addOns == null
    //     ? null
    //     : List<ModifierCart>.from(itemProduct.addOns!.map((x) => x.toJson()));
    // data["product_variations"] = itemProduct.productVariations == null
    //     ? null
    //     : List<ProductVariation>.from(
    //         itemProduct.productVariations!.map((x) => x!.toJson()));
    return data;
  }

  static String encode(List<ItemProduct> itemProducts) => json.encode(
        itemProducts
            .map<Map<String, dynamic>>(
                (itemProduct) => ItemProduct.toJson(itemProduct))
            .toList(),
      );

  static List<ItemProduct> decode(String itemProducts) {
    if (itemProducts != "") {
      (json.decode(itemProducts) as List<dynamic>)
          .map<ItemProduct>((item) => ItemProduct.fromJson(item))
          .toList();
    }
    return [];
  }
}

class ModifierSet {
  ModifierSet({
    required this.modifierSetId,
    required this.modifierSetName,
    required this.modifierCart,
  });
  int? modifierSetId;
  String? modifierSetName;
  List<ModifierCart>? modifierCart;

  factory ModifierSet.fromRawJson(String str) =>
      ModifierSet.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  ModifierSet.fromJson(Map<String, dynamic> json) {
    modifierSetId = json['modifier_set_id'];
    modifierSetName = json['modifier_set_name'];
    if (json['modifier_cart'] != null) {
      modifierCart = <ModifierCart>[];
      json['modifier_cart'].forEach((v) {
        modifierCart!.add(ModifierCart.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['modifier_set_id'] = modifierSetId;
    data['modifier_set_name'] = modifierSetName;
    if (modifierCart != null) {
      data['modifier_cart'] = modifierCart!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModifierCart {
  ModifierCart({
    required this.variationId,
    required this.name,
    required this.quantity,
    required this.price,
  });

  int? variationId;
  String? name;
  int? quantity;
  int? price;

  ModifierCart copyWith({
    int? variationId,
    String? name,
    int? quantity,
    int? price,
  }) =>
      ModifierCart(
        variationId: variationId ?? this.variationId,
        name: name ?? this.name,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
      );

  factory ModifierCart.fromRawJson(String str) =>
      ModifierCart.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory ModifierCart.fromJson(Map<String, dynamic> json) => ModifierCart(
        variationId: json["variation_id"],
        name: json["name"],
        quantity: json["quantity"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "variation_id": variationId,
        "name": name,
        "quantity": quantity,
        "price": price,
      };
}

class UnitCart {
  UnitCart({
    required this.unitId,
    required this.shortName,
  });

  int? unitId;
  String? shortName;

  UnitCart copyWith({
    int? unitId,
    String? shortName,
  }) =>
      UnitCart(
        unitId: unitId ?? this.unitId,
        shortName: shortName ?? this.shortName,
      );

  factory UnitCart.fromRawJson(String str) =>
      UnitCart.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory UnitCart.fromJson(Map<String, dynamic> json) => UnitCart(
        unitId: json["unit_id"],
        shortName: json["short_name"],
      );

  Map<String, dynamic> toJson() => {
        "unit_id": unitId,
        "name": shortName,
      };
}
