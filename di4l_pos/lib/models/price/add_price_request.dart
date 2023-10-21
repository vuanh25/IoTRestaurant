import 'dart:convert';

class AddPriceRequest {
  String? name;
  String? description;

  AddPriceRequest({
    required this.name,
    required this.description,
  });

  AddPriceRequest copyWith({String? name, String? description}) =>
      AddPriceRequest(
        name: name ?? this.name,
        description: description ?? this.description,
      );

  factory AddPriceRequest.fromRawJson(String str) =>
      AddPriceRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddPriceRequest.fromJson(Map<String, dynamic> json) =>
      AddPriceRequest(
        name: json['name'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
      };
}
