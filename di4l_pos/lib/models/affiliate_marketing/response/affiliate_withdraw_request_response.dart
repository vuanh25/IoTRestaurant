import 'dart:convert';

class AffiliateWithdrawRequestResponse {
  AffiliateWithdrawRequestResponse({
    this.data,
  });

  List<AffiliateWithdrawRequest>? data;

  AffiliateWithdrawRequestResponse copyWith({
    List<AffiliateWithdrawRequest>? data,
  }) =>
      AffiliateWithdrawRequestResponse(
        data: data ?? this.data,
      );

  factory AffiliateWithdrawRequestResponse.fromRawJson(String str) =>
      AffiliateWithdrawRequestResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliateWithdrawRequestResponse.fromJson(Map<String, dynamic> json) => AffiliateWithdrawRequestResponse(
        data: json["data"]["withdraw_requests"]["data"] == null
            ? null
            : List<AffiliateWithdrawRequest>.from(json["data"]["withdraw_requests"]["data"].map((x) => AffiliateWithdrawRequest?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AffiliateWithdrawRequest {
  AffiliateWithdrawRequest({
    this.id,
    this.amount,
    this.status,
    this.businessId,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.fullName,
  });

  int? id;
  double? amount;
  int? status;
  int? businessId;
  int? userId;
  dynamic createdAt;
  dynamic updatedAt;
  String? fullName;

  AffiliateWithdrawRequest copyWith({
    int? id,
    double? amount,
    int? status,
    int? businessId,
    int? userId,
    dynamic createdAt,
    dynamic updatedAt,
    String? fullName,
  }) =>
      AffiliateWithdrawRequest(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        status: status ?? this.status,
        businessId: businessId ?? this.businessId,
        userId: userId ?? this.userId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        fullName: fullName ?? this.fullName,
      );

  factory AffiliateWithdrawRequest.fromRawJson(String str) => AffiliateWithdrawRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AffiliateWithdrawRequest.fromJson(Map<String, dynamic> json) => AffiliateWithdrawRequest(
        id: json["id"],
        amount: double.parse(json["amount"]),
        status: json["status"],
        businessId: json["business_id"],
        userId: json["user_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        fullName: json["full_name"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "amount": amount,
    "status": status,
    "business_id": businessId,
    "user_id": userId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "full_name": fullName,
  };
}