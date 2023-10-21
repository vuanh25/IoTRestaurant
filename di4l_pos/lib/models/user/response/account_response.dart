import 'dart:convert';

import 'package:di4l_pos/common/global_configs.dart';

class AccountResponse {
  AccountResponse({
    this.email,
    this.data,
  });

  String? email;
  List<Account>? data;

  AccountResponse copyWith({
    String? email,
    List<Account>? data,
  }) =>
      AccountResponse(
        email: email ?? this.email,
        data: data ?? this.data,
      );

  factory AccountResponse.fromRawJson(String str) =>
      AccountResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountResponse.fromJson(Map<String, dynamic> json) =>
      AccountResponse(
        email: json["email"],
        data: json["data"] == null
            ? null
            : List<Account>.from(json["data"].map((x) => Account?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Account {
  Account({
    this.userId,
    this.businessId,
    this.firstName,
    this.lastName,
    this.businessName,
    this.logo,
  });

  int? userId;
  int? businessId;
  String? firstName;
  String? lastName;
  String? businessName;
  String? logo;

  Account copyWith({
    int? userId,
    int? businessId,
    String? firstName,
    String? lastName,
    String? businessName,
    String? logo,
  }) =>
      Account(
        userId: userId ?? this.userId,
        businessId: businessId ?? this.businessId,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        businessName: businessName ?? this.businessName,
        logo: logo ?? this.logo,
      );

  factory Account.fromRawJson(String str) => Account.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        userId: json["user_id"],
        businessId: json["business_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        businessName: json["business_name"],
        logo: json["logo"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "business_id": businessId,
        "first_name": firstName,
        "last_name": lastName,
        "business_name": businessName,
        "logo": logo,
      };

  String getName() {
    final name = businessName ?? '$firstName $lastName';
    return name;
  }

  String bLogo() {
    return logo != null
        ? '${GlobalConfigs.kBaseUrl}/uploads/business_logos/${logo!}'
        : '';
  }
}
