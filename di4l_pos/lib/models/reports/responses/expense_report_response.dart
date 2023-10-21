// To parse this JSON data, do
//
//     final expenseReportResponse = expenseReportResponseFromJson(jsonString);

import 'dart:convert';

class ExpenseReportResponse {
  String? totalExpense;
  String? category;

  ExpenseReportResponse({
    this.totalExpense,
    this.category,
  });

  ExpenseReportResponse copyWith({
    String? totalExpense,
    String? category,
  }) =>
      ExpenseReportResponse(
        totalExpense: totalExpense ?? this.totalExpense,
        category: category ?? this.category,
      );

  factory ExpenseReportResponse.fromRawJson(String str) =>
      ExpenseReportResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExpenseReportResponse.fromJson(Map<String, dynamic> json) =>
      ExpenseReportResponse(
        totalExpense: json["total_expense"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "total_expense": totalExpense,
        "category": category,
      };
}
