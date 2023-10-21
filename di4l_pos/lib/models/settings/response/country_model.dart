import 'dart:convert';

class CountryModel {
  CountryModel({
    this.countryCode,
    this.flagUrl,
    this.countryName,
    this.isSelected,
  });

  String? countryCode;
  String? flagUrl;
  String? countryName;
  bool? isSelected;

  CountryModel copyWith({
    String? countryCode,
    String? flagUrl,
    String? countryName,
    bool? isSelected,
  }) =>
      CountryModel(
        countryCode: countryCode ?? this.countryCode,
        flagUrl: flagUrl ?? this.flagUrl,
        countryName: countryName ?? this.countryName,
        isSelected: isSelected ?? this.isSelected,
      );

  factory CountryModel.fromRawJson(String str) =>
      CountryModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        countryCode: json["country_code"],
        flagUrl: json["flag_url"],
        countryName: json["country_name"],
        isSelected: json["isSelected"],
      );

  Map<String, dynamic> toJson() => {
        "country_code": countryCode,
        "flag_url": flagUrl,
        "country_name": countryName,
        "isSelected": isSelected,
      };
}
