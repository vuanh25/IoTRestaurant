import 'dart:convert';

class AddCashRegisterRequest {
  AddCashRegisterRequest({
    this.status,
    this.locationId,
    this.closingNote,
    this.closingAmount,
    this.totalCardSlips,
    this.totalCheques,
    this.initialAmount,
  });

  String? status;
  int? locationId;
  String? closingNote;
  double? closingAmount;
  int? totalCardSlips;
  int? totalCheques;
  double? initialAmount;

  AddCashRegisterRequest copyWith(
          {String? status,
          int? locationId,
          String? closingNote,
          double? closingAmount,
          int? totalCardSlips,
          int? totalCheques,
          double? initialAmount}) =>
      AddCashRegisterRequest(
        status: status ?? this.status,
        locationId: locationId ?? this.locationId,
        closingNote: closingNote ?? this.closingNote,
        closingAmount: closingAmount ?? this.closingAmount,
        totalCardSlips: totalCardSlips ?? this.totalCardSlips,
        totalCheques: totalCheques ?? this.totalCheques,
        initialAmount: initialAmount ?? this.initialAmount,
      );

  factory AddCashRegisterRequest.fromRawJson(String str) =>
      AddCashRegisterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCashRegisterRequest.fromJson(Map<String, dynamic> json) =>
      AddCashRegisterRequest(
        status: json["status"],
        locationId: json["location_id"],
        closingNote: json["closing_note"],
        closingAmount:
            json["closing_amount"],
        totalCardSlips:
            json["total_card_slips"],
        totalCheques:
            json["total_cheques"],
        initialAmount:
            json["initial_amount"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "location_id": locationId,
        "closing_note": closingNote,
        "closing_amount": closingAmount,
        "total_card_slips": totalCardSlips,
        "total_cheques": totalCheques,
        "initial_amount": initialAmount,
      };
}
