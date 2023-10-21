import 'dart:convert';

class Pivot {
  Pivot({
    this.productId,
    this.locationId,
  });

  int? productId;
  int? locationId;

  Pivot copyWith({
    int? productId,
    int? locationId,
  }) =>
      Pivot(
        productId: productId ?? this.productId,
        locationId: locationId ?? this.locationId,
      );

  factory Pivot.fromRawJson(String str) => Pivot.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        productId: json["product_id"],
        locationId: json["location_id"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "location_id": locationId,
      };
}
