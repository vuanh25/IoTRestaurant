import 'dart:convert';

import 'package:di4l_pos/models/revenue_expense/response/expense_category_response.dart';

class ExpenseResponse {
  List<Expense>? data;
  Links? links;
  Meta? meta;

  ExpenseResponse({this.data, this.links, this.meta});

  ExpenseResponse copyWith({List<Expense>? data, Links? links, Meta? meta}) =>
      ExpenseResponse(
        data: data ?? this.data,
        meta: meta ?? this.meta,
        links: links ?? this.links,
      );

  factory ExpenseResponse.fromJson(Map<String, dynamic> json) =>
      ExpenseResponse(
        data: json["data"] == null
            ? []
            : List<Expense>.from(json["data"]!.map((x) => Expense.fromJson(x))),
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<Expense>.from(data!.map((x) => x.toJson())),
        "links": links?.toJson(),
        "meta": meta?.toJson(),
      };
}

class Expense {
  int? id;
  int? businessId;
  int? locationId;
  String? paymentStatus;
  String? refNo;
  String? transactionDate;
  String? totalBeforeTax;
  int? taxId;
  String? taxAmount;
  String? finalTotal;
  ExpenseCategory? expenseCategory;
  String? document;
  String? additionalNotes;
  int? createdBy;
  String? createdAt;
  String? updatedAt;
  dynamic expenseFor;
  int? isRecurring;
  String? recurInterval;
  String? recurIntervalType;
  String? recurRepetitions;
  String? recurStoppedOn;
  int? recurParentId;
  bool isSelected = false;

  Expense({
    this.id,
    this.businessId,
    this.locationId,
    this.paymentStatus,
    this.refNo,
    this.transactionDate,
    this.totalBeforeTax,
    this.taxId,
    this.taxAmount,
    this.finalTotal,
    this.expenseCategory,
    this.document,
    this.additionalNotes,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.expenseFor,
    this.isRecurring,
    this.recurInterval,
    this.recurIntervalType,
    this.recurRepetitions,
    this.recurStoppedOn,
    this.recurParentId,
    this.isSelected = false,
  });

  Expense.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    locationId = json['location_id'];
    paymentStatus = json['payment_status'];
    refNo = json['ref_no'];
    transactionDate = json['transaction_date'];
    totalBeforeTax = json['total_before_tax'];
    taxId = json['tax_id'];
    taxAmount = json['tax_amount'];
    finalTotal = json['final_total'];
    // expenseCategory = json['expense_category'] != null
    //     ? ExpenseCategory.fromJson(json['expense_category'])
    //     : null;
    if (json['expense_category'] != null) {
      if (json['expense_category'] is List) {
        expenseCategory = null;
      } else {
        expenseCategory = ExpenseCategory.fromJson(json['expense_category']);
      }
    } else {
      expenseCategory = null;
    }
    document = json['document'];
    additionalNotes = json['additional_notes'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    // if (json['expense_for'] != null) {
    //   expenseFor = <int>[];
    //   json['expense_for'].forEach((v) {
    //     expenseFor!.add(v);
    //   });
    // }
    isRecurring = json['is_recurring'];
    recurInterval = json['recur_interval'];
    recurIntervalType = json['recur_interval_type'];
    recurRepetitions = json['recur_repetitions'];
    recurStoppedOn = json['recur_stopped_on'];
    recurParentId = json['recur_parent_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['business_id'] = businessId;
    data['location_id'] = locationId;
    data['payment_status'] = paymentStatus;
    data['ref_no'] = refNo;
    data['transaction_date'] = transactionDate;
    data['total_before_tax'] = totalBeforeTax;
    data['tax_id'] = taxId;
    data['tax_amount'] = taxAmount;
    data['final_total'] = finalTotal;
    // if (expenseCategory != null) {
    //   data['expense_category'] = expenseCategory!.toJson();
    // }
    if (expenseCategory != null) {
      if (expenseCategory is List) {
        data['expense_category'] = [];
      } else {
        data['expense_category'] = expenseCategory!.toJson();
      }
    }
    data['document'] = document;
    data['additional_notes'] = additionalNotes;
    data['created_by'] = createdBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    // if (expenseFor != null) {
    //   data['expense_for'] = expenseFor!.map((v) => v).toList();
    // }
    data['is_recurring'] = isRecurring;
    data['recur_interval'] = recurInterval;
    data['recur_interval_type'] = recurIntervalType;
    data['recur_repetitions'] = recurRepetitions;
    data['recur_stopped_on'] = recurStoppedOn;
    data['recur_parent_id'] = recurParentId;
    return data;
  }
}

class Links {
  String? first;
  String? last;
  int? prev;
  String? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['first'] = first;
    data['last'] = last;
    data['prev'] = prev;
    data['next'] = next;
    return data;
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.path,
      this.perPage,
      this.to,
      this.total});

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['current_page'] = currentPage;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['path'] = path;
    data['per_page'] = perPage;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}
