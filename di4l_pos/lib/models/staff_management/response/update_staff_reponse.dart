import 'dart:convert';

class UpdateStaffResponse {
  UpdateStaffResponse({
    this.success,
    this.msg,
  });

  int? success;
  String? msg;

  UpdateStaffResponse copyWith({
    int? success,
    String? msg,
  }) =>
      UpdateStaffResponse(
        success: success ?? this.success,
        msg: msg ?? this.msg,
      );

  factory UpdateStaffResponse.fromRawJson(String str) =>
      UpdateStaffResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateStaffResponse.fromJson(Map<String, dynamic> json) =>
      UpdateStaffResponse(
        success: json["success"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
      };
}
