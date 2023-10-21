// To parse this JSON data, do
//
//     final getLinkResponse = getLinkResponseFromJson(jsonString);

import 'dart:convert';

class GetLinkResponse {
  List<Link>? data;

  GetLinkResponse({
    this.data,
  });

  GetLinkResponse copyWith({
    List<Link>? data,
  }) =>
      GetLinkResponse(
        data: data ?? this.data,
      );

  factory GetLinkResponse.fromRawJson(String str) =>
      GetLinkResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetLinkResponse.fromJson(Map<String, dynamic> json) =>
      GetLinkResponse(
        data: json["data"] == null
            ? []
            : List<Link>.from(json["data"]!.map((x) => Link.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Link {
  String? name;
  String? type;
  String? position;
  String? refer;
  dynamic parentMenu;
  int? order;

  Link({
    this.name,
    this.type,
    this.position,
    this.refer,
    this.parentMenu,
    this.order,
  });

  Link copyWith({
    String? name,
    String? type,
    String? position,
    String? refer,
    dynamic parentMenu,
    int? order,
  }) =>
      Link(
        name: name ?? this.name,
        type: type ?? this.type,
        position: position ?? this.position,
        refer: refer ?? this.refer,
        parentMenu: parentMenu ?? this.parentMenu,
        order: order ?? this.order,
      );

  factory Link.fromRawJson(String str) => Link.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        name: json["name"],
        type: json["type"],
        position: json["position"],
        refer: json["refer"],
        parentMenu: json["parent_menu"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "position": position,
        "refer": refer,
        "parent_menu": parentMenu,
        "order": order,
      };
}
