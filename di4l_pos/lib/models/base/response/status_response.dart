import 'dart:convert';

class StatusResponse {
  StatusResponse({
    this.success,
    this.msg,
  });

  bool? success;
  String? msg;

  get data => null;

  StatusResponse copyWith({
    bool? success,
    String? msg,
  }) =>
      StatusResponse(
        success: success ?? this.success,
        msg: msg ?? this.msg,
      );

  factory StatusResponse.fromRawJson(String str) =>
      StatusResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StatusResponse.fromJson(Map<String, dynamic> json) => StatusResponse(
        success: json["success"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
      };
}
