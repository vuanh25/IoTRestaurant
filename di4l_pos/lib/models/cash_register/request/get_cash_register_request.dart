import 'dart:convert';

class GetCashRegisterRequest {
  GetCashRegisterRequest({
    this.status,
    this.userId,
    this.startDate,
    this.endDate,
    this.locationId,
    this.perPage,
  });

  String? status;
  String? userId;
  String? startDate;
  String? endDate;
  String? locationId;
  String? perPage;

  GetCashRegisterRequest copyWith({
    String? status,
    String? userId,
    String? startDate,
    String? endDate,
    String? locationId,
    String? perPage,
  }) =>
      GetCashRegisterRequest(
        status: status ?? this.status,
        userId: userId ?? this.userId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        locationId: locationId ?? this.locationId,
        perPage: perPage ?? this.perPage,
      );

  factory GetCashRegisterRequest.fromRawJson(String str) =>
      GetCashRegisterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetCashRegisterRequest.fromJson(Map<String, dynamic> json) =>
      GetCashRegisterRequest(
        status: json["status"],
        userId: json["user_id"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        locationId: json["location_id"],
        perPage: json["per_page"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "user_id": userId,
        "start_date": startDate,
        "end_date": endDate,
        "location_id": locationId,
        "per_page": perPage,
      };
}
