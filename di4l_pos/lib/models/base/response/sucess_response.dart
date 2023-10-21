import 'dart:convert';

class SuccessResponse {
  SuccessResponse({
    this.success,
    this.msg,
  });

  int? success;
  String? msg;

  get data => null;

  SuccessResponse copyWith({
    int? success,
    String? msg,
  }) =>
      SuccessResponse(
        success: success ?? this.success,
        msg: msg ?? this.msg,
      );

  factory SuccessResponse.fromRawJson(String str) =>
      SuccessResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SuccessResponse.fromJson(Map<String, dynamic> json) =>
      SuccessResponse(
        success: json["success"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
      };
}
