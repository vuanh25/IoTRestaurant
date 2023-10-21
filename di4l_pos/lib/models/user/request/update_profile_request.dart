import 'dart:convert';

class UpdateProfileRequest {
  UpdateProfileRequest({
    this.firstName,
    this.lastName,
  });

  String? firstName;
  String? lastName;

  UpdateProfileRequest copyWith({
    String? firstName,
    String? lastName,
  }) =>
      UpdateProfileRequest(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
      );

  factory UpdateProfileRequest.fromRawJson(String str) =>
      UpdateProfileRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      UpdateProfileRequest(
        firstName: json["first_name"],
        lastName: json["last_name"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
      };
}
