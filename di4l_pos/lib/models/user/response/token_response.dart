import 'dart:convert';

class TokenResponse {
  TokenResponse({
    this.tokenType,
    this.expiresIn,
    this.accessToken,
    this.refreshToken,
  });

  String? tokenType;
  int? expiresIn;
  String? accessToken;
  String? refreshToken;

  TokenResponse copyWith({
    String? tokenType,
    int? expiresIn,
    String? accessToken,
    String? refreshToken,
  }) =>
      TokenResponse(
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
      );

  factory TokenResponse.fromRawJson(String str) =>
      TokenResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TokenResponse.fromJson(Map<String, dynamic> json) => TokenResponse(
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        accessToken: json["access_token"],
        refreshToken:
            json["refresh_token"],
      );

  Map<String, dynamic> toJson() => {
        "token_type": tokenType,
        "expires_in": expiresIn,
        "access_token": accessToken,
        "refresh_token": refreshToken,
      };
}
