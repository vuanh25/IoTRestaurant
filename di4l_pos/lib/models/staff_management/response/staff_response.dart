import 'dart:convert';

class StaffResponse {
  StaffResponse({
    this.data,
  });

  List<Staff>? data;

  StaffResponse copyWith({
    List<Staff>? data,
  }) =>
      StaffResponse(
        data: data ?? this.data,
      );

  factory StaffResponse.fromRawJson(String str) =>
      StaffResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StaffResponse.fromJson(Map<String, dynamic> json) => StaffResponse(
        data: json["data"] == null
            ? null
            : List<Staff>.from(json["data"].map((x) => Staff?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Staff {
  Staff({
    this.id,
    this.username,
    this.fullName,
    this.email,
    this.referralBy,
    this.allowLogin,
    this.referral,
  });

  int? id;
  String? username;
  String? fullName;
  String? email;
  int? referralBy;
  int? allowLogin;
  Refferal? referral;

  Staff copyWith({
    int? id,
    String? username,
    String? fullName,
    String? email,
    int? referralBy,
    int? allowLogin,
    Refferal? referral,
  }) =>
      Staff(
        id: id ?? this.id,
        username: username ?? this.username,
        fullName: fullName ?? this.fullName,
        email: email ?? this.email,
        referralBy: referralBy ?? this.referralBy,
        allowLogin: allowLogin ?? this.allowLogin,
        referral: referral ?? this.referral,
      );

  factory Staff.fromRawJson(String str) => Staff.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Staff.fromJson(Map<String, dynamic> json) => Staff(
        id: json["id"],
        username: json["username"],
        fullName: json["full_name"],
        email: json["email"],
        referralBy: json["referral_by"],
        allowLogin: json["allow_login"],
        referral: json["referral"] == null ? null : Refferal.fromJson(json["referral"]),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "full_name": fullName,
    "email": email,
    "referral_by": referralBy,
    "allow_login": allowLogin,
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