import 'dart:convert';

class AddCashRegisterResponse {
  AddCashRegisterResponse({
    this.data,
  });

  AddCashResgisterData? data;

  AddCashRegisterResponse copyWith({AddCashResgisterData? data}) =>
      AddCashRegisterResponse(data: data ?? this.data);

  factory AddCashRegisterResponse.fromRawJson(String str) =>
      AddCashRegisterResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCashRegisterResponse.fromJson(Map<String, dynamic> json) =>
      AddCashRegisterResponse(
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "data": data,
      };
}

class AddCashResgisterData {
  AddCashResgisterData({
    this.status,
    this.locationId,
    this.closingNote,
    this.closingAmount,
    this.totalCardSlips,
    this.totalCheques,
    this.businessId,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.id,
  });

  String? status;
  int? locationId;
  dynamic closingNote;
  String? closingAmount;
  int? totalCardSlips;
  int? totalCheques;
  int? businessId;
  int? userId;
  String? createdAt;
  String? updatedAt;
  int? id;

  AddCashResgisterData copyWith({
    int? id,
    int? businessId,
    int? locationId,
    int? userId,
    String? status,
    String? closingAmount,
    int? totalCardSlips,
    int? totalCheques,
    dynamic closingNote,
    String? createdAt,
    String? updatedAt,
  }) =>
      AddCashResgisterData(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        locationId: locationId ?? this.locationId,
        userId: userId ?? this.userId,
        status: status ?? this.status,
        closingAmount: closingAmount ?? this.closingAmount,
        totalCardSlips: totalCardSlips ?? this.totalCardSlips,
        totalCheques: totalCheques ?? this.totalCheques,
        closingNote: closingNote ?? this.closingNote,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory AddCashResgisterData.fromRawJson(String str) =>
      AddCashResgisterData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCashResgisterData.fromJson(Map<String, dynamic> json) =>
      AddCashResgisterData(
        id: json["id"],
        businessId: json["business_id"],
        locationId: json["location_id"],
        userId: json["user_id"],
        status: json["status"],
        closingAmount:
            json["closing_amount"],
        totalCardSlips:
            json["total_card_slips"],
        totalCheques:
            json["total_cheques"],
        closingNote: json["closing_note"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "location_id": locationId,
        "user_id": userId,
        "status": status,
        "closing_amount": closingAmount,
        "total_card_slips": totalCardSlips,
        "total_cheques": totalCheques,
        "closing_note": closingNote,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
