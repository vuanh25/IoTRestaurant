import 'dart:convert';

class AccountRequest {
  AccountRequest({
    this.userId,
  });

  int? userId;

  AccountRequest copyWith({
    int? userId,
  }) =>
      AccountRequest(
        userId: userId ?? this.userId,
      );

  factory AccountRequest.fromRawJson(String str) =>
      AccountRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountRequest.fromJson(Map<String, dynamic> json) => AccountRequest(
        userId: json["account"],
      );

  Map<String, dynamic> toJson() => {
        "account": userId,
      };
}
