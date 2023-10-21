class LocationsResponse {
  Division? province;
  Division? district;
  Division? ward;

  LocationsResponse({this.province, this.district, this.ward});

  LocationsResponse.fromJson(Map<String, dynamic> json) {
    province = json['tỉnh'] != null ? Division.fromJson(json['tỉnh']) : null;
    district = json['quận'] != null ? Division.fromJson(json['quận']) : null;
    ward = json['xã'] != null ? Division.fromJson(json['xã']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (province != null) {
      data['tỉnh'] = province!.toJson();
    }
    if (district != null) {
      data['quận'] = district!.toJson();
    }
    if (ward != null) {
      data['xã'] = ward!.toJson();
    }
    return data;
  }
}

class Division {
  int? currentPage;
  List<DivisionData>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  Division(
      {this.currentPage,
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
      this.total});

  Division.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <DivisionData>[];
      json['data'].forEach((v) {
        data!.add(DivisionData.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class DivisionData {
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
  int? vnpostParentId;
  String? ghnName;
  int? ghnId;

  DivisionData(
      {this.id,
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
      this.ghnId});

  DivisionData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullname = json['fullname'];
    parentId = json['parent_id'];
    code = json['code'];
    codename = json['codename'];
    divisionType = json['division_type'];
    phoneCode = json['phone_code'];
    isDeleted = json['is_deleted'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    vtpostId = json['vtpost_id'];
    vtpostName = json['vtpost_name'];
    codenameVnpost = json['Codename_vnpost'];
    vnpostId = json['vnpost_id'];
    vnpostParentId = json['vnpost_parent_id'];
    ghnName = json['ghn_name'];
    ghnId = json['ghn_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['fullname'] = fullname;
    data['parent_id'] = parentId;
    data['code'] = code;
    data['codename'] = codename;
    data['division_type'] = divisionType;
    data['phone_code'] = phoneCode;
    data['is_deleted'] = isDeleted;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['vtpost_id'] = vtpostId;
    data['vtpost_name'] = vtpostName;
    data['Codename_vnpost'] = codenameVnpost;
    data['vnpost_id'] = vnpostId;
    data['vnpost_parent_id'] = vnpostParentId;
    data['ghn_name'] = ghnName;
    data['ghn_id'] = ghnId;
    return data;
  }
}
