// To parse this JSON data, do
//
//     final ghnDetailResponse = ghnDetailResponseFromJson(jsonString);

import 'dart:convert';

class GhnDetailResponse {
  bool? status;
  List<OrderElement>? orders;
  DeliveryTenancy? deliveryTenancy;

  GhnDetailResponse({
    this.status,
    this.orders,
    this.deliveryTenancy,
  });

  GhnDetailResponse copyWith({
    bool? status,
    List<OrderElement>? orders,
    DeliveryTenancy? deliveryTenancy,
  }) =>
      GhnDetailResponse(
        status: status ?? this.status,
        orders: orders ?? this.orders,
        deliveryTenancy: deliveryTenancy ?? this.deliveryTenancy,
      );

  factory GhnDetailResponse.fromRawJson(String str) =>
      GhnDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GhnDetailResponse.fromJson(Map<String, dynamic> json) =>
      GhnDetailResponse(
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
  int? shopId;
  int? clientId;
  String? returnName;
  String? returnPhone;
  String? returnAddress;
  String? returnWardCode;
  int? returnDistrictId;
  Location? returnLocation;
  String? fromName;
  String? fromPhone;
  String? fromHotline;
  String? fromAddress;
  String? fromWardCode;
  int? fromDistrictId;
  Location? fromLocation;
  int? deliverStationId;
  String? toName;
  String? toPhone;
  String? toAddress;
  String? toWardCode;
  int? toDistrictId;
  ToLocation? toLocation;
  int? weight;
  int? length;
  int? width;
  int? height;
  int? convertedWeight;
  dynamic imageIds;
  int? serviceTypeId;
  int? serviceId;
  int? paymentTypeId;
  List<int>? paymentTypeIds;
  int? customServiceFee;
  String? sortCode;
  int? codAmount;
  dynamic codCollectDate;
  dynamic codTransferDate;
  bool? isCodTransferred;
  bool? isCodCollected;
  int? insuranceValue;
  int? orderValue;
  int? pickStationId;
  String? clientOrderCode;
  int? codFailedAmount;
  dynamic codFailedCollectDate;
  String? requiredNote;
  String? content;
  String? note;
  String? employeeNote;
  String? sealCode;
  String? pickupTime;
  List<Item>? items;
  String? coupon;
  int? couponCampaignId;
  String? id;
  String? orderCode;
  String? versionNo;
  String? updatedIp;
  int? updatedEmployee;
  int? updatedClient;
  String? updatedSource;
  String? updatedDate;
  int? updatedWarehouse;
  String? createdIp;
  int? createdEmployee;
  int? createdClient;
  String? createdSource;
  String? createdDate;
  String? status;
  InternalProcess? internalProcess;
  int? pickWarehouseId;
  int? deliverWarehouseId;
  int? currentWarehouseId;
  int? returnWarehouseId;
  int? nextWarehouseId;
  int? currentTransportWarehouseId;
  String? leadtime;
  String? orderDate;
  List<dynamic>? data;
  String? socId;
  String? finishDate;
  List<String>? tag;
  List<Log>? log;
  bool? isPartialReturn;
  bool? isDocumentReturn;
  List<dynamic>? pickupShift;
  String? transportationStatus;
  String? transportationPhase;
  ExtraService? extraService;
  String? configFeeId;
  String? extraCostId;
  String? standardConfigFeeId;
  String? standardExtraCostId;

  OrderOrder({
    this.shopId,
    this.clientId,
    this.returnName,
    this.returnPhone,
    this.returnAddress,
    this.returnWardCode,
    this.returnDistrictId,
    this.returnLocation,
    this.fromName,
    this.fromPhone,
    this.fromHotline,
    this.fromAddress,
    this.fromWardCode,
    this.fromDistrictId,
    this.fromLocation,
    this.deliverStationId,
    this.toName,
    this.toPhone,
    this.toAddress,
    this.toWardCode,
    this.toDistrictId,
    this.toLocation,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.convertedWeight,
    this.imageIds,
    this.serviceTypeId,
    this.serviceId,
    this.paymentTypeId,
    this.paymentTypeIds,
    this.customServiceFee,
    this.sortCode,
    this.codAmount,
    this.codCollectDate,
    this.codTransferDate,
    this.isCodTransferred,
    this.isCodCollected,
    this.insuranceValue,
    this.orderValue,
    this.pickStationId,
    this.clientOrderCode,
    this.codFailedAmount,
    this.codFailedCollectDate,
    this.requiredNote,
    this.content,
    this.note,
    this.employeeNote,
    this.sealCode,
    this.pickupTime,
    this.items,
    this.coupon,
    this.couponCampaignId,
    this.id,
    this.orderCode,
    this.versionNo,
    this.updatedIp,
    this.updatedEmployee,
    this.updatedClient,
    this.updatedSource,
    this.updatedDate,
    this.updatedWarehouse,
    this.createdIp,
    this.createdEmployee,
    this.createdClient,
    this.createdSource,
    this.createdDate,
    this.status,
    this.internalProcess,
    this.pickWarehouseId,
    this.deliverWarehouseId,
    this.currentWarehouseId,
    this.returnWarehouseId,
    this.nextWarehouseId,
    this.currentTransportWarehouseId,
    this.leadtime,
    this.orderDate,
    this.data,
    this.socId,
    this.finishDate,
    this.tag,
    this.log,
    this.isPartialReturn,
    this.isDocumentReturn,
    this.pickupShift,
    this.transportationStatus,
    this.transportationPhase,
    this.extraService,
    this.configFeeId,
    this.extraCostId,
    this.standardConfigFeeId,
    this.standardExtraCostId,
  });

  OrderOrder copyWith({
    int? shopId,
    int? clientId,
    String? returnName,
    String? returnPhone,
    String? returnAddress,
    String? returnWardCode,
    int? returnDistrictId,
    Location? returnLocation,
    String? fromName,
    String? fromPhone,
    String? fromHotline,
    String? fromAddress,
    String? fromWardCode,
    int? fromDistrictId,
    Location? fromLocation,
    int? deliverStationId,
    String? toName,
    String? toPhone,
    String? toAddress,
    String? toWardCode,
    int? toDistrictId,
    ToLocation? toLocation,
    int? weight,
    int? length,
    int? width,
    int? height,
    int? convertedWeight,
    dynamic imageIds,
    int? serviceTypeId,
    int? serviceId,
    int? paymentTypeId,
    List<int>? paymentTypeIds,
    int? customServiceFee,
    String? sortCode,
    int? codAmount,
    dynamic codCollectDate,
    dynamic codTransferDate,
    bool? isCodTransferred,
    bool? isCodCollected,
    int? insuranceValue,
    int? orderValue,
    int? pickStationId,
    String? clientOrderCode,
    int? codFailedAmount,
    dynamic codFailedCollectDate,
    String? requiredNote,
    String? content,
    String? note,
    String? employeeNote,
    String? sealCode,
    String? pickupTime,
    List<Item>? items,
    String? coupon,
    int? couponCampaignId,
    String? id,
    String? orderCode,
    String? versionNo,
    String? updatedIp,
    int? updatedEmployee,
    int? updatedClient,
    String? updatedSource,
    String? updatedDate,
    int? updatedWarehouse,
    String? createdIp,
    int? createdEmployee,
    int? createdClient,
    String? createdSource,
    String? createdDate,
    String? status,
    InternalProcess? internalProcess,
    int? pickWarehouseId,
    int? deliverWarehouseId,
    int? currentWarehouseId,
    int? returnWarehouseId,
    int? nextWarehouseId,
    int? currentTransportWarehouseId,
    String? leadtime,
    String? orderDate,
    List<dynamic>? data,
    String? socId,
    String? finishDate,
    List<String>? tag,
    List<Log>? log,
    bool? isPartialReturn,
    bool? isDocumentReturn,
    List<dynamic>? pickupShift,
    String? transportationStatus,
    String? transportationPhase,
    ExtraService? extraService,
    String? configFeeId,
    String? extraCostId,
    String? standardConfigFeeId,
    String? standardExtraCostId,
  }) =>
      OrderOrder(
        shopId: shopId ?? this.shopId,
        clientId: clientId ?? this.clientId,
        returnName: returnName ?? this.returnName,
        returnPhone: returnPhone ?? this.returnPhone,
        returnAddress: returnAddress ?? this.returnAddress,
        returnWardCode: returnWardCode ?? this.returnWardCode,
        returnDistrictId: returnDistrictId ?? this.returnDistrictId,
        returnLocation: returnLocation ?? this.returnLocation,
        fromName: fromName ?? this.fromName,
        fromPhone: fromPhone ?? this.fromPhone,
        fromHotline: fromHotline ?? this.fromHotline,
        fromAddress: fromAddress ?? this.fromAddress,
        fromWardCode: fromWardCode ?? this.fromWardCode,
        fromDistrictId: fromDistrictId ?? this.fromDistrictId,
        fromLocation: fromLocation ?? this.fromLocation,
        deliverStationId: deliverStationId ?? this.deliverStationId,
        toName: toName ?? this.toName,
        toPhone: toPhone ?? this.toPhone,
        toAddress: toAddress ?? this.toAddress,
        toWardCode: toWardCode ?? this.toWardCode,
        toDistrictId: toDistrictId ?? this.toDistrictId,
        toLocation: toLocation ?? this.toLocation,
        weight: weight ?? this.weight,
        length: length ?? this.length,
        width: width ?? this.width,
        height: height ?? this.height,
        convertedWeight: convertedWeight ?? this.convertedWeight,
        imageIds: imageIds ?? this.imageIds,
        serviceTypeId: serviceTypeId ?? this.serviceTypeId,
        serviceId: serviceId ?? this.serviceId,
        paymentTypeId: paymentTypeId ?? this.paymentTypeId,
        paymentTypeIds: paymentTypeIds ?? this.paymentTypeIds,
        customServiceFee: customServiceFee ?? this.customServiceFee,
        sortCode: sortCode ?? this.sortCode,
        codAmount: codAmount ?? this.codAmount,
        codCollectDate: codCollectDate ?? this.codCollectDate,
        codTransferDate: codTransferDate ?? this.codTransferDate,
        isCodTransferred: isCodTransferred ?? this.isCodTransferred,
        isCodCollected: isCodCollected ?? this.isCodCollected,
        insuranceValue: insuranceValue ?? this.insuranceValue,
        orderValue: orderValue ?? this.orderValue,
        pickStationId: pickStationId ?? this.pickStationId,
        clientOrderCode: clientOrderCode ?? this.clientOrderCode,
        codFailedAmount: codFailedAmount ?? this.codFailedAmount,
        codFailedCollectDate: codFailedCollectDate ?? this.codFailedCollectDate,
        requiredNote: requiredNote ?? this.requiredNote,
        content: content ?? this.content,
        note: note ?? this.note,
        employeeNote: employeeNote ?? this.employeeNote,
        sealCode: sealCode ?? this.sealCode,
        pickupTime: pickupTime ?? this.pickupTime,
        items: items ?? this.items,
        coupon: coupon ?? this.coupon,
        couponCampaignId: couponCampaignId ?? this.couponCampaignId,
        id: id ?? this.id,
        orderCode: orderCode ?? this.orderCode,
        versionNo: versionNo ?? this.versionNo,
        updatedIp: updatedIp ?? this.updatedIp,
        updatedEmployee: updatedEmployee ?? this.updatedEmployee,
        updatedClient: updatedClient ?? this.updatedClient,
        updatedSource: updatedSource ?? this.updatedSource,
        updatedDate: updatedDate ?? this.updatedDate,
        updatedWarehouse: updatedWarehouse ?? this.updatedWarehouse,
        createdIp: createdIp ?? this.createdIp,
        createdEmployee: createdEmployee ?? this.createdEmployee,
        createdClient: createdClient ?? this.createdClient,
        createdSource: createdSource ?? this.createdSource,
        createdDate: createdDate ?? this.createdDate,
        status: status ?? this.status,
        internalProcess: internalProcess ?? this.internalProcess,
        pickWarehouseId: pickWarehouseId ?? this.pickWarehouseId,
        deliverWarehouseId: deliverWarehouseId ?? this.deliverWarehouseId,
        currentWarehouseId: currentWarehouseId ?? this.currentWarehouseId,
        returnWarehouseId: returnWarehouseId ?? this.returnWarehouseId,
        nextWarehouseId: nextWarehouseId ?? this.nextWarehouseId,
        currentTransportWarehouseId:
            currentTransportWarehouseId ?? this.currentTransportWarehouseId,
        leadtime: leadtime ?? this.leadtime,
        orderDate: orderDate ?? this.orderDate,
        data: data ?? this.data,
        socId: socId ?? this.socId,
        finishDate: finishDate ?? this.finishDate,
        tag: tag ?? this.tag,
        log: log ?? this.log,
        isPartialReturn: isPartialReturn ?? this.isPartialReturn,
        isDocumentReturn: isDocumentReturn ?? this.isDocumentReturn,
        pickupShift: pickupShift ?? this.pickupShift,
        transportationStatus: transportationStatus ?? this.transportationStatus,
        transportationPhase: transportationPhase ?? this.transportationPhase,
        extraService: extraService ?? this.extraService,
        configFeeId: configFeeId ?? this.configFeeId,
        extraCostId: extraCostId ?? this.extraCostId,
        standardConfigFeeId: standardConfigFeeId ?? this.standardConfigFeeId,
        standardExtraCostId: standardExtraCostId ?? this.standardExtraCostId,
      );

  factory OrderOrder.fromRawJson(String str) =>
      OrderOrder.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderOrder.fromJson(Map<String, dynamic> json) => OrderOrder(
        shopId: json["shop_id"],
        clientId: json["client_id"],
        returnName: json["return_name"],
        returnPhone: json["return_phone"],
        returnAddress: json["return_address"],
        returnWardCode: json["return_ward_code"],
        returnDistrictId: json["return_district_id"],
        returnLocation: json["return_location"] == null
            ? null
            : Location.fromJson(json["return_location"]),
        fromName: json["from_name"],
        fromPhone: json["from_phone"],
        fromHotline: json["from_hotline"],
        fromAddress: json["from_address"],
        fromWardCode: json["from_ward_code"],
        fromDistrictId: json["from_district_id"],
        fromLocation: json["from_location"] == null
            ? null
            : Location.fromJson(json["from_location"]),
        deliverStationId: json["deliver_station_id"],
        toName: json["to_name"],
        toPhone: json["to_phone"],
        toAddress: json["to_address"],
        toWardCode: json["to_ward_code"],
        toDistrictId: json["to_district_id"],
        toLocation: json["to_location"] == null
            ? null
            : ToLocation.fromJson(json["to_location"]),
        weight: json["weight"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        convertedWeight: json["converted_weight"],
        imageIds: json["image_ids"],
        serviceTypeId: json["service_type_id"],
        serviceId: json["service_id"],
        paymentTypeId: json["payment_type_id"],
        paymentTypeIds: json["payment_type_ids"] == null
            ? []
            : List<int>.from(json["payment_type_ids"]!.map((x) => x)),
        customServiceFee: json["custom_service_fee"],
        sortCode: json["sort_code"],
        codAmount: json["cod_amount"],
        codCollectDate: json["cod_collect_date"],
        codTransferDate: json["cod_transfer_date"],
        isCodTransferred: json["is_cod_transferred"],
        isCodCollected: json["is_cod_collected"],
        insuranceValue: json["insurance_value"],
        orderValue: json["order_value"],
        pickStationId: json["pick_station_id"],
        clientOrderCode: json["client_order_code"],
        codFailedAmount: json["cod_failed_amount"],
        codFailedCollectDate: json["cod_failed_collect_date"],
        requiredNote: json["required_note"],
        content: json["content"],
        note: json["note"],
        employeeNote: json["employee_note"],
        sealCode: json["seal_code"],
        pickupTime: json["pickup_time"],
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        coupon: json["coupon"],
        couponCampaignId: json["coupon_campaign_id"],
        id: json["_id"],
        orderCode: json["order_code"],
        versionNo: json["version_no"],
        updatedIp: json["updated_ip"],
        updatedEmployee: json["updated_employee"],
        updatedClient: json["updated_client"],
        updatedSource: json["updated_source"],
        updatedDate: json["updated_date"],
        updatedWarehouse: json["updated_warehouse"],
        createdIp: json["created_ip"],
        createdEmployee: json["created_employee"],
        createdClient: json["created_client"],
        createdSource: json["created_source"],
        createdDate: json["created_date"],
        status: json["status"],
        internalProcess: json["internal_process"] == null
            ? null
            : InternalProcess.fromJson(json["internal_process"]),
        pickWarehouseId: json["pick_warehouse_id"],
        deliverWarehouseId: json["deliver_warehouse_id"],
        currentWarehouseId: json["current_warehouse_id"],
        returnWarehouseId: json["return_warehouse_id"],
        nextWarehouseId: json["next_warehouse_id"],
        currentTransportWarehouseId: json["current_transport_warehouse_id"],
        leadtime: json["leadtime"],
        orderDate: json["order_date"],
        data: json["data"] == null
            ? []
            : List<dynamic>.from(json["data"]!.map((x) => x)),
        socId: json["soc_id"],
        finishDate: json["finish_date"],
        tag: json["tag"] == null
            ? []
            : List<String>.from(json["tag"]!.map((x) => x)),
        log: json["log"] == null
            ? []
            : List<Log>.from(json["log"]!.map((x) => Log.fromJson(x))),
        isPartialReturn: json["is_partial_return"],
        isDocumentReturn: json["is_document_return"],
        pickupShift: json["pickup_shift"] == null
            ? []
            : List<dynamic>.from(json["pickup_shift"]!.map((x) => x)),
        transportationStatus: json["transportation_status"],
        transportationPhase: json["transportation_phase"],
        extraService: json["extra_service"] == null
            ? null
            : ExtraService.fromJson(json["extra_service"]),
        configFeeId: json["config_fee_id"],
        extraCostId: json["extra_cost_id"],
        standardConfigFeeId: json["standard_config_fee_id"],
        standardExtraCostId: json["standard_extra_cost_id"],
      );

  Map<String, dynamic> toJson() => {
        "shop_id": shopId,
        "client_id": clientId,
        "return_name": returnName,
        "return_phone": returnPhone,
        "return_address": returnAddress,
        "return_ward_code": returnWardCode,
        "return_district_id": returnDistrictId,
        "return_location": returnLocation?.toJson(),
        "from_name": fromName,
        "from_phone": fromPhone,
        "from_hotline": fromHotline,
        "from_address": fromAddress,
        "from_ward_code": fromWardCode,
        "from_district_id": fromDistrictId,
        "from_location": fromLocation?.toJson(),
        "deliver_station_id": deliverStationId,
        "to_name": toName,
        "to_phone": toPhone,
        "to_address": toAddress,
        "to_ward_code": toWardCode,
        "to_district_id": toDistrictId,
        "to_location": toLocation?.toJson(),
        "weight": weight,
        "length": length,
        "width": width,
        "height": height,
        "converted_weight": convertedWeight,
        "image_ids": imageIds,
        "service_type_id": serviceTypeId,
        "service_id": serviceId,
        "payment_type_id": paymentTypeId,
        "payment_type_ids": paymentTypeIds == null
            ? []
            : List<dynamic>.from(paymentTypeIds!.map((x) => x)),
        "custom_service_fee": customServiceFee,
        "sort_code": sortCode,
        "cod_amount": codAmount,
        "cod_collect_date": codCollectDate,
        "cod_transfer_date": codTransferDate,
        "is_cod_transferred": isCodTransferred,
        "is_cod_collected": isCodCollected,
        "insurance_value": insuranceValue,
        "order_value": orderValue,
        "pick_station_id": pickStationId,
        "client_order_code": clientOrderCode,
        "cod_failed_amount": codFailedAmount,
        "cod_failed_collect_date": codFailedCollectDate,
        "required_note": requiredNote,
        "content": content,
        "note": note,
        "employee_note": employeeNote,
        "seal_code": sealCode,
        "pickup_time": pickupTime,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "coupon": coupon,
        "coupon_campaign_id": couponCampaignId,
        "_id": id,
        "order_code": orderCode,
        "version_no": versionNo,
        "updated_ip": updatedIp,
        "updated_employee": updatedEmployee,
        "updated_client": updatedClient,
        "updated_source": updatedSource,
        "updated_date": updatedDate,
        "updated_warehouse": updatedWarehouse,
        "created_ip": createdIp,
        "created_employee": createdEmployee,
        "created_client": createdClient,
        "created_source": createdSource,
        "created_date": createdDate,
        "status": status,
        "internal_process": internalProcess?.toJson(),
        "pick_warehouse_id": pickWarehouseId,
        "deliver_warehouse_id": deliverWarehouseId,
        "current_warehouse_id": currentWarehouseId,
        "return_warehouse_id": returnWarehouseId,
        "next_warehouse_id": nextWarehouseId,
        "current_transport_warehouse_id": currentTransportWarehouseId,
        "leadtime": leadtime,
        "order_date": orderDate,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
        "soc_id": socId,
        "finish_date": finishDate,
        "tag": tag == null ? [] : List<dynamic>.from(tag!.map((x) => x)),
        "log":
            log == null ? [] : List<dynamic>.from(log!.map((x) => x.toJson())),
        "is_partial_return": isPartialReturn,
        "is_document_return": isDocumentReturn,
        "pickup_shift": pickupShift == null
            ? []
            : List<dynamic>.from(pickupShift!.map((x) => x)),
        "transportation_status": transportationStatus,
        "transportation_phase": transportationPhase,
        "extra_service": extraService?.toJson(),
        "config_fee_id": configFeeId,
        "extra_cost_id": extraCostId,
        "standard_config_fee_id": standardConfigFeeId,
        "standard_extra_cost_id": standardExtraCostId,
      };
}

class ExtraService {
  DocumentReturn? documentReturn;
  bool? doubleCheck;

  ExtraService({
    this.documentReturn,
    this.doubleCheck,
  });

  ExtraService copyWith({
    DocumentReturn? documentReturn,
    bool? doubleCheck,
  }) =>
      ExtraService(
        documentReturn: documentReturn ?? this.documentReturn,
        doubleCheck: doubleCheck ?? this.doubleCheck,
      );

  factory ExtraService.fromRawJson(String str) =>
      ExtraService.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExtraService.fromJson(Map<String, dynamic> json) => ExtraService(
        documentReturn: json["document_return"] == null
            ? null
            : DocumentReturn.fromJson(json["document_return"]),
        doubleCheck: json["double_check"],
      );

  Map<String, dynamic> toJson() => {
        "document_return": documentReturn?.toJson(),
        "double_check": doubleCheck,
      };
}

class DocumentReturn {
  bool? flag;

  DocumentReturn({
    this.flag,
  });

  DocumentReturn copyWith({
    bool? flag,
  }) =>
      DocumentReturn(
        flag: flag ?? this.flag,
      );

  factory DocumentReturn.fromRawJson(String str) =>
      DocumentReturn.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DocumentReturn.fromJson(Map<String, dynamic> json) => DocumentReturn(
        flag: json["flag"],
      );

  Map<String, dynamic> toJson() => {
        "flag": flag,
      };
}

class Location {
  double? lat;
  double? long;
  String? cellCode;
  String? placeId;
  int? trustLevel;
  String? wardcode;

  Location({
    this.lat,
    this.long,
    this.cellCode,
    this.placeId,
    this.trustLevel,
    this.wardcode,
  });

  Location copyWith({
    double? lat,
    double? long,
    String? cellCode,
    String? placeId,
    int? trustLevel,
    String? wardcode,
  }) =>
      Location(
        lat: lat ?? this.lat,
        long: long ?? this.long,
        cellCode: cellCode ?? this.cellCode,
        placeId: placeId ?? this.placeId,
        trustLevel: trustLevel ?? this.trustLevel,
        wardcode: wardcode ?? this.wardcode,
      );

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
        cellCode: json["cell_code"],
        placeId: json["place_id"],
        trustLevel: json["trust_level"],
        wardcode: json["wardcode"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
        "cell_code": cellCode,
        "place_id": placeId,
        "trust_level": trustLevel,
        "wardcode": wardcode,
      };
}

class InternalProcess {
  String? status;
  String? type;

  InternalProcess({
    this.status,
    this.type,
  });

  InternalProcess copyWith({
    String? status,
    String? type,
  }) =>
      InternalProcess(
        status: status ?? this.status,
        type: type ?? this.type,
      );

  factory InternalProcess.fromRawJson(String str) =>
      InternalProcess.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InternalProcess.fromJson(Map<String, dynamic> json) =>
      InternalProcess(
        status: json["status"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "type": type,
      };
}

class Item {
  String? name;
  String? code;
  int? quantity;
  int? length;
  int? width;
  int? height;
  List<dynamic>? category;
  String? status;
  String? itemOrderCode;

  Item({
    this.name,
    this.code,
    this.quantity,
    this.length,
    this.width,
    this.height,
    this.category,
    this.status,
    this.itemOrderCode,
  });

  Item copyWith({
    String? name,
    String? code,
    int? quantity,
    int? length,
    int? width,
    int? height,
    List<dynamic>? category,
    String? status,
    String? itemOrderCode,
  }) =>
      Item(
        name: name ?? this.name,
        code: code ?? this.code,
        quantity: quantity ?? this.quantity,
        length: length ?? this.length,
        width: width ?? this.width,
        height: height ?? this.height,
        category: category ?? this.category,
        status: status ?? this.status,
        itemOrderCode: itemOrderCode ?? this.itemOrderCode,
      );

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        code: json["code"],
        quantity: json["quantity"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        category: json["category"] == null
            ? []
            : List<dynamic>.from(json["category"]!.map((x) => x)),
        status: json["status"],
        itemOrderCode: json["item_order_code"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "quantity": quantity,
        "length": length,
        "width": width,
        "height": height,
        "category":
            category == null ? [] : List<dynamic>.from(category!.map((x) => x)),
        "status": status,
        "item_order_code": itemOrderCode,
      };
}

class Log {
  String? status;
  int? paymentTypeId;
  String? tripCode;
  String? updatedDate;

  Log({
    this.status,
    this.paymentTypeId,
    this.tripCode,
    this.updatedDate,
  });

  Log copyWith({
    String? status,
    int? paymentTypeId,
    String? tripCode,
    String? updatedDate,
  }) =>
      Log(
        status: status ?? this.status,
        paymentTypeId: paymentTypeId ?? this.paymentTypeId,
        tripCode: tripCode ?? this.tripCode,
        updatedDate: updatedDate ?? this.updatedDate,
      );

  factory Log.fromRawJson(String str) => Log.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Log.fromJson(Map<String, dynamic> json) => Log(
        status: json["status"],
        paymentTypeId: json["payment_type_id"],
        tripCode: json["trip_code"],
        updatedDate: json["updated_date"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "payment_type_id": paymentTypeId,
        "trip_code": tripCode,
        "updated_date": updatedDate,
      };
}

class ToLocation {
  double? lat;
  double? long;
  String? cellCode;
  int? trustLevel;
  String? wardcode;

  ToLocation({
    this.lat,
    this.long,
    this.cellCode,
    this.trustLevel,
    this.wardcode,
  });

  ToLocation copyWith({
    double? lat,
    double? long,
    String? cellCode,
    int? trustLevel,
    String? wardcode,
  }) =>
      ToLocation(
        lat: lat ?? this.lat,
        long: long ?? this.long,
        cellCode: cellCode ?? this.cellCode,
        trustLevel: trustLevel ?? this.trustLevel,
        wardcode: wardcode ?? this.wardcode,
      );

  factory ToLocation.fromRawJson(String str) =>
      ToLocation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToLocation.fromJson(Map<String, dynamic> json) => ToLocation(
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
        cellCode: json["cell_code"],
        trustLevel: json["trust_level"],
        wardcode: json["wardcode"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
        "cell_code": cellCode,
        "trust_level": trustLevel,
        "wardcode": wardcode,
      };
}
