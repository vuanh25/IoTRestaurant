// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PaymentAccountsResponse {
  List<PaymentAccount>? data;

  PaymentAccountsResponse({this.data});

  factory PaymentAccountsResponse.fromRawJson(String str) =>
      PaymentAccountsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  PaymentAccountsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <PaymentAccount>[];
      json['data'].forEach((v) {
        data!.add(PaymentAccount.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  PaymentAccountsResponse copyWith({
    List<PaymentAccount>? data,
  }) {
    return PaymentAccountsResponse(
      data: data ?? this.data,
    );
  }
}

class PaymentAccount {
  int? id;
  int? businessId;
  String? name;
  String? accountNumber;
  List<AccountDetails>? accountDetails;
  int? accountTypeId;
  String? note;
  int? createdBy;
  int? isClosed;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  PaymentAccount(
      {this.id,
      this.businessId,
      this.name,
      this.accountNumber,
      this.accountDetails,
      this.accountTypeId,
      this.note,
      this.createdBy,
      this.isClosed,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  factory PaymentAccount.fromRawJson(String str) =>
      PaymentAccount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  PaymentAccount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    name = json['name'];
    accountNumber = json['account_number'];
    if (json['account_details'] != null) {
      accountDetails = <AccountDetails>[];
      json['account_details'].forEach((v) {
        accountDetails!.add(AccountDetails.fromJson(v));
      });
    }
    accountTypeId = json['account_type_id'];
    note = json['note'];
    createdBy = json['created_by'];
    isClosed = json['is_closed'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['name'] = name;
    data['account_number'] = accountNumber;
    if (accountDetails != null) {
      data['account_details'] = accountDetails!.map((v) => v.toJson()).toList();
    }
    data['account_type_id'] = accountTypeId;
    data['note'] = note;
    data['created_by'] = createdBy;
    data['is_closed'] = isClosed;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }

  PaymentAccount copyWith({
    int? id,
    int? businessId,
    String? name,
    String? accountNumber,
    List<AccountDetails>? accountDetails,
    int? accountTypeId,
    String? note,
    int? createdBy,
    int? isClosed,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
  }) {
    return PaymentAccount(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      name: name ?? this.name,
      accountNumber: accountNumber ?? this.accountNumber,
      accountDetails: accountDetails ?? this.accountDetails,
      accountTypeId: accountTypeId ?? this.accountTypeId,
      note: note ?? this.note,
      createdBy: createdBy ?? this.createdBy,
      isClosed: isClosed ?? this.isClosed,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class AccountDetails {
  String? label;
  String? value;

  AccountDetails({this.label, this.value});

  factory AccountDetails.fromRawJson(String str) =>
      AccountDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  AccountDetails.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['value'] = value;
    return data;
  }

  AccountDetails copyWith({
    String? label,
    String? value,
  }) {
    return AccountDetails(
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }
}
