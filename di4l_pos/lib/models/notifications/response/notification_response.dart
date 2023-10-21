import 'dart:convert';

class NotificationResponse {
  NotificationResponse({
    this.data,
  });

  List<NotificationModel>? data;

  NotificationResponse copyWith({
    List<NotificationModel>? data,
  }) =>
      NotificationResponse(
        data: data ?? this.data,
      );

  factory NotificationResponse.fromRawJson(String str) =>
      NotificationResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      NotificationResponse(
        data: json["data"] == null
            ? null
            : List<NotificationModel>.from(
                json["data"].map((x) => NotificationModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class NotificationModel {
  NotificationModel({
    this.msg,
    this.iconClass,
    this.link,
    this.readAt,
    this.createdAt,
  });

  String? msg;
  String? iconClass;
  String? link;
  dynamic readAt;
  String? createdAt;

  NotificationModel copyWith({
    String? msg,
    String? iconClass,
    String? link,
    dynamic readAt,
    String? createdAt,
  }) =>
      NotificationModel(
        msg: msg ?? this.msg,
        iconClass: iconClass ?? this.iconClass,
        link: link ?? this.link,
        readAt: readAt ?? this.readAt,
        createdAt: createdAt ?? this.createdAt,
      );

  factory NotificationModel.fromRawJson(String str) =>
      NotificationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        msg: json["msg"],
        iconClass: json["icon_class"],
        link: json["link"],
        readAt: json["read_at"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "icon_class": iconClass,
        "link": link,
        "read_at": readAt,
        "created_at": createdAt,
      };
}
