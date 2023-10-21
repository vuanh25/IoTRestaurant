import 'dart:convert';

class AffiliateReferralUsersResponse {
  AffiliateReferralUsersResponse({
    this.data,
  });

  List<AffiliateReferralUser>? data;

  AffiliateReferralUsersResponse copyWith({
    List<AffiliateReferralUser>? data,
  }) =>
      AffiliateReferralUsersResponse(
        data: data ?? this.data,
      );

  factory AffiliateReferralUsersResponse.fromRawJson(String str) =>
      AffiliateReferralUsersResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliateReferralUsersResponse.fromJson(Map<String, dynamic> json) => AffiliateReferralUsersResponse(
        data: json["data"]["data"] == null
            ? null
            : List<AffiliateReferralUser>.from(json["data"]["data"].map((x) => AffiliateReferralUser?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AffiliateReferralUser {
  AffiliateReferralUser({
    this.id,
    this.username,
    this.fullName,
    this.email,
    this.referralBy,
    this.allowLogin,
  });

  int? id;
  String? username;
  String? fullName;
  String? email;
  int? referralBy;
  int? allowLogin;

  AffiliateReferralUser copyWith({
    int? id,
    String? username,
    String? fullName,
    String? email,
    int? referralBy,
    int? allowLogin,
  }) =>
      AffiliateReferralUser(
        id: id ?? this.id,
        username: username ?? this.username,
        fullName: fullName ?? this.fullName,
        email: email ?? this.email,
        referralBy: referralBy ?? this.referralBy,
        allowLogin: allowLogin ?? this.allowLogin,
      );

  factory AffiliateReferralUser.fromRawJson(String str) => AffiliateReferralUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliateReferralUser.fromJson(Map<String, dynamic> json) => AffiliateReferralUser(
        id: json["id"],
        username: json["username"],
        fullName: json["full_name"],
        email: json["email"],
        referralBy: json["referral_by"],
        allowLogin: json["allow_login"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "full_name": fullName,
    "email": email,
    "referral_by": referralBy,
    "allow_login": allowLogin,
  };
}