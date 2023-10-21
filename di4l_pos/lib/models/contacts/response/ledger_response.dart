// To parse this JSON data, do
//
//     final ledgerResponse = ledgerResponseFromJson(jsonString);

import 'dart:convert';

class LedgerResponse {
  LedgerResponse({
    this.data,
  });

  Data? data;

  LedgerResponse copyWith({
    Data? data,
  }) =>
      LedgerResponse(
        data: data ?? this.data,
      );

  factory LedgerResponse.fromRawJson(String str) =>
      LedgerResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LedgerResponse.fromJson(Map<String, dynamic> json) => LedgerResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  Data({
    this.ledger,
    this.startDate,
    this.endDate,
    this.totalInvoice,
    this.totalPurchase,
    this.beginningBalance,
    this.balanceDue,
    this.totalPaid,
  });

  List<Ledger>? ledger;
  String? startDate;
  String? endDate;
  int? totalInvoice;
  int? totalPurchase;
  int? beginningBalance;
  int? balanceDue;
  int? totalPaid;

  Data copyWith({
    List<Ledger>? ledger,
    String? startDate,
    String? endDate,
    int? totalInvoice,
    int? totalPurchase,
    int? beginningBalance,
    int? balanceDue,
    int? totalPaid,
  }) =>
      Data(
        ledger: ledger ?? this.ledger,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        totalInvoice: totalInvoice ?? this.totalInvoice,
        totalPurchase: totalPurchase ?? this.totalPurchase,
        beginningBalance: beginningBalance ?? this.beginningBalance,
        balanceDue: balanceDue ?? this.balanceDue,
        totalPaid: totalPaid ?? this.totalPaid,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        ledger: json["ledger"] == null
            ? []
            : List<Ledger>.from(json["ledger"]!.map((x) => Ledger.fromJson(x))),
        startDate: json["start_date"],
        endDate: json["end_date"],
        totalInvoice: json["total_invoice"],
        totalPurchase: json["total_purchase"],
        beginningBalance: json["beginning_balance"],
        balanceDue: json["balance_due"],
        totalPaid: json["total_paid"],
      );

  Map<String, dynamic> toJson() => {
        "ledger": ledger == null
            ? []
            : List<dynamic>.from(ledger!.map((x) => x.toJson())),
        "start_date": startDate,
        "end_date": endDate,
        "total_invoice": totalInvoice,
        "total_purchase": totalPurchase,
        "beginning_balance": beginningBalance,
        "balance_due": balanceDue,
        "total_paid": totalPaid,
      };
}

class Ledger {
  Ledger({
    this.date,
    this.refNo,
    this.type,
    this.location,
    this.paymentStatus,
    this.total,
    this.paymentMethod,
    this.debit,
    this.credit,
    this.others,
    this.finalTotal,
    this.totalDue,
    this.dueDate,
    this.balance,
    this.paymentMethodKey,
  });

  dynamic date;
  String? refNo;
  String? type;
  String? location;
  String? paymentStatus;
  String? total;
  String? paymentMethod;
  dynamic debit;
  dynamic credit;
  String? others;
  int? finalTotal;
  int? totalDue;
  dynamic dueDate;
  String? balance;
  String? paymentMethodKey;

  Ledger copyWith({
    dynamic date,
    String? refNo,
    String? type,
    String? location,
    String? paymentStatus,
    String? total,
    String? paymentMethod,
    dynamic debit,
    dynamic credit,
    String? others,
    int? finalTotal,
    int? totalDue,
    dynamic dueDate,
    String? balance,
    String? paymentMethodKey,
  }) =>
      Ledger(
        date: date ?? this.date,
        refNo: refNo ?? this.refNo,
        type: type ?? this.type,
        location: location ?? this.location,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        total: total ?? this.total,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        debit: debit ?? this.debit,
        credit: credit ?? this.credit,
        others: others ?? this.others,
        finalTotal: finalTotal ?? this.finalTotal,
        totalDue: totalDue ?? this.totalDue,
        dueDate: dueDate ?? this.dueDate,
        balance: balance ?? this.balance,
        paymentMethodKey: paymentMethodKey ?? this.paymentMethodKey,
      );

  factory Ledger.fromRawJson(String str) => Ledger.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ledger.fromJson(Map<String, dynamic> json) => Ledger(
        date: json["date"],
        refNo: json["ref_no"],
        type: json["type"],
        location: json["location"],
        paymentStatus: json["payment_status"],
        total: json["total"],
        paymentMethod: json["payment_method"],
        debit: json["debit"],
        credit: json["credit"],
        others: json["others"],
        finalTotal: json["final_total"],
        totalDue: json["total_due"],
        dueDate: json["due_date"],
        balance: json["balance"],
        paymentMethodKey: json["payment_method_key"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "ref_no": refNo,
        "type": type,
        "location": location,
        "payment_status": paymentStatus,
        "total": total,
        "payment_method": paymentMethod,
        "debit": debit,
        "credit": credit,
        "others": others,
        "final_total": finalTotal,
        "total_due": totalDue,
        "due_date": dueDate,
        "balance": balance,
        "payment_method_key": paymentMethodKey,
      };
}
