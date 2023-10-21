import 'dart:convert';

class AddExpenseRequest {
  int? locationId;
  dynamic finalTotal;
  int? expenseCategoryId;
  int? expenseSubCagegoryId;
  String? refNo;
  String? transactionDate;
  int? expenseFor;
  int? contactId;
  int? taxId;
  String? additionalNotes;

  AddExpenseRequest({
    required this.locationId,
    required this.finalTotal,
    required this.expenseCategoryId,
    required this.expenseSubCagegoryId,
    required this.refNo,
    required this.transactionDate,
    required this.expenseFor,
    required this.contactId,
    required this.taxId,
    required this.additionalNotes,
  });

  AddExpenseRequest copyWith({
    int? locationId,
    dynamic finalTotal,
    int? expenseCategoryId,
    int? expenseSubCagegoryId,
    String? refNo,
    String? transactionDate,
    int? expenseFor,
    int? contactId,
    int? taxId,
    String? additionalNotes,
  }) =>
      AddExpenseRequest(
        locationId: locationId ?? this.locationId,
        finalTotal: finalTotal ?? this.finalTotal,
        expenseCategoryId: expenseCategoryId ?? this.expenseCategoryId,
        expenseSubCagegoryId: expenseSubCagegoryId ?? this.expenseSubCagegoryId,
        refNo: refNo ?? this.refNo,
        transactionDate: transactionDate ?? this.transactionDate,
        expenseFor: expenseFor ?? this.expenseFor,
        contactId: contactId ?? this.contactId,
        taxId: taxId ?? this.taxId,
        additionalNotes: additionalNotes ?? this.additionalNotes,
      );

  factory AddExpenseRequest.fromRawJson(String str) =>
      AddExpenseRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddExpenseRequest.fromJson(Map<String, dynamic> json) =>
      AddExpenseRequest(
        locationId: json['location_id'],
        finalTotal: json['final_total'],
        expenseCategoryId: json['expense_category_id'],
        expenseSubCagegoryId: json['expense_sub_category_id'],
        refNo: json['ref_no'],
        transactionDate: json['transaction_date'],
        expenseFor: json['expense_for'],
        contactId: json['contact_id'],
        taxId: json['tax_id'],
        additionalNotes: json['additional_notes'],
      );

  Map<String, dynamic> toJson() => {
        'location_id': locationId,
        'final_total': finalTotal,
        'expense_category_id': expenseCategoryId,
        'expense_sub_category_id': expenseSubCagegoryId,
        'ref_no': refNo,
        'transaction_date': transactionDate,
        'expense_for': expenseFor,
        'contact_id': contactId,
        'tax_id': taxId,
        'additional_notes': additionalNotes,
      };
}