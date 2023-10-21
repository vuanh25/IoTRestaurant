import 'dart:convert';

import 'package:di4l_pos/models/products/response/pivot.dart';

class ProductLocation {
  ProductLocation({
    this.id,
    this.businessId,
    this.locationId,
    this.name,
    this.landmark,
    this.country,
    this.state,
    this.city,
    this.zipCode,
    this.invoiceSchemeId,
    this.invoiceLayoutId,
    this.saleInvoiceLayoutId,
    this.sellingPriceGroupId,
    this.printReceiptOnInvoice,
    this.receiptPrinterType,
    this.printerId,
    this.mobile,
    this.alternateNumber,
    this.email,
    this.website,
    this.featuredProducts,
    this.isActive,
    this.defaultPaymentAccounts,
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  int? id;
  int? businessId;
  String? locationId;
  String? name;
  String? landmark;
  String? country;
  String? state;
  String? city;
  String? zipCode;
  int? invoiceSchemeId;
  int? invoiceLayoutId;
  int? saleInvoiceLayoutId;
  dynamic sellingPriceGroupId;
  int? printReceiptOnInvoice;
  String? receiptPrinterType;
  dynamic printerId;
  String? mobile;
  String? alternateNumber;
  String? email;
  String? website;
  dynamic featuredProducts;
  int? isActive;
  String? defaultPaymentAccounts;
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;

  ProductLocation copyWith({
    int? id,
    int? businessId,
    String? locationId,
    String? name,
    String? landmark,
    String? country,
    String? state,
    String? city,
    String? zipCode,
    int? invoiceSchemeId,
    int? invoiceLayoutId,
    int? saleInvoiceLayoutId,
    dynamic sellingPriceGroupId,
    int? printReceiptOnInvoice,
    String? receiptPrinterType,
    dynamic printerId,
    String? mobile,
    String? alternateNumber,
    String? email,
    String? website,
    dynamic featuredProducts,
    int? isActive,
    String? defaultPaymentAccounts,
    dynamic customField1,
    dynamic customField2,
    dynamic customField3,
    dynamic customField4,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    Pivot? pivot,
  }) =>
      ProductLocation(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        locationId: locationId ?? this.locationId,
        name: name ?? this.name,
        landmark: landmark ?? this.landmark,
        country: country ?? this.country,
        state: state ?? this.state,
        city: city ?? this.city,
        zipCode: zipCode ?? this.zipCode,
        invoiceSchemeId: invoiceSchemeId ?? this.invoiceSchemeId,
        invoiceLayoutId: invoiceLayoutId ?? this.invoiceLayoutId,
        saleInvoiceLayoutId: saleInvoiceLayoutId ?? this.saleInvoiceLayoutId,
        sellingPriceGroupId: sellingPriceGroupId ?? this.sellingPriceGroupId,
        printReceiptOnInvoice:
            printReceiptOnInvoice ?? this.printReceiptOnInvoice,
        receiptPrinterType: receiptPrinterType ?? this.receiptPrinterType,
        printerId: printerId ?? this.printerId,
        mobile: mobile ?? this.mobile,
        alternateNumber: alternateNumber ?? this.alternateNumber,
        email: email ?? this.email,
        website: website ?? this.website,
        featuredProducts: featuredProducts ?? this.featuredProducts,
        isActive: isActive ?? this.isActive,
        defaultPaymentAccounts:
            defaultPaymentAccounts ?? this.defaultPaymentAccounts,
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        pivot: pivot ?? this.pivot,
      );

  factory ProductLocation.fromRawJson(String str) =>
      ProductLocation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductLocation.fromJson(Map<String, dynamic> json) =>
      ProductLocation(
        id: json["id"],
        businessId: json["business_id"],
        locationId: json["location_id"],
        name: json["name"],
        landmark: json["landmark"],
        country: json["country"],
        state: json["state"],
        city: json["city"],
        zipCode: json["zip_code"],
        invoiceSchemeId: json["invoice_scheme_id"],
        invoiceLayoutId: json["invoice_layout_id"],
        saleInvoiceLayoutId: json["sale_invoice_layout_id"],
        sellingPriceGroupId: json["selling_price_group_id"],
        printReceiptOnInvoice: json["print_receipt_on_invoice"],
        receiptPrinterType: json["receipt_printer_type"],
        printerId: json["printer_id"],
        mobile: json["mobile"],
        alternateNumber:
            json["alternate_number"],
        email: json["email"],
        website: json["website"],
        featuredProducts: json["featured_products"],
        isActive: json["is_active"],
        defaultPaymentAccounts: json["default_payment_accounts"],
        customField1: json["custom_field1"],
        customField2: json["custom_field2"],
        customField3: json["custom_field3"],
        customField4: json["custom_field4"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        pivot: json["pivot"] == null ? null : Pivot.fromJson(json["pivot"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "location_id": locationId,
        "name": name,
        "landmark": landmark,
        "country": country,
        "state": state,
        "city": city,
        "zip_code": zipCode,
        "invoice_scheme_id": invoiceSchemeId,
        "invoice_layout_id": invoiceLayoutId,
        "sale_invoice_layout_id":
            saleInvoiceLayoutId,
        "selling_price_group_id": sellingPriceGroupId,
        "print_receipt_on_invoice":
            printReceiptOnInvoice,
        "receipt_printer_type":
            receiptPrinterType,
        "printer_id": printerId,
        "mobile": mobile,
        "alternate_number": alternateNumber,
        "email": email,
        "website": website,
        "featured_products": featuredProducts,
        "is_active": isActive,
        "default_payment_accounts":
            defaultPaymentAccounts,
        "custom_field1": customField1,
        "custom_field2": customField2,
        "custom_field3": customField3,
        "custom_field4": customField4,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "pivot": pivot == null ? null : pivot!.toJson(),
      };
}
