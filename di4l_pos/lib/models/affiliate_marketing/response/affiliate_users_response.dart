import 'dart:convert';

class AffiliateUsersResponse {
  AffiliateUsersResponse({
    this.data,
  });

  List<AffiliateUser>? data;

  AffiliateUsersResponse copyWith({
    List<AffiliateUser>? data,
  }) =>
      AffiliateUsersResponse(
        data: data ?? this.data,
      );

  factory AffiliateUsersResponse.fromRawJson(String str) =>
      AffiliateUsersResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliateUsersResponse.fromJson(Map<String, dynamic> json) => AffiliateUsersResponse(
        data: json["data"]["data"] == null
            ? null
            : List<AffiliateUser>.from(json["data"]["data"].map((x) => AffiliateUser?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AffiliateUser {
  AffiliateUser({
    this.id,
    this.username,
    this.fullName,
    this.email,
    this.referralBy,
    this.affiliateAmount,
    this.referral,
  });

  int? id;
  String? username;
  String? fullName;
  String? email;
  int? referralBy;
  double? affiliateAmount;
  Refferal? referral;

  AffiliateUser copyWith({
    int? id,
    String? username,
    String? fullName,
    String? email,
    int? referralBy,
    double? affiliateAmount,
    Refferal? referral,
  }) =>
      AffiliateUser(
        id: id ?? this.id,
        username: username ?? this.username,
        fullName: fullName ?? this.fullName,
        email: email ?? this.email,
        referralBy: referralBy ?? this.referralBy,
        affiliateAmount: affiliateAmount ?? this.affiliateAmount,
        referral: referral ?? this.referral,
      );

  factory AffiliateUser.fromRawJson(String str) => AffiliateUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliateUser.fromJson(Map<String, dynamic> json) => AffiliateUser(
        id: json["id"],
        username: json["username"],
        fullName: json["full_name"],
        email: json["email"],
        referralBy: json["referral_by"],
        affiliateAmount: double.parse(json["affiliate_amount"]),
        referral: json["referral"] == null ? null : Refferal.fromJson(json["referral"]),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "full_name": fullName,
    "email": email,
    "referral_by": referralBy,
    "affiliate_amount": affiliateAmount,
    "referral": referral!.toJson(),
  };
}

class Refferal {
  Refferal({
    this.id,
    this.userType,
    this.surname,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
  });

  int? id;
  String? userType;
  String? surname;
  String? firstName;
  String? lastName;
  String? username;
  String? email;

  Refferal copyWith({
    int? id,
    String? userType,
    String? surname,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
  }) =>
      Refferal(
        id: id ?? this.id,
        userType: userType ?? this.userType,
        surname: surname ?? this.surname,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        email: email ?? this.email,
      );

  factory Refferal.fromRawJson(String str) => Refferal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Refferal.fromJson(Map<String, dynamic> json) => Refferal(
        id: json["id"],
        userType: json["user_type"],
        surname: json["surname"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        username: json["username"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_type": userType,
    "surname": surname,
    "first_name": firstName,
    "last_name": lastName,
    "username": username,
    "email": email,
  };
}