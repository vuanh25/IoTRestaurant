import 'dart:convert';

class AffiliateBaseResponse {
  AffiliateBaseResponse({
    this.success,
    this.message,
  });

  int? success;
  String? message;

  AffiliateBaseResponse copyWith({
    int? success,
    String? message,
  }) =>
      AffiliateBaseResponse(
        success: success ?? this.success,
        message: message ?? this.message,
      );

  factory AffiliateBaseResponse.fromRawJson(String str) =>
      AffiliateBaseResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliateBaseResponse.fromJson(Map<String, dynamic> json) => AffiliateBaseResponse(
        success: json["success"],
        message: json["message"] 
      );

  Map<String, dynamic> toJson() => {
        "data": success,
        "message": message
      };
}