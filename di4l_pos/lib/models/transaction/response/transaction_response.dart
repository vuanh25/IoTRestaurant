import 'dart:convert';

class TransactionResponse {
  TransactionResponse({this.data});

  List<Transaction>? data;

  TransactionResponse copyWith({List<Transaction>? data}) =>
      TransactionResponse(data: data ?? this.data);

  factory TransactionResponse.fromRawJson(String str) =>
      TransactionResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      TransactionResponse(
        data: json["data"] == null
            ? null
            : List<Transaction>.from(
                json["data"].map((x) => Transaction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Transaction {
  Transaction(
      {this.id,
      this.businessId,
      this.locationId,
      this.type,
      this.status,
      this.paymentStatus,
      this.contactId,
      this.invoiceNo,
      this.transactionDate,
      this.finalTotal,
      this.firstName,
      this.lastName,
      this.mobile,
      this.email,
      this.shippingAddress});

  int? id;
  int? businessId;
  int? locationId;
  String? type;
  String? status;
  String? paymentStatus;
  int? contactId;
  String? invoiceNo;
  String? transactionDate;
  String? finalTotal;
  String? firstName;
  String? lastName;
  String? mobile;
  String? email;
  dynamic shippingAddress;

  Transaction copyWith({
    int? id,
    int? businessId,
    int? locationId,
    String? type,
    String? status,
    String? paymentStatus,
    int? contactId,
    String? invoiceNo,
    String? transactionDate,
    String? finalTotal,
    String? firstName,
    String? lastName,
    String? mobile,
    String? email,
    dynamic shippingAddress,
  }) =>
      Transaction(
          id: id ?? this.id,
          businessId: businessId ?? this.businessId,
          locationId: locationId ?? this.locationId,
          type: type ?? this.type,
          status: status ?? this.status,
          paymentStatus: paymentStatus ?? this.paymentStatus,
          contactId: contactId ?? this.contactId,
          invoiceNo: invoiceNo ?? this.invoiceNo,
          transactionDate: transactionDate ?? this.transactionDate,
          finalTotal: finalTotal ?? this.finalTotal,
          firstName: firstName ?? this.firstName,
          lastName: lastName ?? this.lastName,
          mobile: mobile ?? this.mobile,
          email: email ?? this.email,
          shippingAddress: shippingAddress ?? this.shippingAddress);

  factory Transaction.fromRawJson(String str) =>
      Transaction.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json["id"],
        businessId: json["business_id"],
        locationId: json["location_id"],
        type: json["type"],
        status: json["status"],
        paymentStatus:
            json["payment_status"],
        contactId: json["contact_id"],
        invoiceNo: json["invoice_no"],
        transactionDate:
            json["transaction_date"],
        finalTotal: json["final_total"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        mobile: json["mobile"],
        email: json["email"],
        shippingAddress: json["shipping_address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "location_id": locationId,
        "type": type,
        "status": status,
        "payment_status": paymentStatus,
        "contact_id": contactId,
        "invoice_no": invoiceNo,
        "transaction_date": transactionDate,
        "final_total": finalTotal,
        "first_name": firstName,
        "last_name": lastName,
        "mobile": mobile,
        "email": email,
        "shipping_address": shippingAddress,
      };
}
