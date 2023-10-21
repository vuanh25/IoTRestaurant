import 'dart:convert';

class AddProductStockResponse {
  AddProductStockResponse({
    this.success,
    this.message,
  });
  bool? success;
  String? message;

  factory AddProductStockResponse.fromRawJson(String str) =>
      AddProductStockResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddProductStockResponse.fromJson(Map<String, dynamic> json) =>
      AddProductStockResponse(
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
      };
}
