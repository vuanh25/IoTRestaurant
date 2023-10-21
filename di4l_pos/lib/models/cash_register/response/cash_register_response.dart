import 'dart:convert';

class CashRegisterResponse {
  CashRegisterResponse({
    this.data,
  });

  List<CashResgisterData>? data;

  CashRegisterResponse copyWith({List<CashResgisterData>? data}) =>
      CashRegisterResponse(data: data ?? this.data);

  factory CashRegisterResponse.fromRawJson(String str) =>
      CashRegisterResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CashRegisterResponse.fromJson(Map<String, dynamic> json) =>
      CashRegisterResponse(
        data: json["data"] == null
            ? null
            : List<CashResgisterData>.from(
                json["data"].map((x) => CashResgisterData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CashResgisterData {
  CashResgisterData({
    this.id,
    this.businessId,
    this.locationId,
    this.userId,
    this.status,
    this.closedAt,
    this.closingAmount,
    this.totalCardSlips,
    this.totalCheques,
    this.denominations,
    this.closingNote,
    this.createdAt,
    this.updatedAt,
    this.cashRegisterTransactions,
  });

  int? id;
  int? businessId;
  int? locationId;
  int? userId;
  String? status;
  dynamic closedAt;
  String? closingAmount;
  int? totalCardSlips;
  int? totalCheques;
  dynamic denominations;
  dynamic closingNote;
  String? createdAt;
  String? updatedAt;
  List<CashRegisterTransaction>? cashRegisterTransactions;

  CashResgisterData copyWith({
    int? id,
    int? businessId,
    int? locationId,
    int? userId,
    String? status,
    dynamic closedAt,
    String? closingAmount,
    int? totalCardSlips,
    int? totalCheques,
    dynamic denominations,
    dynamic closingNote,
    String? createdAt,
    String? updatedAt,
    List<CashRegisterTransaction>? cashRegisterTransactions,
  }) =>
      CashResgisterData(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        locationId: locationId ?? this.locationId,
        userId: userId ?? this.userId,
        status: status ?? this.status,
        closedAt: closedAt ?? this.closedAt,
        closingAmount: closingAmount ?? this.closingAmount,
        totalCardSlips: totalCardSlips ?? this.totalCardSlips,
        totalCheques: totalCheques ?? this.totalCheques,
        denominations: denominations ?? this.denominations,
        closingNote: closingNote ?? this.closingNote,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        cashRegisterTransactions:
            cashRegisterTransactions ?? this.cashRegisterTransactions,
      );

  factory CashResgisterData.fromRawJson(String str) =>
      CashResgisterData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CashResgisterData.fromJson(Map<String, dynamic> json) =>
      CashResgisterData(
        id: json["id"],
        businessId: json["business_id"],
        locationId: json["location_id"],
        userId: json["user_id"],
        status: json["status"],
        closedAt: json["closed_at"],
        closingAmount:
            json["closing_amount"],
        totalCardSlips:
            json["total_card_slips"],
        totalCheques:
            json["total_cheques"],
        denominations: json["denominations"],
        closingNote: json["closing_note"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        cashRegisterTransactions: json["cash_register_transactions"] == null
            ? null
            : List<CashRegisterTransaction>.from(
                json["cash_register_transactions"]
                    .map((x) => CashRegisterTransaction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "location_id": locationId,
        "user_id": userId,
        "status": status,
        "closed_at": closedAt,
        "closing_amount": closingAmount,
        "total_card_slips": totalCardSlips,
        "total_cheques": totalCheques,
        "denominations": denominations,
        "closing_note": closingNote,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "cash_register_transactions": cashRegisterTransactions == null
            ? null
            : List<dynamic>.from(
                cashRegisterTransactions!.map((x) => x.toJson())),
      };
}

class CashRegisterTransaction {
  CashRegisterTransaction({
    this.id,
    this.cashRegisterId,
    this.amount,
    this.payMethod,
    this.type,
    this.transactionType,
    this.transactionId,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? cashRegisterId;
  String? amount;
  String? payMethod;
  String? type;
  String? transactionType;
  dynamic transactionId;
  String? createdAt;
  String? updatedAt;

  CashRegisterTransaction copyWith({
    int? id,
    int? cashRegisterId,
    String? amount,
    String? payMethod,
    String? type,
    String? transactionType,
    dynamic transactionId,
    String? createdAt,
    String? updatedAt,
  }) =>
      CashRegisterTransaction(
        id: id ?? this.id,
        cashRegisterId: cashRegisterId ?? this.cashRegisterId,
        amount: amount ?? this.amount,
        payMethod: payMethod ?? this.payMethod,
        type: type ?? this.type,
        transactionType: transactionType ?? this.transactionType,
        transactionId: transactionId ?? this.transactionId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory CashRegisterTransaction.fromRawJson(String str) =>
      CashRegisterTransaction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CashRegisterTransaction.fromJson(Map<String, dynamic> json) =>
      CashRegisterTransaction(
        id: json["id"],
        cashRegisterId:
            json["cash_register_id"],
        amount: json["amount"],
        payMethod: json["pay_method"],
        type: json["type"],
        transactionType:
            json["transaction_type"],
        transactionId: json["transaction_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cash_register_id": cashRegisterId,
        "amount": amount,
        "pay_method": payMethod,
        "type": type,
        "transaction_type": transactionType,
        "transaction_id": transactionId,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
