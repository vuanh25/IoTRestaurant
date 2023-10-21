// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MenuData {
  List<Item> items;
  MenuData({required this.items});
  MenuData copyWith({required List<Item> items}) {
    return MenuData(items: items);
  }

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() =>
      {"items": List<dynamic>.from(items.map((x) => x.toJson()))};

  factory MenuData.fromRawJson(String str) =>
      MenuData.fromJson(json.decode(str));

  factory MenuData.fromJson(Map<String?, dynamic> json) => MenuData(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );
}

class Item {
  Item(
    this.iconlink,
    this.title,
    this.route,
  );
  String? iconlink;
  String? title;
  String? route;

  Item copyWith({
    String? iconlink,
    String? title,
    String? route,
  }) {
    return Item(
      iconlink ?? this.iconlink,
      title ?? this.title,
      route ?? this.route,
    );
  }

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        json["iconlink"],
        json["title"],
        json["route"],
      );
  Map<String, dynamic> toJson() => {
        "iconlink": iconlink,
        "title": title,
        "route": route,
      };
}

List<dynamic> listItemMain = [
  Item('assets/svg/warehouse.svg', 'Kho hàng', null),
  Item('assets/svg/sms_icon.svg', 'Tin nhắn', null),
];
List<dynamic> listItemAdd = [
  Item('assets/svg/bao_cao.svg', 'Báo cáo', null),
  Item('assets/svg/gift_icon.svg', 'Quà tặng', null),
  Item('assets/svg/branch_icon.svg', 'Chợ sổ', null),
  Item('assets/svg/don_hang_hinhtron.svg', 'Sổ nợ', null),
  Item('assets/svg/online_store.svg', 'Bán online', null),
  Item('assets/svg/customer.svg', 'Khách hàng', null),
  Item('assets/svg/san_pham.svg', 'Sản phẩm', null),
  Item('assets/svg/don_hang.svg', 'Đơn hàng', null),
];
List<dynamic> listItem = [
  Item('assets/svg/warehouse.svg', 'Kho hàng', null),
  Item('assets/svg/sms_icon.svg', 'Tin nhắn', null),
  Item('assets/svg/bao_cao.svg', 'Báo cáo', null),
  Item('assets/svg/gift_icon.svg', 'Quà tặng', null),
  Item('assets/svg/branch_icon.svg', 'Chợ sổ', null),
  Item('assets/svg/don_hang_hinhtron.svg', 'Sổ nợ', null),
  Item('assets/svg/online_store.svg', 'Bán online', null),
  Item('assets/svg/customer.svg', 'Khách hàng', null),
  Item('assets/svg/san_pham.svg', 'Sản phẩm', null),
  Item('assets/svg/don_hang.svg', 'Đơn hàng', null),
];
