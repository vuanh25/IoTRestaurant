import 'dart:convert';

class GetContactsRequest {
  GetContactsRequest({this.type, this.name, this.page});

  String? type;
  String? name;
  int? page;

  GetContactsRequest copyWith({
    String? type,
    String? name,
    int? page,
  }) =>
      GetContactsRequest(
          type: type ?? this.type,
          name: name ?? this.name,
          page: page ?? this.page);

  factory GetContactsRequest.fromRawJson(String str) =>
      GetContactsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetContactsRequest.fromJson(Map<String, dynamic> json) =>
      GetContactsRequest(
        type: json["type"],
        name: json["name"],
        page: json["page"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "page": page,
      };
}
