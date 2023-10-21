// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

class RevenueExpense {
  RevenueExpense([
    this.info,
    this.icon,
    this.title,
    this.key,
    this.isSelected = false,
    this.parentMenu,
  ]);
  String? info;
  String? icon;
  String? title;

  String? key;
  bool? isSelected;
  String? parentMenu;

  RevenueExpense copyWith({
    String? info,
    String? icon,
    String? title,
    String? key,
    bool? isSelected,
    String? parentMenu,
  }) =>
      RevenueExpense(
        info ?? this.info,
        icon ?? this.icon,
        title ?? this.title,
        key ?? this.key,
        isSelected ?? this.isSelected,
        parentMenu ?? this.parentMenu,
      );

  factory RevenueExpense.fromRawJson(String str) =>
      RevenueExpense.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RevenueExpense.fromJson(Map<String, dynamic> json) => RevenueExpense(
        json["info"] == null ? null : json["info"],
        json["icon"] == null ? null : json["icon"],
        json["title"] == null ? null : json["title"],
        json["key"] == null ? null : json["key"],
        json["isSelected"] == null ? null : json["isSelected"],
        json["parentMenu"] == null ? null : json["parentMenu"],
      );

  Map<String, dynamic> toJson() => {
        "info": info == null ? null : info,
        "icon1": icon == null ? null : icon,
        "title": title == null ? null : title,
        "key": key == null ? null : key,
        "isSelected": isSelected == null ? null : isSelected,
        "parentMenu": parentMenu == null ? null : parentMenu,
      };
}
