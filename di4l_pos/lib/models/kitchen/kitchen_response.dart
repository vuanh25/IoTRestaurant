import 'dart:convert';

class KitchenResponse {
  KitchenResponse({this.data});

  List<KitchenData>? data;

  KitchenResponse copyWith({List<KitchenData>? data}) =>
      KitchenResponse(data: data ?? this.data);

  factory KitchenResponse.fromRawJson(String str) =>
      KitchenResponse.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory KitchenResponse.fromJson(Map<String?, dynamic> json) =>
      KitchenResponse(
        data: json["data"] == null
            ? null
            : List<KitchenData>.from(
                json["data"].map((x) => KitchenData.fromJson(x))),
      );

  Map<String?, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class KitchenData {
  int? id;
  int? businessId;
  int? locationId;
  int? resTableId;
  int? contactId;
  int? resWaiterId;
  String? resOrderStatus;
  String? type;
  String? status;
  String? transactionDate;
  String? finalTotal;
  String? customerName;
  String? businessLocation;
  String? tableName;

  KitchenData(
      {this.id,
      this.businessId,
      this.locationId,
      this.resTableId,
      this.contactId,
      this.resWaiterId,
      this.resOrderStatus,
      this.type,
      this.status,
      this.transactionDate,
      this.finalTotal,
      this.customerName,
      this.businessLocation,
      this.tableName});

  KitchenData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    locationId = json['location_id'];
    resTableId = json['res_table_id'];
    contactId = json['contact_id'];
    resWaiterId = json['res_waiter_id'];
    resOrderStatus = json['res_order_status'];
    type = json['type'];
    status = json['status'];
    transactionDate = json['transaction_date'];
    finalTotal = json['final_total'];
    customerName = json['customer_name'];
    businessLocation = json['business_location'];
    tableName = json['table_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['location_id'] = locationId;
    data['res_table_id'] = resTableId;
    data['contact_id'] = contactId;
    data['res_waiter_id'] = resWaiterId;
    data['res_order_status'] = resOrderStatus;
    data['type'] = type;
    data['status'] = status;
    data['transaction_date'] = transactionDate;
    data['final_total'] = finalTotal;
    data['customer_name'] = customerName;
    data['business_location'] = businessLocation;
    data['table_name'] = tableName;
    return data;
  }
}
