import 'dart:convert';

class RegisterResponse {
  RegisterResponse({
    this.data,
  });

  RegisterData? data;

  RegisterResponse copyWith({
    RegisterData? data,
  }) =>
      RegisterResponse(
        data: data ?? this.data,
      );

  factory RegisterResponse.fromRawJson(String str) =>
      RegisterResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        data: json["data"] == null ? null : RegisterData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}

class RegisterData {
  RegisterData({
    this.success,
    this.message,
  });

  bool? success;
  String? message;

  RegisterData copyWith({
    bool? success,
    String? message,
  }) =>
      RegisterData(
        success: success ?? this.success,
        message: message ?? this.message,
      );

  factory RegisterData.fromRawJson(String str) =>
      RegisterData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterData.fromJson(Map<String, dynamic> json) => RegisterData(
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
      };
}
