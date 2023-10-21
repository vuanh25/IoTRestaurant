import 'dart:convert';

class DeleteStaffResponse {
  DeleteStaffResponse({
    this.success,
    this.msg,
  });

  bool? success;
  String? msg;

  DeleteStaffResponse copyWith({
    bool? success,
    String? msg,
  }) =>
      DeleteStaffResponse(
        success: success ?? this.success,
        msg: msg ?? this.msg,
      );

  factory DeleteStaffResponse.fromRawJson(String str) =>
      DeleteStaffResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeleteStaffResponse.fromJson(Map<String, dynamic> json) =>
      DeleteStaffResponse(
        success: json["success"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
      };
}
