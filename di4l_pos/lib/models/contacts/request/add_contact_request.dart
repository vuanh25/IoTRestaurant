import 'dart:convert';

class AddContactRequest {
  AddContactRequest({
    this.type,
    this.supplierBusinessName,
    this.parentId,
    this.firstName,
    this.lastName,
    this.taxNumber,
    this.payTermNumber,
    this.payTermType,
    this.mobile,
    this.addressLine1,
    this.customerGroupId,
    this.contactId,
    this.dob,
    this.email,
    this.shippingAddress,
    this.openingBalance,
  });

  String? type;
  int? parentId;
  int? customerGroupId;
  String? firstName;
  String? lastName;
  String? supplierBusinessName;
  String? mobile;
  String? email;
  String? dob;
  String? taxNumber;
  dynamic openingBalance;
  dynamic payTermNumber;
  String? payTermType;
  String? addressLine1;
  String? shippingAddress;
  String? contactId;

  AddContactRequest copyWith({
    String? type,
    String? supplierBusinessName,
    int? parentId,
    String? firstName,
    String? lastName,
    String? taxNumber,
    dynamic payTermNumber,
    String? payTermType,
    String? mobile,
    String? addressLine1,
    int? customerGroupId,
    String? contactId,
    String? dob,
    String? email,
    String? shippingAddress,
    dynamic openingBalance,
  }) =>
      AddContactRequest(
        type: type ?? this.type,
        supplierBusinessName: supplierBusinessName ?? this.supplierBusinessName,
        parentId: parentId ?? this.parentId,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        taxNumber: taxNumber ?? this.taxNumber,
        payTermNumber: payTermNumber ?? this.payTermNumber,
        payTermType: payTermType ?? this.payTermType,
        mobile: mobile ?? this.mobile,
        addressLine1: addressLine1 ?? this.addressLine1,
        customerGroupId: customerGroupId ?? this.customerGroupId,
        contactId: contactId ?? this.contactId,
        dob: dob ?? this.dob,
        email: email ?? this.email,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        openingBalance: openingBalance ?? this.openingBalance,
      );

  factory AddContactRequest.fromRawJson(String str) =>
      AddContactRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddContactRequest.fromJson(Map<String, dynamic> json) =>
      AddContactRequest(
        type: json["type"],
        supplierBusinessName: json["supplier_business_name"],
        parentId: json["parent_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        taxNumber: json["tax_number"],
        payTermNumber:
            json["pay_term_number"],
        payTermType:
            json["pay_term_type"],
        mobile: json["mobile"],
        addressLine1:
            json["address_line_1"],
        customerGroupId: json["customer_group_id"],
        contactId: json["contact_id"],
        dob: json["dob"],
        email: json["email"],
        shippingAddress:
            json["shipping_address"],
        openingBalance:
            json["opening_balance"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "supplier_business_name":
            supplierBusinessName,
        "parent_id": parentId,
        "first_name": firstName,
        "last_name": lastName,
        "tax_number": taxNumber,
        "pay_term_number": payTermNumber,
        "pay_term_type": payTermType,
        "mobile": mobile,
        "address_line_1": addressLine1,
        "customer_group_id": customerGroupId,
        "contact_id": contactId,
        "dob": dob,
        "email": email,
        "shipping_address": shippingAddress,
        "opening_balance": openingBalance,
      };
}
