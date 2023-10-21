import 'dart:convert';

class ChangePasswordRequest {
  ChangePasswordRequest({
    this.currentPassword,
    this.newPassword,
  });

  String? currentPassword;
  String? newPassword;

  ChangePasswordRequest copyWith({
    String? currentPassword,
    String? newPassword,
  }) =>
      ChangePasswordRequest(
        currentPassword: currentPassword ?? this.currentPassword,
        newPassword: newPassword ?? this.newPassword,
      );

  factory ChangePasswordRequest.fromRawJson(String str) =>
      ChangePasswordRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      ChangePasswordRequest(
        currentPassword:
            json["current_password"],
        newPassword: json["new_password"],
      );

  Map<String, dynamic> toJson() => {
        "current_password": currentPassword,
        "new_password": newPassword,
      };
}

class SendEmailRequest {
  SendEmailRequest({
    this.email,
  });

  String? email;

  SendEmailRequest copyWith({
    String? email,
  }) =>
      SendEmailRequest(
        email: email ?? this.email,
      );

  factory SendEmailRequest.fromRawJson(String str) =>
      SendEmailRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SendEmailRequest.fromJson(Map<String, dynamic> json) =>
      SendEmailRequest(
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
      };
}
