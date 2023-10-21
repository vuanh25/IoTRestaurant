// ignore_for_file: prefer_null_aware_operators

import 'dart:convert';

import 'package:di4l_pos/models/pagination/response/links.dart';
import 'package:di4l_pos/models/pagination/response/meta.dart';

class ContactsResponse {
  ContactsResponse({this.data, this.links, this.meta});

  List<ContactModel>? data;
  Links? links;
  Meta? meta;

  ContactsResponse copyWith({
    List<ContactModel>? data,
    Links? links,
    Meta? meta,
  }) =>
      ContactsResponse(
        data: data ?? this.data,
        links: links ?? this.links,
        meta: meta ?? this.meta,
      );

  factory ContactsResponse.fromRawJson(String str) =>
      ContactsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      ContactsResponse(
        data: json["data"] == null
            ? null
            : List<ContactModel>.from(
                json["data"].map((x) => ContactModel.fromJson(x))),
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "links": links == null ? null : links!.toJson(),
        "meta": meta == null ? null : meta!.toJson(),
      };
}

class ContactModel {
  ContactModel({
    this.id,
    this.businessId,
    this.type,
    this.supplierBusinessName,
    this.name,
    this.prefix,
    this.firstName,
    this.middleName,
    this.lastName,
    this.email,
    this.contactId,
    this.contactStatus,
    this.taxNumber,
    this.city,
    this.state,
    this.country,
    this.addressLine1,
    this.addressLine2,
    this.zipCode,
    this.dob,
    this.mobile,
    this.landline,
    this.alternateNumber,
    this.openingBalance,
    this.payTermNumber,
    this.payTermType,
    this.creditLimit,
    this.createdBy,
    this.convertedBy,
    this.convertedOn,
    this.balance,
    this.totalRp,
    this.totalRpUsed,
    this.totalRpExpired,
    this.isDefault,
    this.shippingAddress,
    this.shippingCustomFieldDetails,
    this.isExport,
    this.exportCustomField1,
    this.exportCustomField2,
    this.exportCustomField3,
    this.exportCustomField4,
    this.exportCustomField5,
    this.exportCustomField6,
    this.position,
    this.customerGroupId,
    this.crmSource,
    this.crmLifeStage,
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
    this.customField5,
    this.customField6,
    this.customField7,
    this.customField8,
    this.customField9,
    this.customField10,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.parentId,
  });

  int? id;
  int? businessId;
  String? type;
  String? supplierBusinessName;
  String? name;
  String? prefix;
  String? firstName;
  String? middleName;
  String? lastName;
  String? email;
  String? contactId;
  String? contactStatus;
  dynamic taxNumber;
  dynamic city;
  dynamic state;
  dynamic country;
  dynamic addressLine1;
  dynamic addressLine2;
  dynamic zipCode;
  String? dob;
  String? mobile;
  String? landline;
  String? alternateNumber;
  dynamic payTermNumber;
  dynamic payTermType;
  int? openingBalance;
  String? creditLimit;
  int? createdBy;
  dynamic convertedBy;
  dynamic convertedOn;
  String? balance;
  double? totalRp;
  double? totalRpUsed;
  double? totalRpExpired;
  int? isDefault;
  dynamic shippingAddress;
  dynamic shippingCustomFieldDetails;
  int? isExport;
  dynamic exportCustomField1;
  dynamic exportCustomField2;
  dynamic exportCustomField3;
  dynamic exportCustomField4;
  dynamic exportCustomField5;
  dynamic exportCustomField6;
  dynamic position;
  dynamic customerGroupId;
  dynamic crmSource;
  dynamic crmLifeStage;
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic customField5;
  dynamic customField6;
  dynamic customField7;
  dynamic customField8;
  dynamic customField9;
  dynamic customField10;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  int? parentId;

  ContactModel copyWith({
    int? id,
    int? businessId,
    String? type,
    String? supplierBusinessName,
    String? name,
    String? prefix,
    String? firstName,
    String? middleName,
    String? lastName,
    String? email,
    String? contactId,
    String? contactStatus,
    dynamic taxNumber,
    dynamic city,
    dynamic state,
    dynamic country,
    dynamic addressLine1,
    dynamic addressLine2,
    dynamic zipCode,
    String? dob,
    String? mobile,
    String? landline,
    String? alternateNumber,
    dynamic payTermNumber,
    dynamic payTermType,
    String? creditLimit,
    int? createdBy,
    dynamic convertedBy,
    dynamic convertedOn,
    String? balance,
    double? totalRp,
    double? totalRpUsed,
    double? totalRpExpired,
    int? isDefault,
    dynamic shippingAddress,
    dynamic shippingCustomFieldDetails,
    int? isExport,
    dynamic exportCustomField1,
    dynamic exportCustomField2,
    dynamic exportCustomField3,
    dynamic exportCustomField4,
    dynamic exportCustomField5,
    dynamic exportCustomField6,
    dynamic position,
    dynamic customerGroupId,
    dynamic crmSource,
    dynamic crmLifeStage,
    dynamic customField1,
    dynamic customField2,
    dynamic customField3,
    dynamic customField4,
    dynamic customField5,
    dynamic customField6,
    dynamic customField7,
    dynamic customField8,
    dynamic customField9,
    dynamic customField10,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    int? parentId,
  }) =>
      ContactModel(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        type: type ?? this.type,
        supplierBusinessName: supplierBusinessName ?? this.supplierBusinessName,
        name: name ?? this.name,
        prefix: prefix ?? this.prefix,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        contactId: contactId ?? this.contactId,
        contactStatus: contactStatus ?? this.contactStatus,
        taxNumber: taxNumber ?? this.taxNumber,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        addressLine1: addressLine1 ?? this.addressLine1,
        addressLine2: addressLine2 ?? this.addressLine2,
        zipCode: zipCode ?? this.zipCode,
        dob: dob ?? this.dob,
        mobile: mobile ?? this.mobile,
        landline: landline ?? this.landline,
        alternateNumber: alternateNumber ?? this.alternateNumber,
        openingBalance: openingBalance ?? openingBalance,
        payTermNumber: payTermNumber ?? this.payTermNumber,
        payTermType: payTermType ?? this.payTermType,
        creditLimit: creditLimit ?? this.creditLimit,
        createdBy: createdBy ?? this.createdBy,
        convertedBy: convertedBy ?? this.convertedBy,
        convertedOn: convertedOn ?? this.convertedOn,
        balance: balance ?? this.balance,
        totalRp: totalRp ?? this.totalRp,
        totalRpUsed: totalRpUsed ?? this.totalRpUsed,
        totalRpExpired: totalRpExpired ?? this.totalRpExpired,
        isDefault: isDefault ?? this.isDefault,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        shippingCustomFieldDetails:
            shippingCustomFieldDetails ?? this.shippingCustomFieldDetails,
        isExport: isExport ?? this.isExport,
        exportCustomField1: exportCustomField1 ?? this.exportCustomField1,
        exportCustomField2: exportCustomField2 ?? this.exportCustomField2,
        exportCustomField3: exportCustomField3 ?? this.exportCustomField3,
        exportCustomField4: exportCustomField4 ?? this.exportCustomField4,
        exportCustomField5: exportCustomField5 ?? this.exportCustomField5,
        exportCustomField6: exportCustomField6 ?? this.exportCustomField6,
        position: position ?? this.position,
        customerGroupId: customerGroupId ?? this.customerGroupId,
        crmSource: crmSource ?? this.crmSource,
        crmLifeStage: crmLifeStage ?? this.crmLifeStage,
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        customField5: customField5 ?? this.customField5,
        customField6: customField6 ?? this.customField6,
        customField7: customField7 ?? this.customField7,
        customField8: customField8 ?? this.customField8,
        customField9: customField9 ?? this.customField9,
        customField10: customField10 ?? this.customField10,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        parentId: parentId ?? this.parentId,
      );

  factory ContactModel.fromRawJson(String str) =>
      ContactModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        id: json["id"],
        businessId: json["business_id"],
        type: json["type"],
        supplierBusinessName: json["supplier_business_name"],
        name: json["name"],
        prefix: json["prefix"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        email: json["email"],
        contactId: json["contact_id"],
        contactStatus:
            json["contact_status"],
        taxNumber: json["tax_number"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        addressLine1: json["address_line_1"],
        addressLine2: json["address_line_2"],
        zipCode: json["zip_code"],
        dob: json["dob"],
        mobile: json["mobile"],
        landline: json["landline"],
        alternateNumber:
            json["alternate_number"],
        openingBalance:
            json['opening_balance'],
        payTermNumber: json["pay_term_number"],
        payTermType: json["pay_term_type"],
        creditLimit: json["credit_limit"],
        createdBy: json["created_by"],
        convertedBy: json["converted_by"],
        convertedOn: json["converted_on"],
        balance: json["balance"],
        totalRp: json["total_rp"] == null ? null : json["total_rp"].toDouble(),
        totalRpUsed: json["total_rp_used"] == null
            ? null
            : json["total_rp_used"].toDouble(),
        totalRpExpired: json["total_rp_expired"] == null
            ? null
            : json["total_rp_expired"].toDouble(),
        isDefault: json["is_default"],
        shippingAddress: json["shipping_address"],
        shippingCustomFieldDetails: json["shipping_custom_field_details"],
        isExport: json["is_export"],
        exportCustomField1: json["export_custom_field_1"],
        exportCustomField2: json["export_custom_field_2"],
        exportCustomField3: json["export_custom_field_3"],
        exportCustomField4: json["export_custom_field_4"],
        exportCustomField5: json["export_custom_field_5"],
        exportCustomField6: json["export_custom_field_6"],
        position: json["position"],
        customerGroupId: json["customer_group_id"],
        crmSource: json["crm_source"],
        crmLifeStage: json["crm_life_stage"],
        customField1: json["custom_field1"],
        customField2: json["custom_field2"],
        customField3: json["custom_field3"],
        customField4: json["custom_field4"],
        customField5: json["custom_field5"],
        customField6: json["custom_field6"],
        customField7: json["custom_field7"],
        customField8: json["custom_field8"],
        customField9: json["custom_field9"],
        customField10: json["custom_field10"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        parentId: json["parent_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "type": type,
        "supplier_business_name": supplierBusinessName,
        "name": name,
        "prefix": prefix,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "email": email,
        "contact_id": contactId,
        "contact_status": contactStatus,
        "tax_number": taxNumber,
        "city": city,
        "state": state,
        "country": country,
        "address_line_1": addressLine1,
        "address_line_2": addressLine2,
        "zip_code": zipCode,
        "dob": dob,
        "mobile": mobile,
        "landline": landline,
        "alternate_number": alternateNumber,
        'opening_balance': openingBalance,
        "pay_term_number": payTermNumber,
        "pay_term_type": payTermType,
        "credit_limit": creditLimit,
        "created_by": createdBy,
        "converted_by": convertedBy,
        "converted_on": convertedOn,
        "balance": balance,
        "total_rp": totalRp,
        "total_rp_used": totalRpUsed,
        "total_rp_expired": totalRpExpired,
        "is_default": isDefault,
        "shipping_address": shippingAddress,
        "shipping_custom_field_details": shippingCustomFieldDetails,
        "is_export": isExport,
        "export_custom_field_1": exportCustomField1,
        "export_custom_field_2": exportCustomField2,
        "export_custom_field_3": exportCustomField3,
        "export_custom_field_4": exportCustomField4,
        "export_custom_field_5": exportCustomField5,
        "export_custom_field_6": exportCustomField6,
        "position": position,
        "customer_group_id": customerGroupId,
        "crm_source": crmSource,
        "crm_life_stage": crmLifeStage,
        "custom_field1": customField1,
        "custom_field2": customField2,
        "custom_field3": customField3,
        "custom_field4": customField4,
        "custom_field5": customField5,
        "custom_field6": customField6,
        "custom_field7": customField7,
        "custom_field8": customField8,
        "custom_field9": customField9,
        "custom_field10": customField10,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "parent_id": parentId,
      };

  String getFullAddress() {
    if ((state?.isEmpty ?? true) &&
        (state?.isEmpty ?? true) &&
        (country?.isEmpty ?? true)) {
      return '';
    }
    return '${state ?? ''}, ${city ?? ''}, ${country ?? ''}';
  }

  String getFullName() {
    return '${firstName ?? ''} ${lastName ?? ''}';
  }
}
