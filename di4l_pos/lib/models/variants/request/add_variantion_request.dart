import 'dart:convert';

class AddVariantRequest {
  AddVariantRequest({
    this.id,
    this.name,
    this.values,
    this.editVariationValues,
  });
  int? id;
  String? name;
  List<String>? values;
  List<VariantionValue>? editVariationValues;

  AddVariantRequest copyWith({
    int? id,
    String? name,
    List<String>? values,
    List<VariantionValue>? editVariationValues,
  }) =>
      AddVariantRequest(
        id: id ?? this.id,
        name: name ?? this.name,
        values: values ?? this.values,
        editVariationValues: editVariationValues ?? this.editVariationValues,
      );

  factory AddVariantRequest.fromRawJson(String str) =>
      AddVariantRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddVariantRequest.fromJson(Map<String, dynamic> json) =>
      AddVariantRequest(
        id: json["id"],
        name: json["name"],
        values: json["variation_values"],
        editVariationValues: json["edit_variation_values"] == null
            ? null
            : List<VariantionValue>.from(json["edit_variation_values"]
                .map((x) => VariantionValue.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "variation_values": values,
        "edit_variation_values": editVariationValues == null
            ? null
            : List<dynamic>.from(editVariationValues!.map((x) => x.toJson())),
      };
}

class VariantionValue {
  VariantionValue({
    this.id,
    this.name,
  });
  int? id;
  String? name;

  VariantionValue copyWith({
    int? id,
    String? name,
  }) =>
      VariantionValue(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory VariantionValue.fromRawJson(String str) =>
      VariantionValue.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VariantionValue.fromJson(Map<String, dynamic> json) =>
      VariantionValue(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
