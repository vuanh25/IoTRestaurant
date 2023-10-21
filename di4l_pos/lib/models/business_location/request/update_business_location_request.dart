// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UpdateBusinessLocationRequest {
  String? name;
  String? locationId;
  String? landmark;
  String? city;
  String? zipCode;
  String? state;
  String? country;
  String? mobile;
  String? alternateNumber;
  String? email;
  String? website;
  dynamic featuredProducts;
  int? invoiceSchemeId;
  int? invoiceLayoutId;
  int? saleInvoiceLayoutId;
  int? sellingPriceGroupId;
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;
  DefaultPaymentAccounts? defaultPaymentAccounts;
  int? provinceId;
  int? districtId;
  int? wardId;

  UpdateBusinessLocationRequest({
    this.name,
    this.locationId,
    this.landmark,
    this.city,
    this.zipCode,
    this.state,
    this.country,
    this.mobile,
    this.alternateNumber,
    this.email,
    this.website,
    this.featuredProducts,
    this.invoiceSchemeId,
    this.invoiceLayoutId,
    this.saleInvoiceLayoutId,
    this.sellingPriceGroupId,
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
    this.defaultPaymentAccounts,
    this.provinceId,
    this.districtId,
    this.wardId,
  });

  UpdateBusinessLocationRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    locationId = json['location_id'];
    landmark = json['landmark'];
    city = json['city'];
    zipCode = json['zip_code'];
    state = json['state'];
    country = json['country'];
    mobile = json['mobile'];
    alternateNumber = json['alternate_number'];
    email = json['email'];
    website = json['website'];
    featuredProducts = json['featured_products'];
    invoiceSchemeId = json['invoice_scheme_id'];
    invoiceLayoutId = json['invoice_layout_id'];
    saleInvoiceLayoutId = json['sale_invoice_layout_id'];
    sellingPriceGroupId = json['selling_price_group_id'];
    customField1 = json['custom_field1'];
    customField2 = json['custom_field2'];
    customField3 = json['custom_field3'];
    customField4 = json['custom_field4'];
    defaultPaymentAccounts = json['default_payment_accounts'] != null
        ? DefaultPaymentAccounts.fromJson(json['default_payment_accounts'])
        : null;
    provinceId = json['Id_province'];
    districtId = json['id_district'];
    wardId = json['id_ward'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['location_id'] = locationId;
    data['landmark'] = landmark;
    data['city'] = city;
    data['zip_code'] = zipCode;
    data['state'] = state;
    data['country'] = country;
    data['mobile'] = mobile;
    data['alternate_number'] = alternateNumber;
    data['email'] = email;
    data['website'] = website;
    data['featured_products'] = featuredProducts ?? featuredProducts;
    data['invoice_scheme_id'] = invoiceSchemeId;
    data['invoice_layout_id'] = invoiceLayoutId;
    data['sale_invoice_layout_id'] = saleInvoiceLayoutId;
    data['selling_price_group_id'] = sellingPriceGroupId;
    data['custom_field1'] = customField1;
    data['custom_field2'] = customField2;
    data['custom_field3'] = customField3;
    data['custom_field4'] = customField4;
    if (defaultPaymentAccounts != null) {
      data['default_payment_accounts'] = defaultPaymentAccounts!.toJson();
    }
    data['Id_province'] = provinceId;
    data['id_district'] = districtId;
    data['id_ward'] = wardId;
    return data;
  }

  factory UpdateBusinessLocationRequest.fromRawJson(String str) =>
      UpdateBusinessLocationRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  UpdateBusinessLocationRequest copyWith({
    String? name,
    String? locationId,
    String? landmark,
    String? city,
    String? zipCode,
    String? state,
    String? country,
    String? mobile,
    String? alternateNumber,
    String? email,
    String? website,
    dynamic featuredProducts,
    int? invoiceSchemeId,
    int? invoiceLayoutId,
    int? saleInvoiceLayoutId,
    int? sellingPriceGroupId,
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
    DefaultPaymentAccounts? defaultPaymentAccounts,
    int? provinceId,
    int? districtId,
    int? wardId,
  }) {
    return UpdateBusinessLocationRequest(
      name: name ?? this.name,
      locationId: locationId ?? this.locationId,
      landmark: landmark ?? this.landmark,
      city: city ?? this.city,
      zipCode: zipCode ?? this.zipCode,
      state: state ?? this.state,
      country: country ?? this.country,
      mobile: mobile ?? this.mobile,
      alternateNumber: alternateNumber ?? this.alternateNumber,
      email: email ?? this.email,
      website: website ?? this.website,
      featuredProducts: featuredProducts ?? this.featuredProducts,
      invoiceSchemeId: invoiceSchemeId ?? this.invoiceSchemeId,
      invoiceLayoutId: invoiceLayoutId ?? this.invoiceLayoutId,
      saleInvoiceLayoutId: saleInvoiceLayoutId ?? this.saleInvoiceLayoutId,
      sellingPriceGroupId: sellingPriceGroupId ?? this.sellingPriceGroupId,
      customField1: customField1 ?? this.customField1,
      customField2: customField2 ?? this.customField2,
      customField3: customField3 ?? this.customField3,
      customField4: customField4 ?? this.customField4,
      defaultPaymentAccounts:
          defaultPaymentAccounts ?? this.defaultPaymentAccounts,
      provinceId: provinceId ?? this.provinceId,
      districtId: districtId ?? this.districtId,
      wardId: wardId ?? this.wardId,
    );
  }
}

class DefaultPaymentAccounts {
  Payment? delivery;
  Payment? cash;
  Payment? card;
  Payment? cheque;
  Payment? bankTransfer;
  Payment? other;
  Payment? cashOnDelivery;
  Payment? customPay1;
  Payment? customPay2;
  Payment? customPay3;
  Payment? customPay4;
  Payment? customPay5;
  Payment? customPay6;
  Payment? customPay7;

  DefaultPaymentAccounts({
    this.delivery,
    this.cash,
    this.card,
    this.cheque,
    this.bankTransfer,
    this.other,
    this.cashOnDelivery,
    this.customPay1,
    this.customPay2,
    this.customPay3,
    this.customPay4,
    this.customPay5,
    this.customPay6,
    this.customPay7,
  });

  DefaultPaymentAccounts.fromJson(Map<String, dynamic> json) {
    delivery =
        json['delivery'] != null ? Payment.fromJson(json['delivery']) : null;
    cash = json['cash'] != null ? Payment.fromJson(json['cash']) : null;
    card = json['card'] != null ? Payment.fromJson(json['card']) : null;
    cheque = json['cheque'] != null ? Payment.fromJson(json['cheque']) : null;
    bankTransfer = json['bank_transfer'] != null
        ? Payment.fromJson(json['bank_transfer'])
        : null;
    other = json['other'] != null ? Payment.fromJson(json['other']) : null;
    cashOnDelivery = json['cash_on_delivery'] != null
        ? Payment.fromJson(json['cash_on_delivery'])
        : null;
    customPay1 = json['custom_pay_1'] != null
        ? Payment.fromJson(json['custom_pay_1'])
        : null;
    customPay2 = json['custom_pay_2'] != null
        ? Payment.fromJson(json['custom_pay_2'])
        : null;
    customPay3 = json['custom_pay_3'] != null
        ? Payment.fromJson(json['custom_pay_3'])
        : null;
    customPay4 = json['custom_pay_4'] != null
        ? Payment.fromJson(json['custom_pay_4'])
        : null;
    customPay5 = json['custom_pay_5'] != null
        ? Payment.fromJson(json['custom_pay_5'])
        : null;
    customPay6 = json['custom_pay_6'] != null
        ? Payment.fromJson(json['custom_pay_6'])
        : null;
    customPay7 = json['custom_pay_7'] != null
        ? Payment.fromJson(json['custom_pay_7'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (delivery != null) {
      data['delivery'] = delivery!.toJson();
    }
    if (cash != null) {
      data['cash'] = cash!.toJson();
    }
    if (card != null) {
      data['card'] = card!.toJson();
    }
    if (cheque != null) {
      data['cheque'] = cheque!.toJson();
    }
    if (bankTransfer != null) {
      data['bank_transfer'] = bankTransfer!.toJson();
    }
    if (other != null) {
      data['other'] = other!.toJson();
    }
    if (cashOnDelivery != null) {
      data['cash_on_delivery'] = cashOnDelivery!.toJson();
    }
    if (customPay1 != null) {
      data['custom_pay_1'] = customPay1!.toJson();
    }
    if (customPay2 != null) {
      data['custom_pay_2'] = customPay2!.toJson();
    }
    if (customPay3 != null) {
      data['custom_pay_3'] = customPay3!.toJson();
    }
    if (customPay4 != null) {
      data['custom_pay_4'] = customPay4!.toJson();
    }
    if (customPay5 != null) {
      data['custom_pay_5'] = customPay5!.toJson();
    }
    if (customPay6 != null) {
      data['custom_pay_6'] = customPay6!.toJson();
    }
    if (customPay7 != null) {
      data['custom_pay_7'] = customPay7!.toJson();
    }
    return data;
  }

  factory DefaultPaymentAccounts.fromRawJson(String str) =>
      DefaultPaymentAccounts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  DefaultPaymentAccounts copyWith({
    Payment? delivery,
    Payment? cash,
    Payment? card,
    Payment? cheque,
    Payment? bankTransfer,
    Payment? other,
    Payment? cashOnDelivery,
    Payment? customPay1,
    Payment? customPay2,
    Payment? customPay3,
    Payment? customPay4,
    Payment? customPay5,
    Payment? customPay6,
    Payment? customPay7,
  }) {
    return DefaultPaymentAccounts(
      delivery: delivery ?? this.delivery,
      cash: cash ?? this.cash,
      card: card ?? this.card,
      cheque: cheque ?? this.cheque,
      bankTransfer: bankTransfer ?? this.bankTransfer,
      other: other ?? this.other,
      cashOnDelivery: cashOnDelivery ?? this.cashOnDelivery,
      customPay1: customPay1 ?? this.customPay1,
      customPay2: customPay2 ?? this.customPay2,
      customPay3: customPay3 ?? this.customPay3,
      customPay4: customPay4 ?? this.customPay4,
      customPay5: customPay5 ?? this.customPay5,
      customPay6: customPay6 ?? this.customPay6,
      customPay7: customPay7 ?? this.customPay7,
    );
  }
}

class Payment {
  String? isEnabled;
  String? account;

  Payment({this.isEnabled, this.account});

  Payment.fromJson(Map<String, dynamic> json) {
    isEnabled = json['is_enabled'];
    account = json['account'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_enabled'] = isEnabled;
    data['account'] = account;
    return data;
  }

  factory Payment.fromRawJson(String str) => Payment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  Payment copyWith({
    String? isEnabled,
    String? account,
  }) {
    return Payment(
      isEnabled: isEnabled ?? this.isEnabled,
      account: account ?? this.account,
    );
  }
}
