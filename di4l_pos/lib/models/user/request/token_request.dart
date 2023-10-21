import 'dart:convert';

class TokenRequest {
  TokenRequest({
    this.grantType,
    this.clientId,
    this.clientSecret,
    this.username,
    this.password,
    this.scope,
  });

  String? grantType;
  String? clientId;
  String? clientSecret;
  String? username;
  String? password;
  String? scope;

  TokenRequest copyWith({
    String? grantType,
    String? clientId,
    String? clientSecret,
    String? username,
    String? password,
    String? scope,
  }) =>
      TokenRequest(
        grantType: grantType ?? this.grantType,
        clientId: clientId ?? this.clientId,
        clientSecret: clientSecret ?? this.clientSecret,
        username: username ?? this.username,
        password: password ?? this.password,
        scope: scope ?? this.scope,
      );

  factory TokenRequest.fromRawJson(String str) =>
      TokenRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TokenRequest.fromJson(Map<String, dynamic> json) => TokenRequest(
        grantType: json["grant_type"],
        clientId: json["client_id"],
        clientSecret:
            json["client_secret"],
        username: json["username"],
        password: json["password"],
        scope: json["scope"],
      );

  Map<String, dynamic> toJson() => {
        "grant_type": grantType,
        "client_id": clientId,
        "client_secret": clientSecret,
        "username": username,
        "password": password,
        "scope": scope,
      };
}
