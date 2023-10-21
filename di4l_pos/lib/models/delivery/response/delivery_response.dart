// To parse this JSON data, do
//
//     final deliveryResponse = deliveryResponseFromJson(jsonString);

import 'dart:convert';

class DeliveryResponse {
  bool? success;
  Data? data;

  DeliveryResponse({
    this.success,
    this.data,
  });

  DeliveryResponse copyWith({
    bool? success,
    Data? data,
  }) =>
      DeliveryResponse(
        success: success ?? this.success,
        data: data ?? this.data,
      );

  factory DeliveryResponse.fromRawJson(String str) =>
      DeliveryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeliveryResponse.fromJson(Map<String, dynamic> json) =>
      DeliveryResponse(
        success: json["success"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
      };
}

class Data {
  List<DeliveryPartner>? deliveryPartners;
  String? deliveryPartnerCode;
  List<Location>? locations;
  AllProvince? allProvince;

  Data({
    this.deliveryPartners,
    this.deliveryPartnerCode,
    this.locations,
    this.allProvince,
  });

  Data copyWith({
    List<DeliveryPartner>? deliveryPartners,
    String? deliveryPartnerCode,
    List<Location>? locations,
    AllProvince? allProvince,
  }) =>
      Data(
        deliveryPartners: deliveryPartners ?? this.deliveryPartners,
        deliveryPartnerCode: deliveryPartnerCode ?? this.deliveryPartnerCode,
        locations: locations ?? this.locations,
        allProvince: allProvince ?? this.allProvince,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        deliveryPartners: json["deliveryPartners"] == null
            ? []
            : List<DeliveryPartner>.from(json["deliveryPartners"]!
                .map((x) => DeliveryPartner.fromJson(x))),
        deliveryPartnerCode: json["deliveryPartnerCode"],
        locations: json["locations"] == null
            ? []
            : List<Location>.from(
                json["locations"]!.map((x) => Location.fromJson(x))),
        allProvince: json["all_province"] == null
            ? null
            : AllProvince.fromJson(json["all_province"]),
      );

  Map<String, dynamic> toJson() => {
        "deliveryPartners": deliveryPartners == null
            ? []
            : List<dynamic>.from(deliveryPartners!.map((x) => x.toJson())),
        "deliveryPartnerCode": deliveryPartnerCode,
        "locations": locations == null
            ? []
            : List<dynamic>.from(locations!.map((x) => x.toJson())),
        "all_province": allProvince?.toJson(),
      };
}

class AllProvince {
  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  AllProvince({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  AllProvince copyWith({
    int? currentPage,
    List<Datum>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    String? nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) =>
      AllProvince(
        currentPage: currentPage ?? this.currentPage,
        data: data ?? this.data,
        firstPageUrl: firstPageUrl ?? this.firstPageUrl,
        from: from ?? this.from,
        lastPage: lastPage ?? this.lastPage,
        lastPageUrl: lastPageUrl ?? this.lastPageUrl,
        nextPageUrl: nextPageUrl ?? this.nextPageUrl,
        path: path ?? this.path,
        perPage: perPage ?? this.perPage,
        prevPageUrl: prevPageUrl ?? this.prevPageUrl,
        to: to ?? this.to,
        total: total ?? this.total,
      );

  factory AllProvince.fromRawJson(String str) =>
      AllProvince.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllProvince.fromJson(Map<String, dynamic> json) => AllProvince(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  int? id;
  String? fullname;
  int? parentId;
  String? code;
  String? codename;
  String? divisionType;
  int? phoneCode;
  int? isDeleted;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;
  int? vtpostId;
  String? vtpostName;
  String? codenameVnpost;
  int? vnpostId;
  dynamic vnpostParentId;
  String? ghnName;
  int? ghnId;

  Datum({
    this.id,
    this.fullname,
    this.parentId,
    this.code,
    this.codename,
    this.divisionType,
    this.phoneCode,
    this.isDeleted,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.vtpostId,
    this.vtpostName,
    this.codenameVnpost,
    this.vnpostId,
    this.vnpostParentId,
    this.ghnName,
    this.ghnId,
  });

  Datum copyWith({
    int? id,
    String? fullname,
    int? parentId,
    String? code,
    String? codename,
    String? divisionType,
    int? phoneCode,
    int? isDeleted,
    int? createdBy,
    int? updatedBy,
    String? createdAt,
    String? updatedAt,
    int? vtpostId,
    String? vtpostName,
    String? codenameVnpost,
    int? vnpostId,
    dynamic vnpostParentId,
    String? ghnName,
    int? ghnId,
  }) =>
      Datum(
        id: id ?? this.id,
        fullname: fullname ?? this.fullname,
        parentId: parentId ?? this.parentId,
        code: code ?? this.code,
        codename: codename ?? this.codename,
        divisionType: divisionType ?? this.divisionType,
        phoneCode: phoneCode ?? this.phoneCode,
        isDeleted: isDeleted ?? this.isDeleted,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        vtpostId: vtpostId ?? this.vtpostId,
        vtpostName: vtpostName ?? this.vtpostName,
        codenameVnpost: codenameVnpost ?? this.codenameVnpost,
        vnpostId: vnpostId ?? this.vnpostId,
        vnpostParentId: vnpostParentId ?? this.vnpostParentId,
        ghnName: ghnName ?? this.ghnName,
        ghnId: ghnId ?? this.ghnId,
      );

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        fullname: json["fullname"],
        parentId: json["parent_id"],
        code: json["code"],
        codename: json["codename"],
        divisionType: json["division_type"],
        phoneCode: json["phone_code"],
        isDeleted: json["is_deleted"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        vtpostId: json["vtpost_id"],
        vtpostName: json["vtpost_name"],
        codenameVnpost: json["Codename_vnpost"],
        vnpostId: json["vnpost_id"],
        vnpostParentId: json["vnpost_parent_id"],
        ghnName: json["ghn_name"],
        ghnId: json["ghn_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullname": fullname,
        "parent_id": parentId,
        "code": code,
        "codename": codename,
        "division_type": divisionType,
        "phone_code": phoneCode,
        "is_deleted": isDeleted,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "vtpost_id": vtpostId,
        "vtpost_name": vtpostName,
        "Codename_vnpost": codenameVnpost,
        "vnpost_id": vnpostId,
        "vnpost_parent_id": vnpostParentId,
        "ghn_name": ghnName,
        "ghn_id": ghnId,
      };
}

class DeliveryPartner {
  int? id;
  String? fullname;
  String? logo;
  String? code;
  String? info;
  int? isDeleted;
  dynamic rememberToken;
  String? createdAt;
  String? updatedAt;
  DeliveryTenancy? deliveryTenancy;

  DeliveryPartner({
    this.id,
    this.fullname,
    this.logo,
    this.code,
    this.info,
    this.isDeleted,
    this.rememberToken,
    this.createdAt,
    this.updatedAt,
    this.deliveryTenancy,
  });

  DeliveryPartner copyWith({
    int? id,
    String? fullname,
    String? logo,
    String? code,
    String? info,
    int? isDeleted,
    dynamic rememberToken,
    String? createdAt,
    String? updatedAt,
    DeliveryTenancy? deliveryTenancy,
  }) =>
      DeliveryPartner(
        id: id ?? this.id,
        fullname: fullname ?? this.fullname,
        logo: logo ?? this.logo,
        code: code ?? this.code,
        info: info ?? this.info,
        isDeleted: isDeleted ?? this.isDeleted,
        rememberToken: rememberToken ?? this.rememberToken,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deliveryTenancy: deliveryTenancy ?? this.deliveryTenancy,
      );

  factory DeliveryPartner.fromRawJson(String str) =>
      DeliveryPartner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeliveryPartner.fromJson(Map<String, dynamic> json) =>
      DeliveryPartner(
        id: json["id"],
        fullname: json["fullname"],
        logo: json["logo"],
        code: json["code"],
        info: json["info"],
        isDeleted: json["is_deleted"],
        rememberToken: json["remember_token"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deliveryTenancy: json["delivery_tenancy"] == null
            ? null
            : DeliveryTenancy.fromJson(json["delivery_tenancy"]),
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
        "delivery_tenancy": deliveryTenancy?.toJson(),
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
      };
}

class Location {
  String? name;
  String? locationId;
  String? city;
  int? idProvince;
  int? idWard;
  int? idDistrict;
  int? id;
  String? email;

  Location({
    this.name,
    this.locationId,
    this.city,
    this.idProvince,
    this.idWard,
    this.idDistrict,
    this.id,
    this.email,
  });

  Location copyWith({
    String? name,
    String? locationId,
    String? city,
    int? idProvince,
    int? idWard,
    int? idDistrict,
    int? id,
    String? email,
  }) =>
      Location(
        name: name ?? this.name,
        locationId: locationId ?? this.locationId,
        city: city ?? this.city,
        idProvince: idProvince ?? this.idProvince,
        idWard: idWard ?? this.idWard,
        idDistrict: idDistrict ?? this.idDistrict,
        id: id ?? this.id,
        email: email ?? this.email,
      );

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        locationId: json["location_id"],
        city: json["city"],
        idProvince: json["id_province"],
        idWard: json["id_ward"],
        idDistrict: json["id_district"],
        id: json["id"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "location_id": locationId,
        "city": city,
        "id_province": idProvince,
        "id_ward": idWard,
        "id_district": idDistrict,
        "id": id,
        "email": email,
      };
}
