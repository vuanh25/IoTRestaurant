// ignore_for_file: file_names

import 'dart:convert';

class ManageMenu{
  ManageMenu([
    this.info,
    this.key,
    this.icon1,
    this.icon2,
    this.title,
    this.isSelected = false,
    this.parentMenu,]);
  String? info;
  String? icon1;
  String? icon2;
  String? title;
  String? key;
  bool? isSelected;
  String? parentMenu;

ManageMenu copyWith({
    String? info,
    String? icon1,
    String? icon2,
    String? title,
    String? key,
    bool? isSelected,
    String? parentMenu,
  }) => ManageMenu(
    info ?? this.info,
    icon1 ?? this.icon1,
    icon2 ?? this.icon2,
    title ?? this.title,
    key ?? this.key,
    isSelected ?? this.isSelected,
    parentMenu ?? this.parentMenu,
  );
  
   factory ManageMenu.fromRawJson(String str) =>
      ManageMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ManageMenu.fromJson(Map<String, dynamic> json) => ManageMenu(
    json["info"],
    json["icon1"],
    json["icon2"],
    json["title"],
    json["key"],
    json["isSelected"],
    json["parentMenu"],
  );

  Map<String, dynamic> toJson() => {
    "info": info,
    "icon1": icon1,
    "icon2": icon2,
    "title": title,
    "key": key,
    "isSelected": isSelected,
    "parentMenu": parentMenu,
  };

}