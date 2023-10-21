import 'dart:convert';

class HomeMenu {
  HomeMenu({
    this.icon,
    this.title,
    this.key,
    this.isSelected = false,
    this.parentMenu,
  });

  String? icon;
  String? title;
  String? key;
  bool? isSelected;
  String? parentMenu;

  HomeMenu copyWith({
    String? icon,
    String? title,
    String? key,
    bool? isSelected,
    String? parentMenu,
  }) =>
      HomeMenu(
        icon: icon ?? this.icon,
        title: title ?? this.title,
        key: key ?? this.key,
        isSelected: isSelected ?? this.isSelected,
        parentMenu: parentMenu ?? this.parentMenu,
      );

  factory HomeMenu.fromRawJson(String str) =>
      HomeMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeMenu.fromJson(Map<String, dynamic> json) => HomeMenu(
        icon: json["icon"],
        title: json["title"],
        key: json["key"],
        isSelected: json["isSelected"],
        parentMenu: json["parentMenu"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "title": title,
        "key": key,
        "isSelected": isSelected,
        "parentMenu": parentMenu,
      };
}
