// To parse this JSON data, do
//
//     final ghtkDetailResponse = ghtkDetailResponseFromJson(jsonString);

import 'dart:convert';

class GhtkDetailResponse {
  bool? status;
  List<OrderElement>? orders;
  DeliveryTenancy? deliveryTenancy;

  GhtkDetailResponse({
    this.status,
    this.orders,
    this.deliveryTenancy,
  });

  GhtkDetailResponse copyWith({
    bool? status,
    List<OrderElement>? orders,
    DeliveryTenancy? deliveryTenancy,
  }) =>
      GhtkDetailResponse(
        status: status ?? this.status,
        orders: orders ?? this.orders,
        deliveryTenancy: deliveryTenancy ?? this.deliveryTenancy,
      );

  factory GhtkDetailResponse.fromRawJson(String str) =>
      GhtkDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GhtkDetailResponse.fromJson(Map<String, dynamic> json) =>
      GhtkDetailResponse(
        status: json["status"],
        orders: json["orders"] == null
            ? []
            : List<OrderElement>.from(
                json["orders"]!.map((x) => OrderElement.fromJson(x))),
        deliveryTenancy: json["deliveryTenancy"] == null
            ? null
            : DeliveryTenancy.fromJson(json["deliveryTenancy"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "orders": orders == null
            ? []
            : List<dynamic>.from(orders!.map((x) => x.toJson())),
        "deliveryTenancy": deliveryTenancy?.toJson(),
      };
}

class DeliveryTenancy {
  int? id;
  int? deliveryPartnerId;
  int? businessId;
  String? tokenKey;
  int? connectPartnerId;
  int? status;
  int? isDeleted;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;
  String? crmVnpost;
  int? idLocations;
  String? accountInfo;
  DeliveryPartners? deliveryPartners;

  DeliveryTenancy({
    this.id,
    this.deliveryPartnerId,
    this.businessId,
    this.tokenKey,
    this.connectPartnerId,
    this.status,
    this.isDeleted,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.crmVnpost,
    this.idLocations,
    this.accountInfo,
    this.deliveryPartners,
  });

  DeliveryTenancy copyWith({
    int? id,
    int? deliveryPartnerId,
    int? businessId,
    String? tokenKey,
    int? connectPartnerId,
    int? status,
    int? isDeleted,
    int? createdBy,
    int? updatedBy,
    String? createdAt,
    String? updatedAt,
    String? crmVnpost,
    int? idLocations,
    String? accountInfo,
    DeliveryPartners? deliveryPartners,
  }) =>
      DeliveryTenancy(
        id: id ?? this.id,
        deliveryPartnerId: deliveryPartnerId ?? this.deliveryPartnerId,
        businessId: businessId ?? this.businessId,
        tokenKey: tokenKey ?? this.tokenKey,
        connectPartnerId: connectPartnerId ?? this.connectPartnerId,
        status: status ?? this.status,
        isDeleted: isDeleted ?? this.isDeleted,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        crmVnpost: crmVnpost ?? this.crmVnpost,
        idLocations: idLocations ?? this.idLocations,
        accountInfo: accountInfo ?? this.accountInfo,
        deliveryPartners: deliveryPartners ?? this.deliveryPartners,
      );

  factory DeliveryTenancy.fromRawJson(String str) =>
      DeliveryTenancy.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeliveryTenancy.fromJson(Map<String, dynamic> json) =>
      DeliveryTenancy(
        id: json["id"],
        deliveryPartnerId: json["delivery_partner_id"],
        businessId: json["business_id"],
        tokenKey: json["token_key"],
        connectPartnerId: json["connect_partner_id"],
        status: json["status"],
        isDeleted: json["is_deleted"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        crmVnpost: json["crm_vnpost"],
        idLocations: json["id_locations"],
        accountInfo: json["account_info"],
        deliveryPartners: json["delivery_partners"] == null
            ? null
            : DeliveryPartners.fromJson(json["delivery_partners"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "delivery_partner_id": deliveryPartnerId,
        "business_id": businessId,
        "token_key": tokenKey,
        "connect_partner_id": connectPartnerId,
        "status": status,
        "is_deleted": isDeleted,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "crm_vnpost": crmVnpost,
        "id_locations": idLocations,
        "account_info": accountInfo,
        "delivery_partners": deliveryPartners?.toJson(),
      };
}

class DeliveryPartners {
  int? id;
  String? fullname;
  String? logo;
  String? code;
  String? info;
  int? isDeleted;
  dynamic rememberToken;
  String? createdAt;
  String? updatedAt;

  DeliveryPartners({
    this.id,
    this.fullname,
    this.logo,
    this.code,
    this.info,
    this.isDeleted,
    this.rememberToken,
    this.createdAt,
    this.updatedAt,
  });

  DeliveryPartners copyWith({
    int? id,
    String? fullname,
    String? logo,
    String? code,
    String? info,
    int? isDeleted,
    dynamic rememberToken,
    String? createdAt,
    String? updatedAt,
  }) =>
      DeliveryPartners(
        id: id ?? this.id,
        fullname: fullname ?? this.fullname,
        logo: logo ?? this.logo,
        code: code ?? this.code,
        info: info ?? this.info,
        isDeleted: isDeleted ?? this.isDeleted,
        rememberToken: rememberToken ?? this.rememberToken,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory DeliveryPartners.fromRawJson(String str) =>
      DeliveryPartners.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeliveryPartners.fromJson(Map<String, dynamic> json) =>
      DeliveryPartners(
        id: json["id"],
        fullname: json["fullname"],
        logo: json["logo"],
        code: json["code"],
        info: json["info"],
        isDeleted: json["is_deleted"],
        rememberToken: json["remember_token"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullname": fullname,
        "logo": logo,
        "code": code,
        "info": info,
        "is_deleted": isDeleted,
        "remember_token": rememberToken,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class OrderElement {
  String? createdBy;
  String? createdAt;
  OrderOrder? order;

  OrderElement({
    this.createdBy,
    this.createdAt,
    this.order,
  });

  OrderElement copyWith({
    String? createdBy,
    String? createdAt,
    OrderOrder? order,
  }) =>
      OrderElement(
        createdBy: createdBy ?? this.createdBy,
        createdAt: createdAt ?? this.createdAt,
        order: order ?? this.order,
      );

  factory OrderElement.fromRawJson(String str) =>
      OrderElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderElement.fromJson(Map<String, dynamic> json) => OrderElement(
        createdBy: json["created_by"],
        createdAt: json["created_at"],
        order:
            json["order"] == null ? null : OrderOrder.fromJson(json["order"]),
      );

  Map<String, dynamic> toJson() => {
        "created_by": createdBy,
        "created_at": createdAt,
        "order": order?.toJson(),
      };
}

class OrderOrder {
  String? labelId;
  String? partnerId;
  dynamic orderId;
  dynamic status;
  String? statusText;
  String? created;
  String? modified;
  String? message;
  DateTime? pickDate;
  DateTime? deliverDate;
  String? customerFullname;
  String? customerTel;
  String? address;
  int? storageDay;
  int? shipMoney;
  int? insurance;
  int? value;
  int? weight;
  int? pickMoney;
  int? isFreeship;
  List<Product>? products;

  OrderOrder({
    this.labelId,
    this.partnerId,
    this.orderId,
    this.status,
    this.statusText,
    this.created,
    this.modified,
    this.message,
    this.pickDate,
    this.deliverDate,
    this.customerFullname,
    this.customerTel,
    this.address,
    this.storageDay,
    this.shipMoney,
    this.insurance,
    this.value,
    this.weight,
    this.pickMoney,
    this.isFreeship,
    this.products,
  });

  OrderOrder copyWith({
    String? labelId,
    String? partnerId,
    dynamic orderId,
    int? status,
    String? statusText,
    String? created,
    String? modified,
    String? message,
    DateTime? pickDate,
    DateTime? deliverDate,
    String? customerFullname,
    String? customerTel,
    String? address,
    int? storageDay,
    int? shipMoney,
    int? insurance,
    int? value,
    int? weight,
    int? pickMoney,
    int? isFreeship,
    List<Product>? products,
  }) =>
      OrderOrder(
        labelId: labelId ?? this.labelId,
        partnerId: partnerId ?? this.partnerId,
        orderId: orderId ?? this.orderId,
        status: status ?? this.status,
        statusText: statusText ?? this.statusText,
        created: created ?? this.created,
        modified: modified ?? this.modified,
        message: message ?? this.message,
        pickDate: pickDate ?? this.pickDate,
        deliverDate: deliverDate ?? this.deliverDate,
        customerFullname: customerFullname ?? this.customerFullname,
        customerTel: customerTel ?? this.customerTel,
        address: address ?? this.address,
        storageDay: storageDay ?? this.storageDay,
        shipMoney: shipMoney ?? this.shipMoney,
        insurance: insurance ?? this.insurance,
        value: value ?? this.value,
        weight: weight ?? this.weight,
        pickMoney: pickMoney ?? this.pickMoney,
        isFreeship: isFreeship ?? this.isFreeship,
        products: products ?? this.products,
      );

  factory OrderOrder.fromRawJson(String str) =>
      OrderOrder.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderOrder.fromJson(Map<String, dynamic> json) => OrderOrder(
        labelId: json["label_id"],
        partnerId: json["partner_id"],
        orderId: json["order_id"],
        status: json["status"],
        statusText: json["status_text"],
        created: json["created"],
        modified: json["modified"],
        message: json["message"],
        pickDate: json["pick_date"] == null
            ? null
            : DateTime.parse(json["pick_date"]),
        deliverDate: json["deliver_date"] == null
            ? null
            : DateTime.parse(json["deliver_date"]),
        customerFullname: json["customer_fullname"],
        customerTel: json["customer_tel"],
        address: json["address"],
        storageDay: json["storage_day"],
        shipMoney: json["ship_money"],
        insurance: json["insurance"],
        value: json["value"],
        weight: json["weight"],
        pickMoney: json["pick_money"],
        isFreeship: json["is_freeship"],
        products: json["products"] == null
            ? []
            : List<Product>.from(
                json["products"]!.map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "label_id": labelId,
        "partner_id": partnerId,
        "order_id": orderId,
        "status": status,
        "status_text": statusText,
        "created": created,
        "modified": modified,
        "message": message,
        "pick_date":
            "${pickDate!.year.toString().padLeft(4, '0')}-${pickDate!.month.toString().padLeft(2, '0')}-${pickDate!.day.toString().padLeft(2, '0')}",
        "deliver_date":
            "${deliverDate!.year.toString().padLeft(4, '0')}-${deliverDate!.month.toString().padLeft(2, '0')}-${deliverDate!.day.toString().padLeft(2, '0')}",
        "customer_fullname": customerFullname,
        "customer_tel": customerTel,
        "address": address,
        "storage_day": storageDay,
        "ship_money": shipMoney,
        "insurance": insurance,
        "value": value,
        "weight": weight,
        "pick_money": pickMoney,
        "is_freeship": isFreeship,
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class Product {
  String? fullName;
  String? productCode;
  double? weight;
  int? quantity;

  Product({
    this.fullName,
    this.productCode,
    this.weight,
    this.quantity,
  });

  Product copyWith({
    String? fullName,
    String? productCode,
    double? weight,
    int? quantity,
  }) =>
      Product(
        fullName: fullName ?? this.fullName,
        productCode: productCode ?? this.productCode,
        weight: weight ?? this.weight,
        quantity: quantity ?? this.quantity,
      );

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        fullName: json["full_name"],
        productCode: json["product_code"],
        weight: json["weight"]?.toDouble(),
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "product_code": productCode,
        "weight": weight,
        "quantity": quantity,
      };
}
