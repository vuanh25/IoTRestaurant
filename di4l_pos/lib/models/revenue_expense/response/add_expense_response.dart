class AddExpenseResponse {
  Data? data;

  AddExpenseResponse({this.data});

  AddExpenseResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? businessId;
  int? locationId;
  String? paymentStatus;
  String? refNo;
  String? transactionDate;
  double? totalBeforeTax;
  int? taxId;
  double? taxAmount;
  int? finalTotal;
  int? expenseCategoryId;
  dynamic document;
  int? createdBy;
  String? createdAt;
  String? updatedAt;
  List<dynamic>? expenseFor;
  int? isRecurring;
  dynamic recurInterval;
  dynamic recurIntervalType;
  dynamic recurRepetitions;
  dynamic recurStoppedOn;
  dynamic recurParentId;

  Data(
      {this.id,
      this.businessId,
      this.locationId,
      this.paymentStatus,
      this.refNo,
      this.transactionDate,
      this.totalBeforeTax,
      this.taxId,
      this.taxAmount,
      this.finalTotal,
      this.expenseCategoryId,
      this.document,
      this.createdBy,
      this.createdAt,
      this.updatedAt,
      this.expenseFor,
      this.isRecurring,
      this.recurInterval,
      this.recurIntervalType,
      this.recurRepetitions,
      this.recurStoppedOn,
      this.recurParentId});

  Data.fromJson(Map<String, dynamic> json) {
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
    expenseCategoryId = json['expense_category_id'];
    document = json['document'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['expense_for'] != null) {
      expenseFor = <Null>[];
      json['expense_for'].forEach((v) {
        expenseFor!.add(v);
      });
    }
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
    data['expense_category_id'] = expenseCategoryId;
    data['document'] = document;
    data['created_by'] = createdBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (expenseFor != null) {
      data['expense_for'] = expenseFor!.map((v) => v.toJson()).toList();
    }
    data['is_recurring'] = isRecurring;
    data['recur_interval'] = recurInterval;
    data['recur_interval_type'] = recurIntervalType;
    data['recur_repetitions'] = recurRepetitions;
    data['recur_stopped_on'] = recurStoppedOn;
    data['recur_parent_id'] = recurParentId;
    return data;
  }
}
