// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BusinessLocation {
  BusinessLocation({
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
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
    this.provinceId,
    this.districtId,
    this.wardId,
    this.province,
    this.district,
    this.ward,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.payMethods,
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
  int? sellingPriceGroupId;
  int? printReceiptOnInvoice;
  String? receiptPrinterType;
  int? printerId;
  String? mobile;
  String? alternateNumber;
  String? email;
  String? website;
  dynamic featuredProducts;
  int? isActive;
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;
  int? provinceId;
  int? districtId;
  int? wardId;
  Division? province;
  Division? district;
  Division? ward;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  List<PayMethod>? payMethods;

  BusinessLocation copyWith({
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
    int? sellingPriceGroupId,
    int? printReceiptOnInvoice,
    String? receiptPrinterType,
    int? printerId,
    String? mobile,
    String? alternateNumber,
    String? email,
    String? website,
    dynamic featuredProducts,
    int? isActive,
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
    int? provinceId,
    int? districtId,
    int? wardId,
    Division? province,
    Division? district,
    Division? ward,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    List<PayMethod>? payMethods,
  }) =>
      BusinessLocation(
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
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        provinceId: provinceId ?? this.provinceId,
        districtId: districtId ?? this.districtId,
        wardId: wardId ?? this.wardId,
        province: province ?? this.province,
        district: district ?? this.district,
        ward: ward ?? this.ward,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
        payMethods: payMethods ?? this.payMethods,
      );

  factory BusinessLocation.fromRawJson(String str) =>
      BusinessLocation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BusinessLocation.fromJson(Map<String, dynamic> json) =>
      BusinessLocation(
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
        alternateNumber: json["alternate_number"],
        email: json["email"],
        website: json["website"],
        featuredProducts: json["featured_products"],
        isActive: json["is_active"],
        customField1: json["custom_field1"],
        customField2: json["custom_field2"],
        customField3: json["custom_field3"],
        customField4: json["custom_field4"],
        provinceId: json["Id_province"],
        districtId: json["id_district"],
        wardId: json["id_ward"],
        province: json["province"] != null
            ? Division.fromJson(json["province"])
            : null,
        district: json["district"] != null
            ? Division.fromJson(json["district"])
            : null,
        ward: json["ward"] != null ? Division.fromJson(json["ward"]) : null,
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        payMethods: json["payment_methods"] == null
            ? null
            : List<PayMethod>.from(
                json["payment_methods"].map((x) => PayMethod.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "location_id": locationId,
        "name": name ?? name,
        "landmark": landmark ?? landmark,
        "country": country ?? country,
        "state": state ?? state,
        "city": city ?? city,
        "zip_code": zipCode ?? zipCode,
        "invoice_scheme_id": invoiceSchemeId ?? invoiceSchemeId,
        "invoice_layout_id": invoiceLayoutId ?? invoiceLayoutId,
        "sale_invoice_layout_id": saleInvoiceLayoutId ?? saleInvoiceLayoutId,
        "selling_price_group_id": sellingPriceGroupId ?? sellingPriceGroupId,
        "print_receipt_on_invoice":
            printReceiptOnInvoice ?? printReceiptOnInvoice,
        "receipt_printer_type": receiptPrinterType ?? receiptPrinterType,
        "printer_id": printerId ?? printerId,
        "mobile": mobile ?? mobile,
        "alternate_number": alternateNumber ?? alternateNumber,
        "email": email ?? email,
        "website": website ?? website,
        "featured_products": featuredProducts ?? featuredProducts,
        "is_active": isActive ?? isActive,
        "custom_field1": customField1 ?? customField1,
        "custom_field2": customField2 ?? customField2,
        "custom_field3": customField3 ?? customField3,
        "custom_field4": customField4 ?? customField4,
        "Id_province": provinceId ?? provinceId,
        "id_district": districtId ?? districtId,
        "id_ward": wardId ?? wardId,
        "province": province == null ? null : province!.toJson(),
        "district": district == null ? null : district!.toJson(),
        "ward": ward == null ? null : ward!.toJson(),
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "payment_methods": payMethods == null
            ? null
            : List<dynamic>.from(payMethods!.map((x) => x.toJson())),
      };
}

class PayMethod {
  String? name;
  String? label;
  String? accountId;
  PayMethod({
    this.name,
    this.label,
    this.accountId,
  });

  PayMethod copyWith({
    String? name,
    String? label,
    String? accountId,
  }) =>
      PayMethod(
        name: name ?? this.name,
        label: label ?? this.label,
        accountId: accountId ?? this.accountId,
      );

  factory PayMethod.fromRawJson(String str) =>
      PayMethod.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PayMethod.fromJson(Map<String, dynamic> json) => PayMethod(
        name: json["name"],
        label: json["label"],
        accountId: json["account_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "label": label,
        "account_id": accountId,
      };
}

class Division {
  int? id;
  String? name;

  Division({
    this.id,
    this.name,
  });

  Division copyWith({
    int? id,
    String? name,
  }) {
    return Division(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  factory Division.fromRawJson(String str) =>
      Division.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Division.fromJson(Map<String, dynamic> json) => Division(
        id: json['id'],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
