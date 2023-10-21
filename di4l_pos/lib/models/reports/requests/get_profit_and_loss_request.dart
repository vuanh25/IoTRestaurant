import 'dart:convert';

class GetProfitAndLossRequest {
  GetProfitAndLossRequest({
    this.locationId,
    this.startDate,
    this.endDate,
    this.userId,
  });

  String? locationId;
  String? startDate;
  String? endDate;
  String? userId;

  GetProfitAndLossRequest copyWith({
    String? locationId,
    String? startDate,
    String? endDate,
    String? userId,
  }) =>
      GetProfitAndLossRequest(
        locationId: locationId ?? this.locationId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        userId: userId ?? this.userId,
      );

  factory GetProfitAndLossRequest.fromRawJson(String str) =>
      GetProfitAndLossRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetProfitAndLossRequest.fromJson(Map<String, dynamic> json) =>
      GetProfitAndLossRequest(
        locationId: json["location_id"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "location_id": locationId,
        "start_date": startDate,
        "end_date": endDate,
        "user_id": userId,
      };
}
