import 'dart:convert';

class LoginResponse {
  LoginResponse({
    this.success,
    this.message,
    this.tokenType,
    this.accessToken,
    this.expiresIn,
  });
  bool? success;
  String? message;
  String? tokenType;
  int? expiresIn;
  String? accessToken;

  LoginResponse copyWith({
    bool? success,
    String? message,
    String? tokenType,
    int? expiresIn,
    String? accessToken,
  }) =>
      LoginResponse(
        success: success ?? this.success,
        message: message ?? this.message,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        accessToken: accessToken ?? this.accessToken,
      );

  factory LoginResponse.fromRawJson(String str) =>
      LoginResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
      success: json["success"],
      message: json["message"],
      tokenType: json["token_type"],
      expiresIn: json["expires_in"],
      accessToken: json["access_token"]);

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "token_type": tokenType,
        "expires_in": expiresIn,
        "access_token": accessToken
      };
}
