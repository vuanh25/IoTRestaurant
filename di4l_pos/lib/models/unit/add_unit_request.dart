import 'dart:convert';

class AddUnitRequest {
  String? actualName;
  String? shortName;
  int? allowDecimal;
  bool? defineBaseUnit;
  int? baseUnitId;
  dynamic baseUnitMultiplier;

  AddUnitRequest({
    required this.actualName,
    required this.shortName,
    required this.allowDecimal,
    required this.defineBaseUnit,
    required this.baseUnitId,
    required this.baseUnitMultiplier,
  });

  AddUnitRequest copyWith(
          {String? actualName,
          String? shortName,
          int? allowDecimal,
          bool? defineBaseUnit,
          int? baseUnitId,
          dynamic baseUnitMultiplier}) =>
      AddUnitRequest(
        actualName: actualName ?? this.actualName,
        shortName: shortName ?? this.shortName,
        allowDecimal: allowDecimal ?? this.allowDecimal,
        defineBaseUnit: defineBaseUnit ?? this.defineBaseUnit,
        baseUnitId: baseUnitId ?? this.baseUnitId,
        baseUnitMultiplier: baseUnitMultiplier ?? this.baseUnitMultiplier,
      );

  factory AddUnitRequest.fromRawJson(String str) =>
      AddUnitRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddUnitRequest.fromJson(Map<String, dynamic> json) => AddUnitRequest(
        actualName: json['actual_name'],
        shortName: json['short_name'],
        allowDecimal:
            json['allow_decimal'],
        defineBaseUnit:
            json['define_base_unit'],
        baseUnitId: json['base_unit_id'],
        baseUnitMultiplier: json['base_unit_multiplier'],
      );

  Map<String, dynamic> toJson() => {
        'actual_name': actualName,
        'short_name': shortName,
        'allow_decimal': allowDecimal,
        'define_base_unit': defineBaseUnit,
        'base_unit_id': baseUnitId,
        'base_unit_multiplier':
            baseUnitMultiplier,
      };
}
