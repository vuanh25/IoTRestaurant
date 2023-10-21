import 'dart:convert';

class RegisterRequest {
  RegisterRequest({
    this.surName,
    this.firstName,
    this.lastName,
    this.language,
    this.email,
    this.password,
    this.confirmPassword,
    this.businessName,
    this.stateDate,
    this.currencyId,
    this.timeZone,
    this.mobile,
  });

  String? surName;
  String? firstName;
  String? lastName;
  String? language;
  String? email;
  String? password;
  String? confirmPassword;
  String? businessName;
  String? stateDate;
  int? currencyId;
  String? timeZone;
  String? mobile;

  RegisterRequest copyWith({
    String? surName,
    String? firstName,
    String? lastName,
    String? language,
    String? email,
    String? password,
    String? confirmPassword,
    String? businessName,
    String? stateDate,
    int? currencyId,
    String? timeZone,
    String? mobile,
  }) =>
      RegisterRequest(
        surName: surName ?? this.surName,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        language: language ?? this.language,
        email: email ?? this.email,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        businessName: businessName ?? this.businessName,
        stateDate: stateDate ?? this.stateDate,
        currencyId: currencyId ?? this.currencyId,
        timeZone: timeZone ?? this.timeZone,
        mobile: mobile ?? this.mobile,
      );

  factory RegisterRequest.fromRawJson(String str) =>
      RegisterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
        surName: json["surname"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        language: json["language"],
        email: json["email"],
        businessName: json["name"],
        password: json["password"],
        confirmPassword:
            json["confirm_password"],
        stateDate: json["start_date"],
        currencyId: json["currency_id"],
        timeZone: json["time_zone"],
        mobile: json["mobile"],
      );

  Map<String, dynamic> toJson() => {
        "surname": surName,
        "first_name": firstName,
        "last_name": lastName,
        "language": language,
        "email": email,
        "password": password,
        "confirm_password": confirmPassword,
        "name": businessName,
        "start_date": stateDate,
        "currency_id": currencyId,
        "time_zone": timeZone,
        "mobile": mobile,
      };
}

class AddBusiness {
  AddBusiness({
    this.surName,
    this.firstName,
    this.lastName,
    this.language,
    this.businessName,
    this.stateDate,
    this.currencyId,
    this.timeZone,
    this.mobile,
  });

  String? surName;
  String? firstName;
  String? lastName;
  String? language;
  String? businessName;
  String? stateDate;
  int? currencyId;
  String? timeZone;
  String? mobile;

  AddBusiness copyWith({
    String? surName,
    String? firstName,
    String? lastName,
    String? language,
    String? businessName,
    String? stateDate,
    int? currencyId,
    String? timeZone,
    String? mobile,
  }) =>
      AddBusiness(
        surName: surName ?? this.surName,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        language: language ?? this.language,
        businessName: businessName ?? this.businessName,
        stateDate: stateDate ?? this.stateDate,
        currencyId: currencyId ?? this.currencyId,
        timeZone: timeZone ?? this.timeZone,
        mobile: mobile ?? this.mobile,
      );

  factory AddBusiness.fromRawJson(String str) =>
      AddBusiness.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddBusiness.fromJson(Map<String, dynamic> json) => AddBusiness(
        surName: json["surname"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        language: json["language"],
        businessName: json["name"],
        stateDate: json["start_date"],
        currencyId: json["currency_id"],
        timeZone: json["time_zone"],
        mobile: json["mobile"],
      );

  Map<String, dynamic> toJson() => {
        "surname": surName,
        "first_name": firstName,
        "last_name": lastName,
        "language": language,
        "name": businessName,
        "start_date": stateDate,
        "currency_id": currencyId,
        "time_zone": timeZone,
        "mobile": mobile,
      };
}
