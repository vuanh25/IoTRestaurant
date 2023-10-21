class DefaultUnitRp {
  List<Data>? data;

  DefaultUnitRp({this.data});

  DefaultUnitRp.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? businessId;
  String? actualName;
  String? shortName;
  int? allowDecimal;
  int? baseUnitId;
  String? baseUnitMultiplier;
  int? createdBy;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  BaseUnit? baseUnit;

  Data(
      {this.id,
      this.businessId,
      this.actualName,
      this.shortName,
      this.allowDecimal,
      this.baseUnitId,
      this.baseUnitMultiplier,
      this.createdBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.baseUnit});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    actualName = json['actual_name'];
    shortName = json['short_name'];
    allowDecimal = json['allow_decimal'];
    baseUnitId = json['base_unit_id'];
    baseUnitMultiplier = json['base_unit_multiplier'];
    createdBy = json['created_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    baseUnit = json['base_unit'] != null
        ? new BaseUnit.fromJson(json['base_unit'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['business_id'] = businessId;
    data['actual_name'] = actualName;
    data['short_name'] = shortName;
    data['allow_decimal'] = allowDecimal;
    data['base_unit_id'] = baseUnitId;
    data['base_unit_multiplier'] = baseUnitMultiplier;
    data['created_by'] = createdBy;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (baseUnit != null) {
      data['base_unit'] = baseUnit!.toJson();
    }
    return data;
  }
}

class BaseUnit {
  int? id;
  int? businessId;
  String? actualName;
  String? shortName;
  int? allowDecimal;
  dynamic baseUnitId;
  dynamic baseUnitMultiplier;
  int? createdBy;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  BaseUnit(
      {this.id,
      this.businessId,
      this.actualName,
      this.shortName,
      this.allowDecimal,
      this.baseUnitId,
      this.baseUnitMultiplier,
      this.createdBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  BaseUnit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    actualName = json['actual_name'];
    shortName = json['short_name'];
    allowDecimal = json['allow_decimal'];
    baseUnitId = json['base_unit_id'];
    baseUnitMultiplier = json['base_unit_multiplier'];
    createdBy = json['created_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['business_id'] = businessId;
    data['actual_name'] = actualName;
    data['short_name'] = shortName;
    data['allow_decimal'] = allowDecimal;
    data['base_unit_id'] = baseUnitId;
    data['base_unit_multiplier'] = baseUnitMultiplier;
    data['created_by'] = createdBy;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
