import 'dart:convert';

class Onboard {
  Onboard({
    this.icon,
    this.title,
    this.description,
  });

  String? icon;
  String? title;
  String? description;

  Onboard copyWith({
    String? icon,
    String? title,
    String? description,
  }) =>
      Onboard(
        icon: icon ?? this.icon,
        title: title ?? this.title,
        description: description ?? this.description,
      );

  factory Onboard.fromRawJson(String str) => Onboard.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Onboard.fromJson(Map<String, dynamic> json) => Onboard(
        icon: json["icon"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "title": title,
        "description": description,
      };
}
