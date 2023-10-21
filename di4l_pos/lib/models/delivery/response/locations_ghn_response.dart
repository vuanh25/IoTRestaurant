// To parse this JSON data, do
//
//     final locationsGhnResponse = locationsGhnResponseFromJson(jsonString);

import 'dart:convert';

class LocationsGhnResponse {
  int? code;
  String? message;
  Data? data;

  LocationsGhnResponse({
    this.code,
    this.message,
    this.data,
  });

  LocationsGhnResponse copyWith({
    int? code,
    String? message,
    Data? data,
  }) =>
      LocationsGhnResponse(
        code: code ?? this.code,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory LocationsGhnResponse.fromRawJson(String str) =>
      LocationsGhnResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LocationsGhnResponse.fromJson(Map<String, dynamic> json) =>
      LocationsGhnResponse(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  int? lastOffset;
  List<Shop>? shops;

  Data({
    this.lastOffset,
    this.shops,
  });

  Data copyWith({
    int? lastOffset,
    List<Shop>? shops,
  }) =>
      Data(
        lastOffset: lastOffset ?? this.lastOffset,
        shops: shops ?? this.shops,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        lastOffset: json["last_offset"],
        shops: json["shops"] == null
            ? []
            : List<Shop>.from(json["shops"]!.map((x) => Shop.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "last_offset": lastOffset,
        "shops": shops == null
            ? []
            : List<dynamic>.from(shops!.map((x) => x.toJson())),
      };
}

class Shop {
  int? id;
  String? name;
  String? phone;
  String? address;
  String? wardCode;
  int? districtId;
  int? clientId;
  int? bankAccountId;
  int? status;
  List<dynamic>? location;
  String? versionNo;
  bool? isCreatedChatChannel;
  String? updatedIp;
  int? updatedEmployee;
  int? updatedClient;
  String? updatedSource;
  String? updatedDate;
  String? createdIp;
  int? createdEmployee;
  int? createdClient;
  String? createdSource;
  String? createdDate;

  Shop({
    this.id,
    this.name,
    this.phone,
    this.address,
    this.wardCode,
    this.districtId,
    this.clientId,
    this.bankAccountId,
    this.status,
    this.location,
    this.versionNo,
    this.isCreatedChatChannel,
    this.updatedIp,
    this.updatedEmployee,
    this.updatedClient,
    this.updatedSource,
    this.updatedDate,
    this.createdIp,
    this.createdEmployee,
    this.createdClient,
    this.createdSource,
    this.createdDate,
  });

  Shop copyWith({
    int? id,
    String? name,
    String? phone,
    String? address,
    String? wardCode,
    int? districtId,
    int? clientId,
    int? bankAccountId,
    int? status,
    List<dynamic>? location,
    String? versionNo,
    bool? isCreatedChatChannel,
    String? updatedIp,
    int? updatedEmployee,
    int? updatedClient,
    String? updatedSource,
    String? updatedDate,
    String? createdIp,
    int? createdEmployee,
    int? createdClient,
    String? createdSource,
    String? createdDate,
  }) =>
      Shop(
        id: id ?? this.id,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        wardCode: wardCode ?? this.wardCode,
        districtId: districtId ?? this.districtId,
        clientId: clientId ?? this.clientId,
        bankAccountId: bankAccountId ?? this.bankAccountId,
        status: status ?? this.status,
        location: location ?? this.location,
        versionNo: versionNo ?? this.versionNo,
        isCreatedChatChannel: isCreatedChatChannel ?? this.isCreatedChatChannel,
        updatedIp: updatedIp ?? this.updatedIp,
        updatedEmployee: updatedEmployee ?? this.updatedEmployee,
        updatedClient: updatedClient ?? this.updatedClient,
        updatedSource: updatedSource ?? this.updatedSource,
        updatedDate: updatedDate ?? this.updatedDate,
        createdIp: createdIp ?? this.createdIp,
        createdEmployee: createdEmployee ?? this.createdEmployee,
        createdClient: createdClient ?? this.createdClient,
        createdSource: createdSource ?? this.createdSource,
        createdDate: createdDate ?? this.createdDate,
      );

  factory Shop.fromRawJson(String str) => Shop.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        id: json["_id"],
        name: json["name"],
        phone: json["phone"],
        address: json["address"],
        wardCode: json["ward_code"],
        districtId: json["district_id"],
        clientId: json["client_id"],
        bankAccountId: json["bank_account_id"],
        status: json["status"],
        location: json["location"] == null
            ? []
            : List<dynamic>.from(json["location"]!.map((x) => x)),
        versionNo: json["version_no"],
        isCreatedChatChannel: json["is_created_chat_channel"],
        updatedIp: json["updated_ip"],
        updatedEmployee: json["updated_employee"],
        updatedClient: json["updated_client"],
        updatedSource: json["updated_source"],
        updatedDate: json["updated_date"],
        createdIp: json["created_ip"],
        createdEmployee: json["created_employee"],
        createdClient: json["created_client"],
        createdSource: json["created_source"],
        createdDate: json["created_date"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "phone": phone,
        "address": address,
        "ward_code": wardCode,
        "district_id": districtId,
        "client_id": clientId,
        "bank_account_id": bankAccountId,
        "status": status,
        "location":
            location == null ? [] : List<dynamic>.from(location!.map((x) => x)),
        "version_no": versionNo,
        "is_created_chat_channel": isCreatedChatChannel,
        "updated_ip": updatedIp,
        "updated_employee": updatedEmployee,
        "updated_client": updatedClient,
        "updated_source": updatedSource,
        "updated_date": updatedDate,
        "created_ip": createdIp,
        "created_employee": createdEmployee,
        "created_client": createdClient,
        "created_source": createdSource,
        "created_date": createdDate,
      };
}
